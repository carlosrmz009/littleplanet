// A save after every zone.
//
// The game saves (file SONICCD____ in backup RAM) when a round starts, and CONTINUE on the title starts
// that round from its zone 1: finish zone 1 or 2 and quit, and the next CONTINUE plays them again. So
// the main program (IPX___.MMD, in work RAM for the whole game) gets two changes, made the way wide.c
// patches the stages, with line-A traps:
//
//  - each round calls its three zones with bsr.w; those calls become traps that make the same call and,
//    before zone 2 or 3, also write what the game's own save holds (the same bytes, sub_ff0c76) plus
//    the round, the zone and the flags that carry over from one zone to the next (the good future)
//    into bytes of the save the game leaves unused. Before zone 1 they clear that.
//  - CONTINUE (at ff011c, the round test) goes on from the saved zone instead of the round's start
//    when the save has one for this round.
//
// The save is in the emulated backup RAM, written to disk with it.
#include "zones.h"
#include "mcd.h"
#include "hle.h"

#define CONT_SITE 0xff011c                  // cmpi.b #0,($ff1506).l in CONTINUE
static const u16 cont_old[4] = { 0x0c39, 0x0000, 0x00ff, 0x1506 };
static const u16 cont_new[4] = { 0xa901, 0x4e71, 0x4e71, 0x4e71 };
#define T_ZONE 0xa900                       // bsr.w to a zone, displacement kept

// the zone calls (bsr.w) of each round, and where CONTINUE resumes for zones 2 and 3 (round 2 resets
// $ff1577 before its zone 2)
static const struct { u32 site[3], resume[3]; } rounds[7] = {
  { { 0xff019a, 0xff019e, 0xff01a2 }, { 0, 0xff019e, 0xff01a2 } },
  { { 0xff01ea, 0xff01f6, 0xff01fa }, { 0, 0xff01ee, 0xff01fa } },
  { { 0xff022a, 0xff022e, 0xff0232 }, { 0, 0xff022e, 0xff0232 } },
  { { 0xff0262, 0xff0266, 0xff026a }, { 0, 0xff0266, 0xff026a } },
  { { 0xff029a, 0xff029e, 0xff02a2 }, { 0, 0xff029e, 0xff02a2 } },
  { { 0xff02d2, 0xff02d6, 0xff02da }, { 0, 0xff02d6, 0xff02da } },
  { { 0xff030a, 0xff030e, 0xff0312 }, { 0, 0xff030e, 0xff0312 } },
};
// the zone routines they call (sub_ff03cc...): the original displacement of each call
static const u32 targets[7][3] = {
  { 0xff03cc, 0xff03dc, 0xff03ec }, { 0xff03fc, 0xff040c, 0xff041c }, { 0xff042c, 0xff043c, 0xff044c },
  { 0xff045c, 0xff046c, 0xff047c }, { 0xff048c, 0xff049a, 0xff04a8 }, { 0xff04b8, 0xff04c6, 0xff04d4 },
  { 0xff04e4, 0xff04f2, 0xff0500 },
};

// the save's bytes (offsets in SONICCD____, = $200000 + offset when the game has it in Word RAM)
enum { SV_ROUND = 0x2a4, SV_CLEARED = 0x2a5, SV_19 = 0x2a6, SV_GOOD = 0x2a7, SV_UNLOCK = 0x2a8,
       SV_SPECIAL = 0x2ac, SV_STONES = 0x2ad,
       SV_ZONE = 0x2ae, SV_ZROUND = 0x2af, SV_ZFLAGS = 0x2b0, SV_END = 0x2b3 };   // ours: unused by the game
#define UNLOCK_CONTINUE 0x40   // $ff0f1d bit 6: CONTINUE on the title

static u8 *ram(u32 a) { return &mcd.work_ram[a & 0xffff]; }
static u16 rd(u32 a) { return (u16)(*ram(a) << 8 | *ram(a + 1)); }
static void wr(u32 a, u16 v) { *ram(a) = (u8)(v >> 8); *ram(a + 1) = (u8)v; }

static u8 *save(void) {
  int n;
  u8 *d = bram_file("SONICCD____", &n);
  return d && n >= SV_END ? d : NULL;
}

// 1: patched, 0: original, -1: not the main program (or not all of it)
static int state(void) {
  bool old = true, rep = true;
  for (int k = 0; k < 4; k++) {
    u16 w = rd(CONT_SITE + 2 * k);
    old &= w == cont_old[k]; rep &= w == cont_new[k];
  }
  for (int r = 0; r < 7; r++)
    for (int z = 0; z < 3; z++) {
      u32 s = rounds[r].site[z];
      u16 disp = (u16)(targets[r][z] - (s + 2)), w = rd(s);
      if (rd(s + 2) != disp) return -1;
      old &= w == 0x6100; rep &= w == T_ZONE;
    }
  return rep ? 1 : old ? 0 : -1;
}

void zones_frame(void) {
  if (state() != 0) return;
  for (int k = 0; k < 4; k++) wr(CONT_SITE + 2 * k, cont_new[k]);
  for (int r = 0; r < 7; r++)
    for (int z = 0; z < 3; z++) wr(rounds[r].site[z], T_ZONE);
}

static void zone_saved(int r, int z) {
  u8 *d = save();
  if (!d) return;
  if (z == 0) {   // a round starts: the game just saved it
    if (d[SV_ZONE]) { d[SV_ZONE] = 0; bram_touch(); }
    return;
  }
  *ram(0xff0f1d) |= UNLOCK_CONTINUE;   // so the title offers it after a game over too
  u8 v[SV_END - SV_ROUND] = {0};
  v[SV_ROUND - SV_ROUND] = *ram(0xff0f02);
  v[SV_CLEARED - SV_ROUND] = *ram(0xff0f18);
  v[SV_19 - SV_ROUND] = *ram(0xff0f19);
  v[SV_GOOD - SV_ROUND] = *ram(0xff0f1a);
  v[SV_UNLOCK - SV_ROUND] = *ram(0xff0f1d);
  memcpy(v + 5, d + SV_UNLOCK + 1, 3);   // 2a9-2ab: not the game's progress, kept
  v[SV_SPECIAL - SV_ROUND] = *ram(0xff0f21);
  v[SV_STONES - SV_ROUND] = *ram(0xff0f20);
  v[SV_ZONE - SV_ROUND] = (u8)z;
  v[SV_ZROUND - SV_ROUND] = (u8)r;
  v[SV_ZFLAGS - SV_ROUND] = *ram(0xff156a);   // the good future so far
  v[SV_ZFLAGS + 1 - SV_ROUND] = *ram(0xff156d);
  v[SV_ZFLAGS + 2 - SV_ROUND] = *ram(0xff158e);
  if (memcmp(d + SV_ROUND, v, sizeof v)) { memcpy(d + SV_ROUND, v, sizeof v); bram_touch(); }
}

static void set_nz(M68k *c, u8 v) {   // cmpi.b #0: N and Z from the byte, V and C clear, X kept
  u16 ccr = c->sr & SR_X;
  if (v & 0x80) ccr |= SR_N;
  if (!v) ccr |= SR_Z;
  c->sr = (c->sr & ~0x1f) | ccr;
}

int zones_trap(M68k *c, int id) {
  if (id == 0) {   // bsr.w to a zone
    u32 site = (c->pc - 2) & 0xffffff;
    for (int r = 0; r < 7; r++)
      for (int z = 0; z < 3; z++)
        if (rounds[r].site[z] == site) {
          zone_saved(r, z);
          c->r[15] -= 4;
          main_w16(c->r[15], (u16)((site + 4) >> 16)); main_w16(c->r[15] + 2, (u16)(site + 4));
          c->pc = site + 2 + (s16)main_r16(site + 2);
          c->cyc += 14;   // 18 in all, as bsr.w
          return 1;
        }
    return 0;
  }
  if (id == 1) {   // CONTINUE: the round is in $ff1506
    u8 r = *ram(0xff1506);
    u8 *d = save();
    if (d && r < 7 && d[SV_ZROUND] == r && (d[SV_ZONE] == 1 || d[SV_ZONE] == 2)) {
      *ram(0xff156a) = d[SV_ZFLAGS];
      *ram(0xff156d) = d[SV_ZFLAGS + 1];
      *ram(0xff158e) = d[SV_ZFLAGS + 2];
      c->pc = rounds[r].resume[d[SV_ZONE]];
      return 1;
    }
    set_nz(c, r);   // as the instruction it replaces (20 cycles with the 3 nops after it, which leave the flags)
    c->cyc += 4;
    return 1;
  }
  return 0;
}
