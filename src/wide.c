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
static void level_drawn(void);

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
    drawn = false;
    if (st == 1) level_drawn();   // already patched: a state saved in widescreen
  }
  patched = false;
  if (cur < 0) return;
  if (enabled != (st == 1)) { apply(cur, enabled); drawn = false; }   // wide from the next full draw
  patched = enabled;
}

// How far the picture reaches past the left of the game's screen (the rest is past the right), for camera
// x `cam`. Never past the right bound: the act's end (Sonic runs off it) and arenas show the way back
// instead. Never past the left bound the level started with; a boss raises it as the camera goes in, and
// the picture carries on smoothly past that (it's the level Sonic just came through).
static int lb_base;   // the left bound when the level was drawn (or lower since)
static int left_extra(int cam) {
  int rb = ram16(0xf72a), lo = lb_base, hi = rb - WIDE_EXTRA;
  int v = cam - WIDE_EXTRA / 2;                  // the picture's left edge in the level
  if (v > hi) v = hi;
  if (v < lo && lo <= hi) v = lo;
  int l = cam - v;
  return l < 0 ? 0 : l > WIDE_EXTRA ? WIDE_EXTRA : l;
}

// The game draws a new column only as the camera crosses into it, one ahead of its own edge (the traps
// put that edge past the extra pixels). If the split itself changes (the right bound moves, a level's
// start), the picture moves against the camera with nothing drawn there: so it moves 12 pixels a frame at
// most, and while it does the game is asked to draw the column ahead of each side every frame (bits 2 and
// 3 of its plane A scroll flags), always ahead of what the picture shows next.
#define SPLIT_STEP 12
static int l_shown;           // the split shown
static bool split_moving;     // it moved past what the game draws, or moves on next: draw the side columns
static int cam_last;

// Pictures the graphics ASIC draws, 256x96: the special stages' floor (plane A rows 16-27) and the title's
// sky (plane B rows 0-11). The main CPU gets Word RAM with one, copies it to work RAM and from there to
// one of two buffers in VRAM (tiles 1-384 and 385-768; the lines' scroll of 0 or 256 picks which is
// shown). Past its sides the plane shows unrelated tiles. So the ASIC also works out the dots past both
// ends of each line (asic.c, same maths, kept out of Word RAM); they are taken when Word RAM goes to the
// main CPU with that image, each VRAM buffer gets them with the copy into it, and the picture's lines are
// drawn on from them.
#define PIC_LINES 96
#define PIC_BUF_BYTES (32 * 12 * 32)  // one VRAM buffer: 32 columns of 12 cells
static bool pic_on, pic_plane_a;
static int pic_top;                   // its first line in the plane
static u8 pic_side[2][PIC_LINES][2][ASIC_SIDE_MAX];
static bool pic_have[2];
static u8 pic_handed[PIC_LINES][2][ASIC_SIDE_MAX];   // with the image the main CPU got last

void wide_wram_to_main(void) { if (pic_on) memcpy(pic_handed, asic_side_px, sizeof pic_handed); }

static void pic_dma(u32 vram, u32 src, u32 words) {
  (void)src; (void)words;
  if (!pic_on || vram < 0x20 || vram >= 0x20 + 2 * PIC_BUF_BYTES) return;
  int b = (vram - 0x20) / PIC_BUF_BYTES;
  memcpy(pic_side[b], pic_handed, sizeof pic_side[b]);
  pic_have[b] = true;
}

static int pic_ext(bool plane_a, int line, int x, int hscroll, int y) {
  (void)line;
  if (!pic_on || plane_a != pic_plane_a || y < pic_top || y >= pic_top + PIC_LINES) return -1;
  int b = (hscroll >> 8) & 1;
  if (!pic_have[b]) return -1;
  int k = x < 0 ? -x - 1 : x - vdp.width;
  if (k >= ASIC_SIDE_MAX) return -1;
  return pic_side[b][y - pic_top][x < 0 ? 0 : 1][k];
}

static void pic_start(bool plane_a, int top) {   // (every frame it's shown)
  if (!pic_on || pic_plane_a != plane_a || pic_top != top) {
    pic_on = true; pic_plane_a = plane_a; pic_top = top; pic_have[0] = pic_have[1] = false;
  }
  asic_side = WIDE_EXTRA_H32 / 2 + 6;
  vdp_vram_dma = pic_dma; vdp_plane_ext = pic_ext;
}
static void pic_stop(void) { pic_on = false; asic_side = 0; vdp_vram_dma = NULL; vdp_plane_ext = NULL; }

// The special stages (H32): the sky and the HUD carry on by themselves; the floor is an ASIC picture.
static void ss_frame(void) {
  pic_start(true, 128);   // plane A rows 16-27
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
  vdp_exl = vdp_exr = WIDE_EXTRA_H32 / 2;
}

// The title screen (H32, 256 wide), plane B. The sky (rows 0-11) is an ASIC picture; the water (from line
// 160) scrolls and fills the plane by itself. The horizon between them is a still 256-pixel picture that
// doesn't join up at its ends: repeated, the hills stop dead at the edge; mirrored, the mountain stands
// there twice. So each of its lines past each side shows a strip of the picture itself (from that line or
// one nearby, maybe flipped), picked so that it carries on from the edge and agrees with the lines around
// it (tools/title_sides.py made these tables from the picture). If it isn't that picture: the plane's own.
#define TITLE_HORIZON 96
#define TITLE_WATER 160
typedef struct { s8 dy; u8 flip, a; } TitleSide;
#define TITLE_HORIZON_HASH 0x7ced845a
static const TitleSide title_left[TITLE_WATER - TITLE_HORIZON] = {
  {0,0,106}, {0,0,106}, {0,0,106}, {0,0,106}, {0,0,106}, {0,0,106}, {0,0,106}, {0,0,106},
  {0,0,106}, {0,0,106}, {0,0,106}, {0,0,106}, {0,0,106}, {0,0,106}, {0,0,106}, {0,0,106},
  {0,0,106}, {0,0,106}, {0,0,106}, {0,0,106}, {0,0,106}, {0,0,106}, {0,0,106}, {0,0,106},
  {0,0,106}, {0,0,106}, {0,0,106}, {0,0,106}, {0,0,106}, {0,0,106}, {0,0,106}, {0,0,106},
  {0,0,106}, {0,0,106}, {0,0,106}, {0,0,106}, {3,1,68}, {9,0,232}, {5,1,72}, {4,1,72},
  {0,1,68}, {0,1,69}, {3,1,74}, {2,1,74}, {-1,0,232}, {0,1,74}, {0,1,74}, {0,1,74},
  {0,1,74}, {0,1,74}, {1,1,78}, {1,1,78}, {1,1,78}, {1,1,78}, {2,1,78}, {1,1,78},
  {1,1,78}, {1,0,214}, {1,0,214}, {1,0,214}, {1,0,214}, {1,0,214}, {1,0,214}, {0,0,214},
};
static const TitleSide title_right[TITLE_WATER - TITLE_HORIZON] = {
  {0,0,64}, {0,0,64}, {0,0,64}, {0,0,64}, {0,0,64}, {0,0,64}, {0,0,64}, {0,0,64},
  {0,0,64}, {0,0,64}, {0,0,64}, {0,0,64}, {0,0,64}, {0,0,64}, {0,0,64}, {0,0,64},
  {0,0,64}, {0,0,64}, {0,0,64}, {0,0,64}, {0,0,64}, {0,0,64}, {0,0,64}, {0,0,64},
  {0,0,64}, {0,0,64}, {0,0,64}, {0,0,64}, {0,0,64}, {0,0,64}, {0,0,64}, {0,0,64},
  {0,0,64}, {0,0,64}, {0,0,64}, {0,0,64}, {0,0,64}, {0,0,64}, {0,0,67}, {0,0,71},
  {0,0,71}, {0,0,72}, {0,0,73}, {0,0,76}, {0,0,77}, {0,0,78}, {0,0,78}, {0,0,160},
  {0,0,160}, {0,0,160}, {0,1,204}, {0,1,204}, {0,1,204}, {0,1,204}, {-1,0,76}, {-1,0,76},
  {0,0,78}, {-1,0,78}, {-1,0,78}, {-1,0,78}, {-1,0,78}, {-1,0,78}, {-1,0,78}, {-1,0,78},
};
static bool title_known;

static int title_remap(bool plane_a, int x, int line, int *dy) {
  int w = vdp.width;
  if (plane_a || line < TITLE_HORIZON || line >= TITLE_WATER || !title_known) return x;
  const TitleSide *t = (x < 0 ? title_left : title_right) + line - TITLE_HORIZON;
  *dy = t->dy;
  if (x >= w) x -= w;   // 0..41 past the right, -42..-1 past the left
  return t->flip ? t->a - 1 - x : x + t->a;
}

static void title_frame(void) {
  u32 nt = (vdp.reg[4] & 7) << 13, h = 2166136261u;
  for (int i = 12 * 128; i < 20 * 128; i++) h = (h ^ vdp.vram[(nt + i) & 0xffff]) * 16777619u;   // rows 12-19
  title_known = (vdp.reg[16] & 3) == 1 && h == TITLE_HORIZON_HASH;   // (64 cells wide)
  pic_start(false, 0);
  vdp_plane_remap = title_remap;
  vdp_exl = vdp_exr = WIDE_EXTRA_H32 / 2;
}

// Menus. The stage select, the sound test and the best times are text over a background that repeats every
// 7 cells (plane B): past the sides the background carries on at the same phase and the text plane is
// empty. The D.A. Garden's sky already fills its plane; its band of clouds (plane B rows 17-21, repeating
// every 11 cells) is carried on into the columns the wider picture shows. Time Attack (pages side by side),
// RAM Data (panels to the edges) and Visual Mode (a picture) stay 4:3.
static int menu_period;   // in pixels
static int menu_remap(bool plane_a, int x, int line, int *dy) {
  (void)line; (void)dy;
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

// The time warp between two time periods (WARP__.MMD, in work RAM while the stage waits in Word RAM; H40):
// Sonic over a 40-column field of noise at $e000, every line scrolled its own way. The noise is carried on
// across the rest of the plane, the picture centred on the game's.
static const u8 warp_code[16] = { 0x21, 0xfc, 0x00, 0xff, 0x21, 0x70, 0xfd, 0x08, 0x41, 0xf8, 0x80, 0x00, 0x3e, 0x3c, 0x1e, 0xff };
#define WARP_NT 0xe000
static bool warp_running(void) { return !memcmp(&mcd.work_ram[0x2000], warp_code, sizeof warp_code); }   // at $ff2000
static void warp_frame(void) {
  if ((vdp.reg[16] & 3) == 1)   // planes 64 cells wide, 32 high
    for (int row = 0; row < 32; row++)
      memcpy(&vdp.vram[WARP_NT + (row * 64 + 40) * 2], &vdp.vram[WARP_NT + row * 64 * 2], 24 * 2);
  vdp_exl = vdp_exr = WIDE_EXTRA / 2;
}

void wide_frame(void) {
  vdp_exl = vdp_exr = 0;
  vdp_plane_remap = NULL;
  track_program();
  if (enabled && vdp.width == 320 && warp_running()) { warp_frame(); return; }
  if (enabled && (program_is("STSEL_.MMD") || program_is("SOSEL_.MMD") || program_is("DUMMY4.MMD"))) {
    menu_period = 56;
    vdp_plane_remap = menu_remap;
    vdp_exl = vdp_exr = (vdp.width == 320 ? WIDE_EXTRA : WIDE_EXTRA_H32) / 2;
    return;
  }
  if (enabled && vdp.width == 256 && program_is("PLANET_M.MMD")) { planet_frame(); return; }
  bool ss = enabled && program_is("SPMM__.MMD"), title = enabled && program_is("TITLEM.MMD");
  if (pic_on && !ss && !title) pic_stop();
  if (ss) {
    if (vdp.width == 256) { ss_frame(); return; }
  }
  if (title && vdp.width == 256) { title_frame(); return; }
  if (!patched || !drawn || vdp.width != 320) return;
  int lb = ram16(0xf728);
  if (lb < lb_base) lb_base = lb;
  int cam = ram16(0xff1926);   // the camera the VBlank before this frame drew with
  int t = left_extra(cam), d = t - l_shown;
  if (d > SPLIT_STEP) d = SPLIT_STEP;
  if (d < -SPLIT_STEP) d = -SPLIT_STEP;
  // the picture's edges move in the level by dv, the game's drawing (with the camera) by dc: more than
  // that, or a move still to come, needs the side columns
  int dc = cam - cam_last, dv = dc - d;
  l_shown += d;
  cam_last = cam;
  split_moving = l_shown != t || dv < (dc < 0 ? dc : 0) || dv > (dc > 0 ? dc : 0);
  vdp_exl = l_shown; vdp_exr = WIDE_EXTRA - l_shown;
}

static void level_drawn(void) {   // the level was drawn whole (it starts, or a state was loaded)
  drawn = true;
  lb_base = ram16(0xf728);
  cam_last = ram16(0xf700);
  l_shown = left_extra(cam_last);
  split_moving = false;
}

static u16 rd16(u32 a) { return (u16)ram16(a); }

int wide_trap(M68k *c, int id) {
  if (id == 7) level_drawn();                                                     // moveq #0,d5 (full draw)
  int l = drawn ? l_shown : left_extra(ram16(0xf700)), r = WIDE_EXTRA - l;
  int xl = -16 - ((l + 15) & ~15), xr = 320 + ((r + 15) & ~15);   // whole 16-pixel blocks
  switch (id) {
  case 7:
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
    // (the sprites are placed after the camera moved, before the VBlank copies its scroll flags)
    if (split_moving) mcd.work_ram[0xf754] |= 0x0c;   // plane A: draw the column past each side
    u8 obj = mcd.work_ram[c->r[8] & 0xffff];   // the object's type
    int shift = obj == OBJ_HUD || obj == OBJ_HUD2 ? -l : WIDE_EXTRA / 2 - l;
    c->r[3] = (c->r[3] & 0xffff0000) | (u16)(rd16(c->r[8] + 8) + shift);
    return 1;
  }
  }
  return 0;
}
