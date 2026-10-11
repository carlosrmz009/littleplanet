#pragma once
#include "types.h"

// Zilog Z80, including undocumented flags (XY), WZ/MEMPTR and Q.
typedef struct Z80 {
  union { struct { u8 f, a; }; u16 af; };
  union { struct { u8 c, b; }; u16 bc; };
  union { struct { u8 e, d; }; u16 de; };
  union { struct { u8 l, h; }; u16 hl; };
  union { struct { u8 ixl, ixh; }; u16 ix; };
  union { struct { u8 iyl, iyh; }; u16 iy; };
  u16 af_, bc_, de_, hl_;
  u16 sp, pc, wz;
  u8 i, r, im, iff1, iff2;
  u8 q, last_q;       // flags written by the last instruction (for SCF/CCF)
  u8 ei_delay;        // EI just executed: interrupts wait one instruction
  u8 halted;
  u8 int_line;
  u8 p;               // last instruction was LD A,I / LD A,R (for the IFF2 race)
  int cycles;
  u8 (*read)(u16 a);
  void (*write)(u16 a, u8 v);
  u8 (*in)(u16 port);
  void (*out)(u16 port, u8 v);
} Z80;

void z80cpu_reset(Z80 *z);
int z80cpu_step(Z80 *z);       // returns T-states
void z80cpu_nmi(Z80 *z);
