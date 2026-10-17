// Sega 315-5313 VDP (Mode 5). Renders one scanline at a time.
#include "vdp.h"
#include <stddef.h>
#include "mcd.h"
#include "audio.h"
#include "z80.h"
#include "state.h"

Vdp vdp;

// measured DAC output levels (normal, shadow, highlight)
static const u8 LV_NORMAL[8] = {0, 52, 87, 116, 144, 172, 206, 255};
static const u8 LV_SHADOW[8] = {0, 29, 52, 70, 87, 101, 116, 130};
static const u8 LV_HILITE[8] = {130, 144, 158, 172, 187, 206, 228, 255};
static u32 pal_rgb[3][512];

static u8 sat_cache[80 * 4];     // y (2 bytes), size, link for each sprite
static bool odd_frame;
static int line_now;
static u16 wram_dma_latch;
static u8 sprite_overflow_line, sprite_collision;

u8 wram_dma_r8(u32 a);

#define R(n) vdp.reg[n]
#define H40 (R(12) & 0x01)
#define DISPLAY_ON (R(1) & 0x40)
#define SH_MODE (R(12) & 0x08)

void vdp_reset(void) {
  memset(&vdp, 0, sizeof vdp);
  memset(sat_cache, 0, sizeof sat_cache);
  odd_frame = false; line_now = 0; wram_dma_latch = 0; sprite_overflow_line = sprite_collision = 0;
  for (int i = 0; i < 512; i++) {
    int r = (i >> 0) & 7, g = (i >> 3) & 7, b = (i >> 6) & 7;
    pal_rgb[0][i] = LV_NORMAL[r] << 16 | LV_NORMAL[g] << 8 | LV_NORMAL[b];
    pal_rgb[1][i] = LV_SHADOW[r] << 16 | LV_SHADOW[g] << 8 | LV_SHADOW[b];
    pal_rgb[2][i] = LV_HILITE[r] << 16 | LV_HILITE[g] << 8 | LV_HILITE[b];
  }
  vdp.status = 0x3400;   // FIFO empty, bits 13-12 read as set
  vdp.width = 256;
  vdp.active_lines = 224;
}

static inline u16 cram_index(u16 v) { return ((v >> 1) & 7) | ((v >> 2) & 0x38) | ((v >> 3) & 0x1c0); }

static void sat_update(u16 addr, u8 v) {
  u16 base = (R(5) & (H40 ? 0x7e : 0x7f)) << 9;
  u16 o = addr - base;
  if (o >= (H40 ? 640 : 512)) return;
  if ((o & 7) < 4) sat_cache[(o >> 3) * 4 + (o & 3)] = v;
}

static inline void vram_w8(u16 a, u8 v) { vdp.vram[a] = v; sat_update(a, v); }

static void data_write(u16 v) {
  switch (vdp.code & 0x0f) {
  case 1: {   // VRAM
    u16 a = vdp.addr;
    if (a & 1) v = v >> 8 | v << 8;
    vram_w8(a & ~1, v >> 8);
    vram_w8(a | 1, (u8)v);
    break;
  }
  case 3: vdp.cram[(vdp.addr >> 1) & 63] = v & 0x0eee; break;
  case 5: if (((vdp.addr >> 1) & 63) < 40) vdp.vsram[(vdp.addr >> 1) & 63] = v & 0x07ff; break;
  }
  vdp.addr += R(15);
}

static u16 data_read(void) {
  u16 v = 0;
  switch (vdp.code & 0x0f) {
  case 0: v = vdp.vram[vdp.addr & ~1] << 8 | vdp.vram[vdp.addr | 1]; break;
  case 4: { int i = (vdp.addr >> 1) & 63; v = i < 40 ? vdp.vsram[i] : vdp.vsram[0]; v = (v & 0x7ff) | (vdp.read_buffer & 0xf800); break; }
  case 8: v = vdp.cram[(vdp.addr >> 1) & 63]; v = (v & 0x0eee) | (vdp.read_buffer & 0xf111); break;
  case 12: v = vdp.vram[vdp.addr ^ 1] | (vdp.read_buffer & 0xff00); break;   // 8-bit VRAM read
  }
  vdp.read_buffer = v;
  vdp.addr += R(15);
  return v;
}

static void dma_68k(void) {
  u32 len = R(19) | R(20) << 8;
  if (!len) len = 0x10000;
  u32 src = (R(21) << 1 | R(22) << 9 | (R(23) & 0x7f) << 17);
  bool wram = src >= 0x200000 && src < 0x240000;
  u32 words = len;
  if (vdp_vram_dma && (vdp.code & 0xf) == 1) vdp_vram_dma(vdp.addr, src, len);
  while (len--) {
    u16 w;
    u32 a = (src & 0xfe0000) | (src & 0x1ffff);
    if (wram) {
      // the Mega-CD gate array delivers Word RAM data one word late
      w = wram_dma_latch;
      wram_dma_latch = wram_dma_r8(a) << 8 | wram_dma_r8(a + 1);
    } else w = main_r16(a);
    data_write(w);
    src = (src & 0xfe0000) | ((src + 2) & 0x1ffff);
  }
  R(19) = R(20) = 0;
  R(21) = (src >> 1) & 0xff; R(22) = (src >> 9) & 0xff;
  // 68k is held off the bus while the VDP copies: ~18 words/line active (H40), ~205 in blank
  bool blank = !DISPLAY_ON || line_now >= vdp.active_lines;
  int per_line = blank ? (H40 ? 205 : 167) : (H40 ? 18 : 16);
  vdp.dma_stall += (int)(words * 488 / per_line);
}

static void dma_fill(u16 v) {
  u32 len = R(19) | R(20) << 8;
  if (!len) len = 0x10000;
  // the first word was already written by data_write
  while (len--) {
    switch (vdp.code & 0x0f) {
    case 1: vram_w8(vdp.addr ^ 1, v >> 8); break;
    case 3: vdp.cram[(vdp.addr >> 1) & 63] = v & 0x0eee; break;
    case 5: if (((vdp.addr >> 1) & 63) < 40) vdp.vsram[(vdp.addr >> 1) & 63] = v & 0x7ff; break;
    }
    vdp.addr += R(15);
  }
  R(19) = R(20) = 0;
}

static void dma_copy(void) {
  u32 len = R(19) | R(20) << 8;
  if (!len) len = 0x10000;
  u16 src = R(21) | R(22) << 8;
  while (len--) {
    vram_w8(vdp.addr ^ 1, vdp.vram[src ^ 1]);
    src++;
    vdp.addr += R(15);
  }
  R(19) = R(20) = 0;
  R(21) = src & 0xff; R(22) = src >> 8;
}

static void ctrl_write(u16 v) {
  if (!vdp.pending) {
    if ((v & 0xc000) == 0x8000) {   // register write
      int r = (v >> 8) & 0x1f;
      if (r < 24) {
        if (!(R(1) & 0x04) && r > 10) return;   // Mode 4: only regs 0-10
        vdp.reg[r] = (u8)v;
        if (r == 12) vdp.width = H40 ? 320 : 256;
        if (r == 1) mcpu.ipl = vdp_ipl();
        if (r == 0) mcpu.ipl = vdp_ipl();
      }
      vdp.code = 0;   // register writes clear the code
      return;
    }
    vdp.code = (vdp.code & 0x3c) | (v >> 14);
    vdp.addr = (vdp.addr & 0xc000) | (v & 0x3fff);
    vdp.pending = true;
    return;
  }
  vdp.pending = false;
  vdp.code = (vdp.code & 0x03) | ((v >> 2) & 0x3c);
  vdp.addr = (vdp.addr & 0x3fff) | (v & 3) << 14;
  if ((vdp.code & 0x20) && (R(1) & 0x10)) {
    switch (R(23) >> 6) {
    case 0: case 1: dma_68k(); break;
    case 2: vdp.dma_fill_pending = true; break;
    case 3: dma_copy(); break;
    }
  }
}

void vdp_write16(u32 a, u16 v) {
  a &= 0x1f;
  if (a < 4) {
    vdp.pending = false;
    data_write(v);
    if (vdp.dma_fill_pending) { vdp.dma_fill_pending = false; vdp.addr -= R(15); dma_fill(v); }
  } else if (a < 8) ctrl_write(v);
  else if (a >= 0x10 && a < 0x18) { if (!(a & 1)) psg_write((u8)v); }
}
void vdp_write8(u32 a, u8 v) {
  a &= 0x1f;
  if (a >= 0x10 && a < 0x18) { if (a & 1) psg_write(v); return; }
  vdp_write16(a & ~1, v << 8 | v);
}

u16 vdp_hv(void) {
  // H counter from the position within the line
  u64 now = mcd_now();
  int pos = (int)(now % MCLK_PER_LINE);
  int h;
  if (H40) { h = pos / 8; h = h <= 0xb6 ? h : 0xe4 + (h - 0xb7); }
  else { h = pos / 10; h = h <= 0x93 ? h : 0xe9 + (h - 0x94); }
  int v = line_now;
  if (v > 0xea) v -= 6;   // NTSC V counter jumps from $EA to $E5
  return (v & 0xff) << 8 | (h & 0xff);
}

u16 vdp_read16(u32 a) {
  a &= 0x1f;
  if (a < 4) { vdp.pending = false; return data_read(); }
  if (a < 8) {
    vdp.pending = false;
    u16 s = vdp.status | 0x3400;
    if (line_now >= vdp.active_lines || !DISPLAY_ON) s |= 0x08;
    u64 pos = mcd_now() % MCLK_PER_LINE;
    if (pos >= 2560 || pos < 140) s |= 0x04;
    if (odd_frame && (R(12) & 2)) s |= 0x10;
    if (vdp.vint_pending) s |= 0x80;
    s |= (u16)sprite_overflow_line << 6 | (u16)sprite_collision << 5;
    sprite_overflow_line = sprite_collision = 0;
    return s;
  }
  if (a < 0x10) return vdp_hv();
  return 0xffff;
}
u8 vdp_read8(u32 a) { u16 v = vdp_read16(a & ~1); return (a & 1) ? (u8)v : v >> 8; }

int vdp_ipl(void) {
  if (vdp.vint_pending && (R(1) & 0x20)) return 6;
  if (vdp.hint_pending && (R(0) & 0x10)) return 4;
  return 0;
}
void vdp_iack(int level) {
  if (level == 6) vdp.vint_pending = false;
  else if (level == 4) vdp.hint_pending = false;
}

void vdp_frame_start(void) {
  odd_frame = !odd_frame;
  vdp.active_lines = (R(1) & 0x08) ? 240 : 224;
}

// ---------------------------------------------------------------- rendering
// line buffer entries: bits 0-5 color index, bit 6 priority, bit 7 opaque
static u8 lb_a[VDP_MAX_W], lb_b[VDP_MAX_W], lb_s[VDP_MAX_W];   // from vdp_exl pixels left of the screen
int vdp_exl, vdp_exr;
void (*vdp_vram_dma)(u32 vram_addr, u32 src, u32 words);
int (*vdp_plane_ext)(bool plane_a, int line, int x, int hscroll, int y);
int (*vdp_plane_remap)(bool plane_a, int x, int line, int *dy);

static inline u8 tile_px(u16 entry, int row, int col) {
  u16 tile = entry & 0x7ff;
  if (entry & 0x1000) row ^= 7;
  if (entry & 0x0800) col ^= 7;
  u8 b = vdp.vram[(tile * 32 + row * 4 + (col >> 1)) & 0xffff];
  u8 c = (col & 1) ? (b & 15) : (b >> 4);
  u8 pri = (entry >> 9) & 0x40;
  return c ? (u8)(((entry >> 9) & 0x30) | c | pri | 0x80) : pri;
}

static void render_plane(u8 *out, int line, bool plane_a, int win_from, int win_to) {
  static const int SZ[4] = {32, 64, 32, 128};
  int w = vdp.width;
  int cells_h = SZ[R(16) & 3], cells_v = SZ[(R(16) >> 4) & 3];
  if (cells_h * cells_v > 4096) cells_v = 4096 / cells_h;
  u32 nt = plane_a ? (R(2) & 0x38) << 10 : (R(4) & 7) << 13;
  u32 hs_base = (R(13) & 0x3f) << 10;
  int hs_line;
  switch (R(11) & 3) {
  case 0: hs_line = 0; break;
  case 1: hs_line = line & 7; break;
  case 2: hs_line = line & ~7; break;
  default: hs_line = line; break;
  }
  u32 hsa = hs_base + hs_line * 4 + (plane_a ? 0 : 2);
  int hscroll = (vdp.vram[hsa & 0xffff] << 8 | vdp.vram[(hsa + 1) & 0xffff]) & 0x3ff;
  int px_w = cells_h * 8, px_h = cells_v * 8;
  bool col_vs = R(11) & 4;
  u32 last_ea = 0xffffffff;
  u16 entry = 0;
  for (int x = -vdp_exl; x < w + vdp_exr; x++) {
    if (plane_a && x >= win_from && x < win_to) continue;
    int col = x < 0 ? 0 : x >= w ? (w >> 4) - 1 : x >> 4;   // (past the sides: the nearest column's)
    int vs = vdp.vsram[(col_vs ? col * 2 : 0) + (plane_a ? 0 : 1)];
    int y = (line + vs) & (px_h - 1);
    if (vdp_plane_ext && (x < 0 || x >= w)) {
      int c = vdp_plane_ext(plane_a, line, x, hscroll, y);
      if (c >= 0) {   // in the palette and priority of the screen's edge column
        int xe = x < 0 ? 0 : w - 1, xpe = (xe - hscroll) & (px_w - 1);
        u32 ea = (nt + ((y >> 3) * cells_h + (xpe >> 3)) * 2) & 0xffff;
        u16 e = vdp.vram[ea] << 8 | vdp.vram[ea | 1];
        u8 pri = (e >> 9) & 0x40;
        out[x + vdp_exl] = c ? (u8)(((e >> 9) & 0x30) | c | pri | 0x80) : pri;
        last_ea = 0xffffffff;
        continue;
      }
    }
    int xs = x, ys = y;   // where the pixel is taken from
    if (vdp_plane_remap && (x < 0 || x >= w)) {
      int dy = 0;
      xs = vdp_plane_remap(plane_a, x, line, &dy);
      if (xs == VDP_CLEAR) { out[x + vdp_exl] = 0; continue; }
      ys = (y + dy) & (px_h - 1);
    }
    int xp = (xs - hscroll) & (px_w - 1);
    u32 ea = (nt + ((ys >> 3) * cells_h + (xp >> 3)) * 2) & 0xffff;
    if (ea != last_ea) { entry = vdp.vram[ea] << 8 | vdp.vram[ea | 1]; last_ea = ea; }
    out[x + vdp_exl] = tile_px(entry, ys & 7, xp & 7);
  }
}

static void render_window(u8 *out, int line, int from, int to) {
  u32 nt = (R(3) & (H40 ? 0x3c : 0x3e)) << 10;
  int cells_h = H40 ? 64 : 32;
  for (int x = from; x < to; x++) {
    u32 ea = (nt + ((line >> 3) * cells_h + (x >> 3)) * 2) & 0xffff;
    u16 entry = vdp.vram[ea] << 8 | vdp.vram[ea | 1];
    out[x + vdp_exl] = tile_px(entry, line & 7, x & 7);
  }
}

static void render_sprites(u8 *out, int line) {
  int w = vdp.width;
  int ext = vdp_exl + vdp_exr;   // widescreen: the per-line limits grow with the picture
  int max_sprites = H40 ? 80 : 64, max_line = (H40 ? 20 : 16) * (w + ext) / w, max_px = (H40 ? 320 : 256) + ext;
  u16 sat = (R(5) & (H40 ? 0x7e : 0x7f)) << 9;
  int idx = 0, count = 0, px = 0;
  bool masked = false, nonzero_x = false;
  memset(out, 0, w + ext);
  for (int n = 0; n < max_sprites; n++) {
    u8 *c = &sat_cache[idx * 4];
    int y = ((c[0] << 8 | c[1]) & 0x3ff) - 128;
    int size = c[2], link = c[3] & 0x7f;
    int hs = ((size >> 2) & 3) + 1, vs = (size & 3) + 1;
    if (line >= y && line < y + vs * 8) {
      if (count == max_line) { sprite_overflow_line = 1; break; }
      count++;
      u32 sa = sat + idx * 8;
      u16 entry = vdp.vram[(sa + 4) & 0xffff] << 8 | vdp.vram[(sa + 5) & 0xffff];
      int x = ((vdp.vram[(sa + 6) & 0xffff] << 8 | vdp.vram[(sa + 7) & 0xffff]) & 0x1ff) - 128;
      // a sprite at x=0 hides the rest of the line's sprites once a sprite with x!=0 was seen
      if (x == -128) { if (nonzero_x) masked = true; }
      else nonzero_x = true;
      int row = line - y;
      if (entry & 0x1000) row = vs * 8 - 1 - row;
      for (int cx = 0; cx < hs; cx++) {
        if (px >= max_px) { sprite_overflow_line = 1; break; }
        px += 8;
        if (masked) continue;
        int col = (entry & 0x800) ? hs - 1 - cx : cx;
        u16 te = (entry & 0xe800) | (((entry & 0x7ff) + col * vs + (row >> 3)) & 0x7ff);
        for (int i = 0; i < 8; i++) {
          int sxp = x + cx * 8 + i;
          if (sxp < -vdp_exl) sxp += 512;   // positions are 9 bits: past the right edge they wrap
          if (sxp >= w + vdp_exr) continue;
          sxp += vdp_exl;
          u8 p = tile_px(te, row & 7, i);
          if (!(p & 0x80)) continue;
          if (out[sxp] & 0x80) { sprite_collision = 1; continue; }
          out[sxp] = p;
        }
      }
      if (px >= max_px) break;
    }
    if (!link || link >= max_sprites) break;
    idx = link;
  }
}

enum { M_NORMAL, M_SHADOW, M_HILITE };

void vdp_line(int line) {
  line_now = line;
  if (line < vdp.active_lines) {
    if (vdp.hint_counter == 0) { vdp.hint_counter = R(10); vdp.hint_pending = true; }
    else vdp.hint_counter--;
  } else vdp.hint_counter = R(10);
  if (line == vdp.active_lines) { vdp.vint_pending = true; z80_vint(); }
  if (line >= vdp.active_lines) return;
  int w = vdp.width, W = w + vdp_exl + vdp_exr;
  vdp.fb_width[line] = W;
  u32 *dst = vdp.fb[line];
  u8 bgi = R(7) & 63;
  if (!DISPLAY_ON) {
    u32 c = pal_rgb[0][cram_index(vdp.cram[bgi])];
    for (int x = 0; x < W; x++) dst[x] = c;
    return;
  }
  int win_from = 0, win_to = 0;
  int wv = R(18) & 0x1f, wh = R(17) & 0x1f;
  bool in_v = (R(18) & 0x80) ? line >= wv * 8 : line < wv * 8;
  if (in_v) win_to = w;
  else if (wh) {
    int edge = wh * 16;
    if (edge > w) edge = w;
    if (R(17) & 0x80) { win_from = edge; win_to = w; } else win_to = edge;
  }
  memset(lb_a, 0, W); memset(lb_b, 0, W);
  render_plane(lb_b, line, false, 0, 0);
  render_plane(lb_a, line, true, win_from, win_to);
  if (win_to > win_from) render_window(lb_a, line, win_from, win_to);   // (the window stays within the screen)
  render_sprites(lb_s, line);
  bool sh = SH_MODE;
  for (int x = 0; x < W; x++) {
    u8 a = lb_a[x], b = lb_b[x], s = lb_s[x];
    // planes alone, low to high: B low, A low, B high, A high
    u8 plane = bgi;
    if ((b & 0xc0) == 0x80) plane = b & 63;
    if ((a & 0xc0) == 0x80) plane = a & 63;
    if ((b & 0xc0) == 0xc0) plane = b & 63;
    if ((a & 0xc0) == 0xc0) plane = a & 63;
    bool plane_high = ((a & 0xc0) == 0xc0) || ((b & 0xc0) == 0xc0);
    // a sprite pixel is on top unless a high-priority plane pixel covers a low-priority sprite
    bool sprite_top = (s & 0x80) && ((s & 0x40) || !plane_high);
    int mode = M_NORMAL;
    u8 pix;
    if (!sh) pix = sprite_top ? (s & 63) : plane;
    else {
      int base = ((a & 0x40) || (b & 0x40)) ? M_NORMAL : M_SHADOW;
      if (!sprite_top) { pix = plane; mode = base; }
      else if ((s & 63) == 0x3e) { pix = plane; mode = base == M_SHADOW ? M_NORMAL : M_HILITE; }
      else if ((s & 63) == 0x3f) { pix = plane; mode = M_SHADOW; }
      else { pix = s & 63; mode = ((s & 0x40) || (s & 0x0f) == 0x0e) ? M_NORMAL : base; }
    }
    dst[x] = pal_rgb[mode][cram_index(vdp.cram[pix])];
  }
}

void vdp_serialize(Ser *s) {
  ser_bytes(s, &vdp, offsetof(Vdp, fb));
  SER(s, sat_cache); SER(s, odd_frame); SER(s, line_now); SER(s, wram_dma_latch);
  SER(s, sprite_overflow_line); SER(s, sprite_collision);
}
