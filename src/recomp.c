// Runs the 68000s through statically recompiled code (tools/recomp.py) wherever the code in memory is
// what was compiled, and through the interpreter everywhere else. Both execute the same handlers, so
// the result is the same instruction for instruction (checked with --hashlog against --interp).
#include "recomp.h"

bool rc_on = true;
RcStats rc_stats[2];
u32 (*rc_miss)[0x100000];   // interpreted instructions per 16-byte line (--rcstats)

#ifndef LP_RECOMP
const RcBlock rc_blocks[1];
const u32 rc_keys[1], rc_vals[1];
const int rc_nblocks = 0, rc_nentries = 0;
#endif

// a block can start here if its first instruction is what memory holds (each instruction checks its own words)
static bool matches(M68k *c, u32 v) {
  const RcBlock *b = &rc_blocks[v >> 8];
  int at = v & 255, k = b->start[at], end = at + 1 < b->ninsn ? b->start[at + 1] : b->nwords;
  for (u32 pc = c->pc; k < end; k++, pc += 2)
    if (rc_fetch(c, pc) != b->words[k]) return false;
  return true;
}

// the block that matched last at each address, so the search runs once per code change
#define CACHE 16384
static struct { u32 key, val; } cache[CACHE];

static bool find(M68k *c, u32 *val) {
  u32 key = (u32)c->id << 24 | (c->pc & 0xffffff);
  unsigned h = (key ^ key >> 14) & (CACHE - 1);
  if (cache[h].key == key && cache[h].val != ~0u && matches(c, cache[h].val)) { *val = cache[h].val; return true; }
  int lo = 0, hi = rc_nentries;
  while (lo < hi) { int m = (lo + hi) / 2; if (rc_keys[m] < key) lo = m + 1; else hi = m; }
  for (int i = lo; i < rc_nentries && rc_keys[i] == key; i++)
    if (matches(c, rc_vals[i])) { cache[h].key = key; cache[h].val = rc_vals[i]; *val = rc_vals[i]; return true; }
  return false;
}

void m68k_exec(M68k *c, s32 limit) {
  while (c->cyc < limit) {
    if (rc_on && rc_nentries && !c->cov && !c->stopped && !c->halted && !(c->sr & SR_T) && !rc_irq(c) && !(c->pc & 1)) {
      u32 v;
      if (find(c, &v)) {
        s32 before = c->cyc;
        rc_blocks[v >> 8].fn(c, limit, v & 255);
        rc_stats[c->id].blocks++;
        if (c->cyc != before) continue;   // it ran; otherwise a later word differed: interpret this one
      }
    }
    if (rc_miss) rc_miss[c->id][(c->pc & 0xffffff) >> 4]++;
    m68k_step(c);
    rc_stats[c->id].insn_interp++;
  }
}
