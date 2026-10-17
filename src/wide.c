// True widescreen in the stages.
//
// The VDP draws 428 pixels instead of 320: up to 108 more of the planes and sprites, split between the
// sides (vdp.c). That alone shows stale tiles at the edges, because the game draws the level into the
// 512-pixel planes 16 pixels at a time just outside its 320-pixel screen, and objects vanish there because
// it leaves them off the sprite list once they're off its screen. So in the stage engine (every stage file
// and the attract demos carry a copy) the instructions that hold those edges become line-A traps that
// return this frame's edges instead (tools/wide_gen.py lists them). The game itself is unchanged otherwise:
// it still plays on its 320-pixel screen, the extra pixels just show more of the level around it.
//
// The extra pixels are split evenly, except near the camera's bounds: the picture never shows past
// where the camera could go, so at the start of a level it all goes to the right. What the game places
// on the screen rather than in the level stays put: the HUD (score, time, rings, lives) at the left edge
// of the picture, as in the 2011 version, and the rest (title cards, the results) in the middle.
#include "wide.h"
#include "mcd.h"
#include "vdp.h"
#include "cdc.h"
#include "disc.h"
#include "asic.h"

#define OBJ_HUD 0x1c      // object types (byte 0 of an object, the same in every stage): score/time/rings, lives
#define OBJ_HUD2 0x19     // (and the piece under the lives)

static bool enabled;
static int cur = -1;          // the stage file in Word RAM (wide_files index), -1 if none
static bool patched;
static bool drawn;            // the planes were drawn wide (the game's full draw ran since the patching)

static u16 wr16(u32 o) { return mcd.word_ram[o] << 8 | mcd.word_ram[o + 1]; }
static void ww16(u32 o, u16 v) { mcd.word_ram[o] = (u8)(v >> 8); mcd.word_ram[o + 1] = (u8)v; }
static s16 ram16(u32 a) { return (s16)(mcd.work_ram[a & 0xffff] << 8 | mcd.work_ram[(a + 1) & 0xffff]); }

// 1: all of file f's sites patched, 0: all original, -1: it isn't file f
static int state_of(int f) {
  bool old = true, rep = true;
  for (int i = 0; i < wide_files[f].n && (old || rep); i++) {
    const WideSite *s = &wide_sites[wide_files[f].first + i];
    for (int k = 0; k < s->n; k++) {
      u16 w = wr16(s->off + 2 * k);
      if (w != s->old[k]) old = false;
      if (w != s->rep[k]) rep = false;
    }
  }
  return rep ? 1 : old ? 0 : -1;
}

static void apply(int f, bool on) {
  for (int i = 0; i < wide_files[f].n; i++) {
    const WideSite *s = &wide_sites[wide_files[f].first + i];
    for (int k = 0; k < s->n; k++) ww16(s->off + 2 * k, on ? s->rep[k] : s->old[k]);
  }
}

// which program the drive last loaded (the title, a menu...): the screens other than the stages are told
// apart by that
static IsoFile progs[160]; static int nprogs = -1, prog = -1;
static void track_program(void) {
  if (nprogs < 0) {
    static IsoFile all[256];
    int n = iso_list(all, 256);
    nprogs = 0;
    for (int i = 0; i < n && nprogs < 160; i++) {
      size_t l = strlen(all[i].name);
      if (l > 4 && !strcmp(all[i].name + l - 4, ".MMD")) progs[nprogs++] = all[i];
    }
  }
  if (drive.state != DRV_READ) return;
  for (int i = 0; i < nprogs; i++)
    if (drive.lba >= progs[i].lba && drive.lba < progs[i].lba + (progs[i].size + 2047) / 2048) { prog = i; return; }
}
static bool program_is(const char *name) { return prog >= 0 && !strcmp(progs[prog].name, name); }

void wide_enable(bool on) { enabled = on; }
bool wide_stage(void) { return cur >= 0; }
void wide_reset(void) { cur = -1; prog = -1; }
void wide_disc(void) { nprogs = -1; prog = -1; cur = -1; }

void wide_check(void) {
  if (mcd.mode1m || !mcd.ret) return;    // the sub CPU has Word RAM: no stage runs from it now
  int st = cur >= 0 ? state_of(cur) : -1;
  if (st < 0) {
    cur = -1;
    for (int f = 0; f < wide_nfiles && cur < 0; f++) if ((st = state_of(f)) >= 0) cur = f;
    drawn = st == 1;   // already patched: a state saved in widescreen
  }
  patched = false;
  if (cur < 0) return;
  if (enabled != (st == 1)) { apply(cur, enabled); drawn = false; }   // wide from the next full draw
  patched = enabled;
}

// how far the picture reaches past the left and right of the game's screen, for camera x `cam`
static void edges(int cam, int *l, int *r) {
  int lb = ram16(0xf728), rb = ram16(0xf72a);   // the camera's bounds
  int v = cam - WIDE_EXTRA / 2;                  // the picture's left edge in the level
  if (v > rb - WIDE_EXTRA) v = rb - WIDE_EXTRA;  // never past the right bound: the act's end (Sonic runs
  if (v < lb && rb - lb >= WIDE_EXTRA) v = lb;   // off it) and arenas show the way back instead
  *l = cam - v;
  if (*l < 0) *l = 0;
  if (*l > WIDE_EXTRA) *l = WIDE_EXTRA;
  *r = WIDE_EXTRA - *l;
}

// The title screen (H32, 256 wide): its clouds and water already fill the 512-pixel plane B; only the
// horizon (rows 12-19: hills, the grass line) stops at 256. The hills at its right end (columns 26-31)
// carry on into the columns the wider picture shows on both sides (32-37, 58-63).
static void title_frame(void) {
  if ((vdp.reg[16] & 3) != 1) return;   // planes 64 cells wide
  u32 nt = (vdp.reg[4] & 7) << 13;
  for (int row = 12; row < 20; row++)
    for (int k = 0; k < 6; k++) {
      u32 src = nt + (row * 64 + 26 + k) * 2;
      for (int dst_col = 32 + k; dst_col < 64; dst_col += 26) {   // 32-37, 58-63
        u32 dst = nt + (row * 64 + dst_col) * 2;
        vdp.vram[dst] = vdp.vram[src]; vdp.vram[dst + 1] = vdp.vram[src + 1];
      }
    }
  vdp_exl = vdp_exr = WIDE_EXTRA_H32 / 2;
}

// The special stages (H32): the sky and the HUD carry on by themselves, but the floor is a 256x96 picture
// the graphics ASIC draws every frame. The main CPU gets Word RAM with it, copies it to work RAM and from
// there to one of two buffers in VRAM (tiles 1-384 and 385-768, on plane A rows 16-27; the floor lines'
// scroll of 0 or 256 picks which is shown). Past its sides the plane shows unrelated tiles. So the ASIC
// also works out the dots past both ends of each line (asic.c, same maths, kept out of Word RAM); they
// are taken when Word RAM goes to the main CPU with that image, each VRAM buffer gets them with the
// copy into it, and the floor lines are drawn on from them.
#define SS_FLOOR_TOP 128            // first line of the floor (plane A row 16)
#define SS_FLOOR_LINES 96
#define SS_BUF_BYTES (32 * 12 * 32)  // one VRAM buffer: 32 columns of 12 cells
static bool ss_on;
static u8 ss_side[2][SS_FLOOR_LINES][2][ASIC_SIDE_MAX];
static bool ss_have[2];
static u8 ss_handed[SS_FLOOR_LINES][2][ASIC_SIDE_MAX];   // with the image the main CPU got last

void wide_wram_to_main(void) { if (ss_on) memcpy(ss_handed, asic_side_px, sizeof ss_handed); }

static void ss_dma(u32 vram, u32 src, u32 words) {
  (void)src; (void)words;
  if (!ss_on || vram < 0x20 || vram >= 0x20 + 2 * SS_BUF_BYTES) return;
  int b = (vram - 0x20) / SS_BUF_BYTES;
  memcpy(ss_side[b], ss_handed, sizeof ss_side[b]);
  ss_have[b] = true;
}

static int ss_ext(int line, int x, int hscroll, int y) {
  (void)line;
  if (!ss_on || y < SS_FLOOR_TOP || y >= SS_FLOOR_TOP + SS_FLOOR_LINES) return -1;
  int b = (hscroll >> 8) & 1;
  if (!ss_have[b]) return -1;
  int k = x < 0 ? -x - 1 : x - vdp.width;
  if (k >= ASIC_SIDE_MAX) return -1;
  return ss_side[b][y - SS_FLOOR_TOP][x < 0 ? 0 : 1][k];
}

static void ss_frame(void) {
  if (!ss_on) { ss_on = true; ss_have[0] = ss_have[1] = false; }
  // the sea under the floor (plane B rows 16-27, a pattern repeating every 2 columns) is only filled in
  // for the 256 pixels: carry it on across the plane
  if ((vdp.reg[16] & 3) == 1) {
    u32 nt = (vdp.reg[4] & 7) << 13;
    for (int row = 16; row < 28; row++)
      for (int col = 32; col < 64; col++) {
        u32 src = nt + (row * 64 + col - 32) * 2, dst = nt + (row * 64 + col) * 2;
        vdp.vram[dst] = vdp.vram[src]; vdp.vram[dst + 1] = vdp.vram[src + 1];
      }
  }
  asic_side = WIDE_EXTRA_H32 / 2 + 6;
  vdp_vram_dma = ss_dma; vdp_plane_ext = ss_ext;
  vdp_exl = vdp_exr = WIDE_EXTRA_H32 / 2;
}

// Menus. The stage select, the sound test and the best times are text over a background that repeats every
// 7 cells (plane B): past the sides the background carries on at the same phase and the text plane is
// empty. The D.A. Garden's sky already fills its plane; its band of clouds (plane B rows 17-21, repeating
// every 11 cells) is carried on into the columns the wider picture shows. Time Attack (pages side by side),
// RAM Data (panels to the edges) and Visual Mode (a picture) stay 4:3.
static int menu_period;   // in pixels
static int menu_remap(bool plane_a, int x) {
  if (plane_a) return VDP_CLEAR;
  int w = vdp.width, p = menu_period;
  if (x < 0) return x + (-x + p - 1) / p * p;
  return x - (x - w + p) / p * p;
}

static void planet_frame(void) {   // the D.A. Garden (H32, plane B 64 cells wide)
  if ((vdp.reg[16] & 3) != 1) return;
  u32 nt = (vdp.reg[4] & 7) << 13;
  for (int row = 0; row < 22; row++) {
    int p = row >= 17 && row <= 20 ? 11 : 32;   // the clouds; the stars and the cloud bottom: the whole row
    for (int c = 32; c < 64; c++) {
      // columns 32-45 carry the row on to the right of column 31, 50-63 lead into column 0 from the left
      int src = c < 48 ? c - (c - 31 + p - 1) / p * p : c - 64 + (64 - c + p - 1) / p * p;
      u32 s = nt + (row * 64 + src) * 2, d = nt + (row * 64 + c) * 2;
      vdp.vram[d] = vdp.vram[s]; vdp.vram[d + 1] = vdp.vram[s + 1];
    }
  }
  vdp_exl = vdp_exr = WIDE_EXTRA_H32 / 2;
}

void wide_frame(void) {
  vdp_exl = vdp_exr = 0;
  vdp_plane_remap = NULL;
  track_program();
  if (enabled && (program_is("STSEL_.MMD") || program_is("SOSEL_.MMD") || program_is("DUMMY4.MMD"))) {
    menu_period = 56;
    vdp_plane_remap = menu_remap;
    vdp_exl = vdp_exr = (vdp.width == 320 ? WIDE_EXTRA : WIDE_EXTRA_H32) / 2;
    return;
  }
  if (enabled && vdp.width == 256 && program_is("PLANET_M.MMD")) { planet_frame(); return; }
  if (enabled && program_is("SPMM__.MMD")) {
    if (vdp.width == 256) { ss_frame(); return; }
  } else if (ss_on) { ss_on = false; asic_side = 0; vdp_vram_dma = NULL; vdp_plane_ext = NULL; }
  if (enabled && vdp.width == 256 && program_is("TITLEM.MMD")) { title_frame(); return; }
  if (!patched || !drawn || vdp.width != 320) return;
  edges(ram16(0xff1926), &vdp_exl, &vdp_exr);   // the camera the VBlank before this frame drew with
}

static u16 rd16(u32 a) { return (u16)ram16(a); }

int wide_trap(M68k *c, int id) {
  int l, r;
  edges(ram16(0xf700), &l, &r);
  int xl = -16 - ((l + 15) & ~15), xr = 320 + ((r + 15) & ~15);   // whole 16-pixel blocks
  switch (id) {
  case 7: drawn = true;                                                            // moveq #0,d5 (full draw)
    // fall through
  case 1: c->r[5] = (u32)xl; return 1;                                          // moveq #-16,d5
  case 2: c->r[5] = (c->r[5] & 0xffff0000) | (u16)xr; return 1;                  // move.w #$140,d5
  case 3: c->r[6] = (u32)((xr - xl) / 16); return 1;                             // moveq #$15,d6
  case 4: c->r[1] = (c->r[1] & 0xffff0000) | (u16)(c->r[3] + l); return 1;       // move.w d3,d1
  case 5: {                                                                        // cmpi.w #$140,d1
    u16 a = (u16)c->r[1], b = (u16)(320 + r), res = (u16)(a - b);
    u16 ccr = c->sr & SR_X;
    if (res & 0x8000) ccr |= SR_N;
    if (!res) ccr |= SR_Z;
    if ((a ^ b) & (a ^ res) & 0x8000) ccr |= SR_V;
    if (b > a) ccr |= SR_C;
    c->sr = (c->sr & ~0x1f) | ccr;
    return 1;
  }
  case 6: {                                                                        // move.w $8(a0),d3
    u8 obj = mcd.work_ram[c->r[8] & 0xffff];   // the object's type
    int shift = obj == OBJ_HUD || obj == OBJ_HUD2 ? -l : WIDE_EXTRA / 2 - l;
    c->r[3] = (c->r[3] & 0xffff0000) | (u16)(rd16(c->r[8] + 8) + shift);
    return 1;
  }
  }
  return 0;
}
