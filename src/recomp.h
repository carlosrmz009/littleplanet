#pragma once
#include "m68k.h"
#include "mcd.h"

// Statically recompiled 68000 code (tools/recomp.py) and what runs it (recomp.c).

typedef struct {
  void (*fn)(M68k *c, s32 lim, int at);   // runs from instruction `at` until the block ends or must stop
  const u16 *words;                       // the code it was compiled from
  const u16 *start;                       // word index of each instruction
  u16 nwords, ninsn;
} RcBlock;
extern const RcBlock rc_blocks[];
extern const int rc_nblocks;
// every place a block can be entered: sorted keys (cpu << 24 | address), and block << 8 | instruction
extern const u32 rc_keys[], rc_vals[];
extern const int rc_nentries;

// what m68k_step would do differently before the next instruction: leave the block
static inline bool rc_irq(const M68k *c) { int l = c->ipl; return l && (l == 7 || l > ((c->sr >> 8) & 7)); }
#define RC_STOP(c, lim) ((c)->cyc >= (lim) || ((c)->sr & SR_T) || rc_irq(c))
// the word at pc + off is the one the code was compiled from (what the interpreter would fetch)
static inline u16 rc_fetch(M68k *c, u32 a) {   // RAM directly, anything else through the bus
  a &= 0xfffffe;
  if (c->id) { if (a < 0x80000) return mcd.prg_ram[a] << 8 | mcd.prg_ram[a + 1]; }
  else if (a >= 0xff0000) return mcd.work_ram[a & 0xffff] << 8 | mcd.work_ram[(a & 0xffff) + 1];
  return c->r16(a);
}
#define RC_W(c, off, w) (rc_fetch(c, (c)->pc + (off)) == (w))

extern bool rc_on;                        // use recompiled code (--interp turns it off)
typedef struct { u64 blocks, insn_interp; } RcStats;
extern RcStats rc_stats[2];
extern u32 (*rc_miss)[0x100000];
