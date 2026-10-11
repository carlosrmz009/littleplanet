#pragma once
#include "types.h"

// One MC68000. The machine has two (main and sub); each gets its own bus.
typedef struct M68k {
  u32 r[16];            // d0-d7, a0-a7 (a7 is the active stack pointer)
  u32 osp;              // the other stack pointer: USP while S=1, SSP while S=0
  u32 pc;
  u16 sr;
  u16 ir;               // opcode being executed
  u8 stopped, halted;
  u8 ipl;               // interrupt level currently asserted by the machine
  u8 id;                // 0 main, 1 sub
  u8 trace_pending;
  s32 cyc;              // cycles consumed; the scheduler subtracts what it accounts for
  u32 ipc;              // address of the instruction being executed
  u8 (*r8)(u32 a);
  u16 (*r16)(u32 a);
  void (*w8)(u32 a, u8 v);
  void (*w16)(u32 a, u16 v);
  int (*iack)(int level);           // vector number, or -1 for autovector
  void (*reset_out)(void);          // RESET instruction
  int (*line_a)(struct M68k *c);    // HLE traps; returns 1 if handled
  void (*cov)(struct M68k *c);      // coverage recording (optional), called before each instruction
  const u16 *xw;                    // recompiled code: the instruction's extension words (see M68K_RECOMP)
} M68k;

enum { SR_C = 1, SR_V = 2, SR_Z = 4, SR_N = 8, SR_X = 16, SR_S = 0x2000, SR_T = 0x8000 };

void m68k_init_tables(void);
void m68k_reset(M68k *c);
void m68k_step(M68k *c);
int m68k_run(M68k *c, int cycles);   // runs at least `cycles`, returns cycles used
void m68k_exec(M68k *c, s32 limit);  // runs until c->cyc >= limit, through recompiled code where it matches memory (recomp.c)
const char *m68k_op_name(u16 op);    // handler of an opcode (built with M68K_NAMES, for tools/opmap.c)
void m68k_set_sr(M68k *c, u16 v);
void m68k_exception(M68k *c, int vec);
