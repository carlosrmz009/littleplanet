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

void wide_enable(bool on) { enabled = on; }
bool wide_stage(void) { return cur >= 0; }
void wide_reset(void) { cur = -1; }

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
  if (rb - lb >= WIDE_EXTRA) {                   // (an arena narrower than that: centred)
    if (v > rb - WIDE_EXTRA) v = rb - WIDE_EXTRA;
    if (v < lb) v = lb;
  }
  *l = cam - v;
  if (*l < 0) *l = 0;
  if (*l > WIDE_EXTRA) *l = WIDE_EXTRA;
  *r = WIDE_EXTRA - *l;
}

void wide_frame(void) {
  vdp_exl = vdp_exr = 0;
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
