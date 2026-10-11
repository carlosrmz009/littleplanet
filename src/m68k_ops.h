// MC68000 instruction semantics. Shared by the interpreter (m68k.c) and the recompiled code,
// so both execute exactly the same operations and cycle counts.
#pragma once
#include "m68k.h"

#define DR(n) c->r[n]
#define AR(n) c->r[8 + (n)]

static inline u32 SZMASK(int sz) { return sz == 1 ? 0xff : sz == 2 ? 0xffff : 0xffffffff; }
static inline u32 SZMSB(int sz) { return sz == 1 ? 0x80 : sz == 2 ? 0x8000 : 0x80000000; }
static inline u32 SEXT(u32 v, int sz) { return sz == 1 ? (u32)(s32)(s8)v : sz == 2 ? (u32)(s32)(s16)v : v; }

static inline u8 rb(M68k *c, u32 a) { return c->r8(a & 0xffffff); }
static inline u16 rw(M68k *c, u32 a) { return c->r16(a & 0xfffffe); }
static inline u32 rl(M68k *c, u32 a) { u32 h = rw(c, a); return h << 16 | rw(c, a + 2); }
static inline void wb(M68k *c, u32 a, u8 v) { c->w8(a & 0xffffff, v); }
static inline void ww(M68k *c, u32 a, u16 v) { c->w16(a & 0xfffffe, v); }
static inline void wl(M68k *c, u32 a, u32 v) { ww(c, a, v >> 16); ww(c, a + 2, (u16)v); }
static inline u32 rdm(M68k *c, u32 a, int sz) { return sz == 1 ? rb(c, a) : sz == 2 ? rw(c, a) : rl(c, a); }
static inline void wrm(M68k *c, u32 a, int sz, u32 v) { if (sz == 1) wb(c, a, v); else if (sz == 2) ww(c, a, v); else wl(c, a, v); }
static inline u16 fw(M68k *c) { u16 v = rw(c, c->pc); c->pc += 2; return v; }
static inline u32 fl(M68k *c) { u32 h = fw(c); return h << 16 | fw(c); }
static inline void setd(M68k *c, int r, int sz, u32 v) { u32 m = SZMASK(sz); DR(r) = (DR(r) & ~m) | (v & m); }

static inline void push16(M68k *c, u16 v) { AR(7) -= 2; ww(c, AR(7), v); }
static inline void push32(M68k *c, u32 v) { AR(7) -= 4; wl(c, AR(7), v); }
static inline u16 pop16(M68k *c) { u16 v = rw(c, AR(7)); AR(7) += 2; return v; }
static inline u32 pop32(M68k *c) { u32 v = rl(c, AR(7)); AR(7) += 4; return v; }

// ---- flags
static inline void f_logic(M68k *c, u32 v, int sz) {
  u16 f = c->sr & ~(SR_N | SR_Z | SR_V | SR_C);
  v &= SZMASK(sz);
  if (!v) f |= SR_Z;
  if (v & SZMSB(sz)) f |= SR_N;
  c->sr = f;
}
static inline u32 f_add(M68k *c, u32 s, u32 d, int sz, int x, bool addx) {
  u32 m = SZMASK(sz), sb = SZMSB(sz);
  s &= m; d &= m;
  u32 r = (s + d + x) & m;
  u16 f = c->sr & ~(SR_X | SR_N | SR_V | SR_C | (addx ? 0 : SR_Z));
  if (((s & d) | ((s | d) & ~r)) & sb) f |= SR_C | SR_X;
  if ((s ^ r) & (d ^ r) & sb) f |= SR_V;
  if (r & sb) f |= SR_N;
  if (addx) { if (r) f &= ~SR_Z; } else if (!r) f |= SR_Z;
  c->sr = f;
  return r;
}
static inline u32 f_sub(M68k *c, u32 s, u32 d, int sz, int x, int mode) {  // mode 0 sub, 1 subx, 2 cmp
  u32 m = SZMASK(sz), sb = SZMSB(sz);
  s &= m; d &= m;
  u32 r = (d - s - x) & m;
  u16 keep = mode == 2 ? SR_X : 0;
  u16 f = c->sr & ~((SR_X & ~keep) | SR_N | SR_V | SR_C | (mode == 1 ? 0 : SR_Z));
  if (((s & ~d) | (r & ~d) | (s & r)) & sb) f |= mode == 2 ? SR_C : SR_C | SR_X;
  if ((s ^ d) & (r ^ d) & sb) f |= SR_V;
  if (r & sb) f |= SR_N;
  if (mode == 1) { if (r) f &= ~SR_Z; } else if (!r) f |= SR_Z;
  c->sr = f;
  return r;
}
static inline int XF(M68k *c) { return (c->sr >> 4) & 1; }

static inline bool cond(M68k *c, int cc) {
  u16 f = c->sr;
  bool C = f & SR_C, V = f & SR_V, Z = f & SR_Z, N = f & SR_N;
  switch (cc) {
  case 0: return true;   case 1: return false;
  case 2: return !C && !Z; case 3: return C || Z;
  case 4: return !C;     case 5: return C;
  case 6: return !Z;     case 7: return Z;
  case 8: return !V;     case 9: return V;
  case 10: return !N;    case 11: return N;
  case 12: return N == V; case 13: return N != V;
  case 14: return !Z && N == V; default: return Z || N != V;
  }
}

// ---- effective addresses
static const u8 EAT_BW[12] = {0, 0, 4, 4, 6, 8, 10, 8, 12, 8, 10, 4};
static const u8 EAT_L[12] = {0, 0, 8, 8, 10, 12, 14, 12, 16, 12, 14, 8};
static inline int EAI(int m, int r) { return m < 7 ? m : 7 + r; }
static inline int eat(int m, int r, int sz) { return (sz == 4 ? EAT_L : EAT_BW)[EAI(m, r)]; }

static inline u32 ea_index(M68k *c, u32 base) {
  u16 e = fw(c);
  u32 x = c->r[e >> 12];
  if (!(e & 0x800)) x = (u32)(s32)(s16)x;
  return base + x + (u32)(s32)(s8)e;
}
static inline u32 eaddr(M68k *c, int m, int r, int sz) {
  switch (m) {
  case 2: return AR(r);
  case 3: { u32 a = AR(r); AR(r) += (r == 7 && sz == 1) ? 2 : sz; return a; }
  case 4: AR(r) -= (r == 7 && sz == 1) ? 2 : sz; return AR(r);
  case 5: { u32 b = AR(r); return b + (u32)(s32)(s16)fw(c); }
  case 6: return ea_index(c, AR(r));
  default:
    switch (r) {
    case 0: return (u32)(s32)(s16)fw(c);
    case 1: return fl(c);
    case 2: { u32 b = c->pc; return b + (u32)(s32)(s16)fw(c); }
    default: return ea_index(c, c->pc);
    }
  }
}
// read a source operand, charging its EA time
static inline u32 rea(M68k *c, int m, int r, int sz) {
  c->cyc += eat(m, r, sz);
  if (m == 0) return DR(r) & SZMASK(sz);
  if (m == 1) return AR(r) & SZMASK(sz);
  if (m == 7 && r == 4) { if (sz == 4) return fl(c); u16 v = fw(c); return sz == 1 ? v & 0xff : v; }
  return rdm(c, eaddr(c, m, r, sz), sz);
}
typedef struct { u8 m, r; u32 a; } Loc;
static inline Loc loc(M68k *c, int m, int r, int sz) {
  Loc l = {(u8)m, (u8)r, 0};
  c->cyc += eat(m, r, sz);
  if (m >= 2) l.a = eaddr(c, m, r, sz);
  return l;
}
static inline u32 lrd(M68k *c, Loc *l, int sz) {
  if (l->m == 0) return DR(l->r) & SZMASK(sz);
  if (l->m == 1) return AR(l->r);
  return rdm(c, l->a, sz);
}
static inline void lwr(M68k *c, Loc *l, int sz, u32 v) {
  if (l->m == 0) setd(c, l->r, sz, v);
  else if (l->m == 1) AR(l->r) = v;
  else wrm(c, l->a, sz, v);
}

#define OP_M ((op >> 3) & 7)
#define OP_R (op & 7)
#define OP_RX ((op >> 9) & 7)
static inline int SZ2(int s) { return s == 0 ? 1 : s == 1 ? 2 : 4; }   // bits 7-6 encoding
#define OP_SZ SZ2((op >> 6) & 3)

// ---- exceptions
static inline void exc(M68k *c, int vec) { m68k_exception(c, vec); }
static inline bool priv(M68k *c) {
  if (c->sr & SR_S) return true;
  c->pc = c->ipc; exc(c, 8); c->cyc += 34; return false;
}

// ---- 0000: immediate ops, bit ops, movep
static inline void op_immop(M68k *c, u16 op) {
  int sz = OP_SZ, k = (op >> 9) & 7, m = OP_M, r = OP_R;
  u32 imm = sz == 4 ? fl(c) : fw(c) & SZMASK(sz);
  if (k == 6) {   // cmpi
    c->cyc += m == 0 ? (sz == 4 ? 14 : 8) : (sz == 4 ? 12 : 8);
    u32 d = rea(c, m, r, sz);
    f_sub(c, imm, d, sz, 0, 2);
    return;
  }
  c->cyc += m == 0 ? (sz == 4 ? 16 : 8) : (sz == 4 ? 20 : 12);
  Loc l = loc(c, m, r, sz);
  u32 d = lrd(c, &l, sz), v;
  switch (k) {
  case 0: v = d | imm; f_logic(c, v, sz); break;
  case 1: v = d & imm; f_logic(c, v, sz); break;
  case 2: v = f_sub(c, imm, d, sz, 0, 0); break;
  case 3: v = f_add(c, imm, d, sz, 0, false); break;
  default: v = d ^ imm; f_logic(c, v, sz); break;
  }
  lwr(c, &l, sz, v);
}
static inline void op_immsr(M68k *c, u16 op) {  // ori/andi/eori to ccr/sr
  bool sr = op & 0x40;
  if (sr && !priv(c)) return;
  u16 imm = fw(c);
  u16 v = c->sr;
  int k = (op >> 9) & 7;
  if (!sr) imm &= 0xff;
  if (k == 0) v |= imm; else if (k == 1) v &= sr ? imm : (imm | 0xff00); else v ^= imm;
  c->cyc += 20;
  if (sr) m68k_set_sr(c, v); else c->sr = (c->sr & 0xff00) | (v & 0x1f);
}
static inline void op_bit(M68k *c, u16 op) {
  int k = (op >> 6) & 3, m = OP_M, r = OP_R;
  bool dyn = op & 0x100;
  u32 bit = dyn ? DR(OP_RX) : fw(c);
  if (m == 0) {
    bit &= 31;
    u32 d = DR(r);
    if (d & (1u << bit)) c->sr &= ~SR_Z; else c->sr |= SR_Z;
    switch (k) {
    case 0: c->cyc += dyn ? 6 : 10; return;
    case 1: d ^= 1u << bit; c->cyc += (dyn ? 6 : 10) + (bit >= 16 ? 2 : 0); break;
    case 2: d &= ~(1u << bit); c->cyc += (dyn ? 8 : 12) + (bit >= 16 ? 2 : 0); break;
    default: d |= 1u << bit; c->cyc += (dyn ? 6 : 10) + (bit >= 16 ? 2 : 0); break;
    }
    DR(r) = d;
    return;
  }
  bit &= 7;
  if (k == 0) {
    c->cyc += dyn ? (m == 7 && r == 4 ? 6 : 4) : 8;
    u32 d = rea(c, m, r, 1);
    if (d & (1u << bit)) c->sr &= ~SR_Z; else c->sr |= SR_Z;
    return;
  }
  c->cyc += dyn ? 8 : 12;
  Loc l = loc(c, m, r, 1);
  u32 d = lrd(c, &l, 1);
  if (d & (1u << bit)) c->sr &= ~SR_Z; else c->sr |= SR_Z;
  if (k == 1) d ^= 1u << bit; else if (k == 2) d &= ~(1u << bit); else d |= 1u << bit;
  lwr(c, &l, 1, d);
}
static inline void op_movep(M68k *c, u16 op) {
  int dr = OP_RX, om = (op >> 6) & 3;
  u32 a = AR(OP_R) + (u32)(s32)(s16)fw(c);
  switch (om) {
  case 0: setd(c, dr, 2, rb(c, a) << 8 | rb(c, a + 2)); c->cyc += 16; break;
  case 1: DR(dr) = (u32)rb(c, a) << 24 | (u32)rb(c, a + 2) << 16 | rb(c, a + 4) << 8 | rb(c, a + 6); c->cyc += 24; break;
  case 2: wb(c, a, DR(dr) >> 8); wb(c, a + 2, DR(dr)); c->cyc += 16; break;
  default: wb(c, a, DR(dr) >> 24); wb(c, a + 2, DR(dr) >> 16); wb(c, a + 4, DR(dr) >> 8); wb(c, a + 6, DR(dr)); c->cyc += 24; break;
  }
}

// ---- move
static const u8 EAT_DST_BW[12] = {0, 0, 4, 4, 4, 8, 10, 8, 12};
static const u8 EAT_DST_L[12] = {0, 0, 8, 8, 8, 12, 14, 12, 16};
static inline void op_move(M68k *c, u16 op) {
  int s = (op >> 12) & 3, sz = s == 1 ? 1 : s == 3 ? 2 : 4;
  int dm = (op >> 6) & 7, dr = OP_RX;
  u32 v = rea(c, OP_M, OP_R, sz);
  c->cyc += 4 + (sz == 4 ? EAT_DST_L : EAT_DST_BW)[EAI(dm, dr)];
  if (dm == 1) { AR(dr) = SEXT(v, sz); return; }
  f_logic(c, v, sz);
  if (dm == 0) { setd(c, dr, sz, v); return; }
  if (dm == 4) {
    AR(dr) -= (dr == 7 && sz == 1) ? 2 : sz;
    if (sz == 4) { ww(c, AR(dr) + 2, (u16)v); ww(c, AR(dr), v >> 16); }
    else wrm(c, AR(dr), sz, v);
    return;
  }
  wrm(c, eaddr(c, dm, dr, sz), sz, v);
}
static inline void op_moveq(M68k *c, u16 op) {
  u32 v = (u32)(s32)(s8)op;
  DR(OP_RX) = v;
  f_logic(c, v, 4);
  c->cyc += 4;
}

// ---- 0100: misc
static inline void op_negx_neg_not_clr(M68k *c, u16 op) {
  int sz = OP_SZ, k = (op >> 9) & 3, m = OP_M;
  c->cyc += m == 0 ? (sz == 4 ? 6 : 4) : (sz == 4 ? 12 : 8);
  Loc l = loc(c, m, OP_R, sz);
  u32 d = lrd(c, &l, sz), v;
  switch (k) {
  case 0: v = f_sub(c, d, 0, sz, XF(c), 1); break;
  case 1: v = 0; c->sr = (c->sr & ~(SR_N | SR_V | SR_C)) | SR_Z; break;
  case 2: v = f_sub(c, d, 0, sz, 0, 0); break;
  default: v = ~d; f_logic(c, v, sz); break;
  }
  lwr(c, &l, sz, v);
}
static inline void op_move_from_sr(M68k *c, u16 op) {
  int m = OP_M;
  c->cyc += m == 0 ? 6 : 8;
  Loc l = loc(c, m, OP_R, 2);
  if (m) lrd(c, &l, 2);
  lwr(c, &l, 2, c->sr);
}
static inline void op_move_to_ccr(M68k *c, u16 op) {
  u32 v = rea(c, OP_M, OP_R, 2);
  c->cyc += 12;
  c->sr = (c->sr & 0xff00) | (v & 0x1f);
}
static inline void op_move_to_sr(M68k *c, u16 op) {
  if (!priv(c)) return;
  u32 v = rea(c, OP_M, OP_R, 2);
  c->cyc += 12;
  m68k_set_sr(c, v);
}
static inline u8 bcd_sub(M68k *c, u8 s, u8 d) {
  u16 x = XF(c);
  u16 dd = (u16)(d - s - x);
  u16 bc = ((~d & s) | (dd & ~d) | (dd & s)) & 0x88;
  u16 corf = bc - (bc >> 2);
  u16 res = dd - corf;
  u16 f = c->sr & ~(SR_X | SR_C | SR_V | SR_N);
  if (((bc | (~dd & res)) >> 7) & 1) f |= SR_X | SR_C;
  if (((dd & ~res) >> 7) & 1) f |= SR_V;
  if (res & 0x80) f |= SR_N;
  if (res & 0xff) f &= ~SR_Z;
  c->sr = f;
  return (u8)res;
}
static inline u8 bcd_add(M68k *c, u8 s, u8 d) {
  u16 x = XF(c);
  u16 ss = s + d + x;
  u16 bc = ((s & d) | (~ss & s) | (~ss & d)) & 0x88;
  u16 dc = (((ss + 0x66) ^ ss) & 0x110) >> 1;
  u16 corf = (bc | dc) - ((bc | dc) >> 2);
  u16 res = ss + corf;
  u16 f = c->sr & ~(SR_X | SR_C | SR_V | SR_N);
  if (((bc | (ss & ~res)) >> 7) & 1) f |= SR_X | SR_C;
  if (((~ss & res) >> 7) & 1) f |= SR_V;
  if (res & 0x80) f |= SR_N;
  if (res & 0xff) f &= ~SR_Z;
  c->sr = f;
  return (u8)res;
}
static inline void op_nbcd(M68k *c, u16 op) {
  int m = OP_M;
  c->cyc += m == 0 ? 6 : 8;
  Loc l = loc(c, m, OP_R, 1);
  u8 d = lrd(c, &l, 1);
  lwr(c, &l, 1, bcd_sub(c, d, 0));
}
static inline void op_swap(M68k *c, u16 op) {
  u32 v = DR(OP_R);
  v = v >> 16 | v << 16;
  DR(OP_R) = v;
  f_logic(c, v, 4);
  c->cyc += 4;
}
static const u8 LEA_T[12] = {0, 0, 4, 0, 0, 8, 12, 8, 12, 8, 12};
static const u8 PEA_T[12] = {0, 0, 12, 0, 0, 16, 20, 16, 20, 16, 20};
static const u8 JMP_T[12] = {0, 0, 8, 0, 0, 10, 14, 10, 12, 10, 14};
static const u8 JSR_T[12] = {0, 0, 16, 0, 0, 18, 22, 18, 20, 18, 22};
static inline void op_pea(M68k *c, u16 op) {
  u32 a = eaddr(c, OP_M, OP_R, 4);
  push32(c, a);
  c->cyc += PEA_T[EAI(OP_M, OP_R)];
}
static inline void op_lea(M68k *c, u16 op) {
  AR(OP_RX) = eaddr(c, OP_M, OP_R, 4);
  c->cyc += LEA_T[EAI(OP_M, OP_R)];
}
static inline void op_ext(M68k *c, u16 op) {
  int r = OP_R;
  if (op & 0x40) { DR(r) = (u32)(s32)(s16)DR(r); f_logic(c, DR(r), 4); }
  else { setd(c, r, 2, (u16)(s16)(s8)DR(r)); f_logic(c, DR(r), 2); }
  c->cyc += 4;
}
static inline void op_movem(M68k *c, u16 op) {
  int sz = op & 0x40 ? 4 : 2, m = OP_M, r = OP_R;
  u16 mask = fw(c);
  int n = 0;
  bool load = op & 0x400;
  if (load) {
    static const u8 base[12] = {0, 0, 12, 12, 0, 16, 18, 16, 20, 16, 18};
    u32 a = m == 3 ? AR(r) : eaddr(c, m, r, sz);
    for (int i = 0; i < 16; i++) if (mask & (1 << i)) {
      c->r[i] = sz == 2 ? (u32)(s32)(s16)rw(c, a) : rl(c, a);
      a += sz; n++;
    }
    rw(c, a);   // the 68000 reads one extra word
    if (m == 3) AR(r) = a;
    c->cyc += base[EAI(m, r)] + n * (sz == 4 ? 8 : 4);
  } else {
    static const u8 base[12] = {0, 0, 8, 0, 8, 12, 14, 12, 16};
    if (m == 4) {
      u32 a = AR(r);
      for (int i = 0; i < 16; i++) if (mask & (1 << i)) {
        u32 v = c->r[15 - i];
        a -= sz;
        if (sz == 4) { ww(c, a + 2, (u16)v); ww(c, a, v >> 16); } else ww(c, a, v);
        n++;
      }
      AR(r) = a;
    } else {
      u32 a = eaddr(c, m, r, sz);
      for (int i = 0; i < 16; i++) if (mask & (1 << i)) { wrm(c, a, sz, c->r[i]); a += sz; n++; }
    }
    c->cyc += base[EAI(m, r)] + n * (sz == 4 ? 8 : 4);
  }
}
static inline void op_tst(M68k *c, u16 op) {
  int sz = OP_SZ;
  u32 v = rea(c, OP_M, OP_R, sz);
  f_logic(c, v, sz);
  c->cyc += 4;
}
static inline void op_tas(M68k *c, u16 op) {
  int m = OP_M;
  c->cyc += m == 0 ? 4 : 10;
  Loc l = loc(c, m, OP_R, 1);
  u32 v = lrd(c, &l, 1);
  f_logic(c, v, 1);
  lwr(c, &l, 1, v | 0x80);
}
static inline void op_illegal(M68k *c, u16 op) {
  (void)op;
  c->pc = c->ipc;
  exc(c, 4);
  c->cyc += 34;
}
static inline void op_linea(M68k *c, u16 op) {
  (void)op;
  if (c->line_a && c->line_a(c)) return;
  c->pc = c->ipc;
  exc(c, 10);
  c->cyc += 34;
}
static inline void op_linef(M68k *c, u16 op) {
  (void)op;
  c->pc = c->ipc;
  exc(c, 11);
  c->cyc += 34;
}
static inline void op_trap(M68k *c, u16 op) { exc(c, 32 + (op & 15)); c->cyc += 34; }
static inline void op_link(M68k *c, u16 op) {
  int r = OP_R;
  s16 d = (s16)fw(c);
  push32(c, r == 7 ? AR(7) - 4 : AR(r));
  AR(r) = AR(7);
  AR(7) += d;
  c->cyc += 16;
}
static inline void op_unlk(M68k *c, u16 op) {
  int r = OP_R;
  AR(7) = AR(r);
  AR(r) = pop32(c);
  c->cyc += 12;
}
static inline void op_move_usp(M68k *c, u16 op) {
  if (!priv(c)) return;
  if (op & 8) AR(OP_R) = c->osp; else c->osp = AR(OP_R);
  c->cyc += 4;
}
static inline void op_reset(M68k *c, u16 op) {
  (void)op;
  if (!priv(c)) return;
  if (c->reset_out) c->reset_out();
  c->cyc += 132;
}
static inline void op_nop(M68k *c, u16 op) { (void)op; c->cyc += 4; }
static inline void op_stop(M68k *c, u16 op) {
  (void)op;
  if (!priv(c)) return;
  u16 v = fw(c);
  m68k_set_sr(c, v);
  c->stopped = 1;
  c->cyc += 4;
}
static inline void op_rte(M68k *c, u16 op) {
  (void)op;
  if (!priv(c)) return;
  u16 sr = pop16(c);
  c->pc = pop32(c);
  m68k_set_sr(c, sr);
  c->cyc += 20;
}
static inline void op_rts(M68k *c, u16 op) { (void)op; c->pc = pop32(c); c->cyc += 16; }
static inline void op_trapv(M68k *c, u16 op) {
  (void)op;
  c->cyc += 4;
  if (c->sr & SR_V) { exc(c, 7); c->cyc += 30; }
}
static inline void op_rtr(M68k *c, u16 op) {
  (void)op;
  u16 ccr = pop16(c);
  c->sr = (c->sr & 0xff00) | (ccr & 0x1f);
  c->pc = pop32(c);
  c->cyc += 20;
}
static inline void op_jsr(M68k *c, u16 op) {
  u32 a = eaddr(c, OP_M, OP_R, 4);
  push32(c, c->pc);
  c->pc = a;
  c->cyc += JSR_T[EAI(OP_M, OP_R)];
}
static inline void op_jmp(M68k *c, u16 op) {
  c->pc = eaddr(c, OP_M, OP_R, 4);
  c->cyc += JMP_T[EAI(OP_M, OP_R)];
}
static inline void op_chk(M68k *c, u16 op) {
  s16 ub = (s16)rea(c, OP_M, OP_R, 2);
  s16 d = (s16)DR(OP_RX);
  c->cyc += 10;
  u16 f = c->sr & ~(SR_Z | SR_V | SR_C);
  if (d > ub) { c->sr = d < 0 ? f | SR_N : f & ~SR_N; exc(c, 6); c->cyc += 28; return; }
  if (d < 0) { c->sr = f | SR_N; exc(c, 6); c->cyc += 30; return; }
  c->sr = f;
}

// ---- 0101
static inline void op_addq_subq(M68k *c, u16 op) {
  int sz = OP_SZ, m = OP_M, r = OP_R;
  u32 q = (op >> 9) & 7; if (!q) q = 8;
  bool sub = op & 0x100;
  if (m == 1) {
    AR(r) = sub ? AR(r) - q : AR(r) + q;
    c->cyc += 8;
    return;
  }
  c->cyc += m == 0 ? (sz == 4 ? 8 : 4) : (sz == 4 ? 12 : 8);
  Loc l = loc(c, m, r, sz);
  u32 d = lrd(c, &l, sz);
  lwr(c, &l, sz, sub ? f_sub(c, q, d, sz, 0, 0) : f_add(c, q, d, sz, 0, false));
}
static inline void op_scc(M68k *c, u16 op) {
  int m = OP_M;
  bool t = cond(c, (op >> 8) & 15);
  if (m == 0) { setd(c, OP_R, 1, t ? 0xff : 0); c->cyc += t ? 6 : 4; return; }
  c->cyc += 8;
  Loc l = loc(c, m, OP_R, 1);
  lrd(c, &l, 1);
  lwr(c, &l, 1, t ? 0xff : 0);
}
static inline void op_dbcc(M68k *c, u16 op) {
  u32 base = c->pc;
  s16 disp = (s16)fw(c);
  if (cond(c, (op >> 8) & 15)) { c->cyc += 12; return; }
  u16 cnt = (u16)DR(OP_R) - 1;
  setd(c, OP_R, 2, cnt);
  if (cnt != 0xffff) { c->pc = base + disp; c->cyc += 10; }
  else c->cyc += 14;
}

// ---- 0110
static inline void op_bcc(M68k *c, u16 op) {
  int cc = (op >> 8) & 15;
  u32 base = c->pc;
  s32 disp = (s8)op;
  bool w = disp == 0;
  if (w) disp = (s16)fw(c);
  if (cc == 1) {  // bsr
    push32(c, c->pc);
    c->pc = base + disp;
    c->cyc += 18;
    return;
  }
  if (cond(c, cc)) { c->pc = base + disp; c->cyc += 10; }
  else c->cyc += w ? 12 : 8;
}

// ---- 1000 / 1100 / 1001 / 1101 / 1011: arithmetic and logic
static inline int RW_LONG_EXTRA(int m, int r) { return (m == 0 || m == 1 || (m == 7 && r == 4)) ? 2 : 0; }
static inline void op_logic(M68k *c, u16 op) {  // or / and
  int sz = SZ2((op >> 6) & 3), m = OP_M, r = OP_R, dr = OP_RX;
  bool and_ = (op & 0xf000) == 0xc000;
  if (!(op & 0x100)) {
    u32 s = rea(c, m, r, sz);
    u32 v = and_ ? (DR(dr) & s) : (DR(dr) | s);
    setd(c, dr, sz, v);
    f_logic(c, v, sz);
    c->cyc += sz == 4 ? 6 + RW_LONG_EXTRA(m, r) : 4;
  } else {
    c->cyc += sz == 4 ? 12 : 8;
    Loc l = loc(c, m, r, sz);
    u32 d = lrd(c, &l, sz);
    u32 v = and_ ? (DR(dr) & d) : (DR(dr) | d);
    f_logic(c, v, sz);
    lwr(c, &l, sz, v);
  }
}
static inline void op_eor(M68k *c, u16 op) {
  int sz = SZ2((op >> 6) & 3), m = OP_M;
  c->cyc += m == 0 ? (sz == 4 ? 8 : 4) : (sz == 4 ? 12 : 8);
  Loc l = loc(c, m, OP_R, sz);
  u32 v = lrd(c, &l, sz) ^ DR(OP_RX);
  f_logic(c, v, sz);
  lwr(c, &l, sz, v);
}
static inline void op_addsub(M68k *c, u16 op) {
  int sz = SZ2((op >> 6) & 3), m = OP_M, r = OP_R, dr = OP_RX;
  bool add = (op & 0xf000) == 0xd000;
  if (!(op & 0x100)) {
    u32 s = rea(c, m, r, sz);
    u32 v = add ? f_add(c, s, DR(dr), sz, 0, false) : f_sub(c, s, DR(dr), sz, 0, 0);
    setd(c, dr, sz, v);
    c->cyc += sz == 4 ? 6 + RW_LONG_EXTRA(m, r) : 4;
  } else {
    c->cyc += sz == 4 ? 12 : 8;
    Loc l = loc(c, m, r, sz);
    u32 d = lrd(c, &l, sz);
    lwr(c, &l, sz, add ? f_add(c, DR(dr), d, sz, 0, false) : f_sub(c, DR(dr), d, sz, 0, 0));
  }
}
static inline void op_adda_suba(M68k *c, u16 op) {
  int sz = op & 0x100 ? 4 : 2, m = OP_M, r = OP_R;
  u32 s = SEXT(rea(c, m, r, sz), sz);
  bool add = (op & 0xf000) == 0xd000;
  AR(OP_RX) = add ? AR(OP_RX) + s : AR(OP_RX) - s;
  c->cyc += sz == 4 ? 6 + RW_LONG_EXTRA(m, r) : 8;
}
static inline void op_addx_subx(M68k *c, u16 op) {
  int sz = SZ2((op >> 6) & 3), rx = OP_RX, ry = OP_R;
  bool add = (op & 0xf000) == 0xd000;
  if (op & 8) {
    c->cyc += sz == 4 ? 30 : 18;
    u32 s = rdm(c, eaddr(c, 4, ry, sz), sz);
    u32 a = eaddr(c, 4, rx, sz);
    u32 d = rdm(c, a, sz);
    u32 v = add ? f_add(c, s, d, sz, XF(c), true) : f_sub(c, s, d, sz, XF(c), 1);
    if (sz == 4) { ww(c, a + 2, (u16)v); ww(c, a, v >> 16); } else wrm(c, a, sz, v);
  } else {
    c->cyc += sz == 4 ? 8 : 4;
    u32 v = add ? f_add(c, DR(ry), DR(rx), sz, XF(c), true) : f_sub(c, DR(ry), DR(rx), sz, XF(c), 1);
    setd(c, rx, sz, v);
  }
}
static inline void op_abcd_sbcd(M68k *c, u16 op) {
  int rx = OP_RX, ry = OP_R;
  bool add = (op & 0xf000) == 0xc000;
  if (op & 8) {
    c->cyc += 18;
    u8 s = rb(c, eaddr(c, 4, ry, 1));
    u32 a = eaddr(c, 4, rx, 1);
    u8 d = rb(c, a);
    wb(c, a, add ? bcd_add(c, s, d) : bcd_sub(c, s, d));
  } else {
    c->cyc += 6;
    u8 s = DR(ry), d = DR(rx);
    setd(c, rx, 1, add ? bcd_add(c, s, d) : bcd_sub(c, s, d));
  }
}
static inline void op_cmp(M68k *c, u16 op) {
  int sz = SZ2((op >> 6) & 3);
  u32 s = rea(c, OP_M, OP_R, sz);
  f_sub(c, s, DR(OP_RX), sz, 0, 2);
  c->cyc += sz == 4 ? 6 : 4;
}
static inline void op_cmpa(M68k *c, u16 op) {
  int sz = op & 0x100 ? 4 : 2;
  u32 s = SEXT(rea(c, OP_M, OP_R, sz), sz);
  f_sub(c, s, AR(OP_RX), 4, 0, 2);
  c->cyc += 6;
}
static inline void op_cmpm(M68k *c, u16 op) {
  int sz = SZ2((op >> 6) & 3);
  u32 s = rdm(c, eaddr(c, 3, OP_R, sz), sz);
  u32 d = rdm(c, eaddr(c, 3, OP_RX, sz), sz);
  f_sub(c, s, d, sz, 0, 2);
  c->cyc += sz == 4 ? 20 : 12;
}
static inline void op_mulu(M68k *c, u16 op) {
  u16 s = rea(c, OP_M, OP_R, 2);
  u32 v = (u32)s * (u16)DR(OP_RX);
  DR(OP_RX) = v;
  f_logic(c, v, 4);
  int n = 0; for (u16 t = s; t; t >>= 1) n += t & 1;
  c->cyc += 38 + 2 * n;
}
static inline void op_muls(M68k *c, u16 op) {
  u16 s = rea(c, OP_M, OP_R, 2);
  u32 v = (u32)((s32)(s16)s * (s32)(s16)DR(OP_RX));
  DR(OP_RX) = v;
  f_logic(c, v, 4);
  int n = 0; u32 t = (u32)s << 1; for (int i = 0; i < 16; i++) n += ((t >> i) & 3) == 1 || ((t >> i) & 3) == 2;
  c->cyc += 38 + 2 * n;
}
static inline void op_divu(M68k *c, u16 op) {
  u16 s = rea(c, OP_M, OP_R, 2);
  u32 d = DR(OP_RX);
  if (!s) {
    c->sr &= ~(SR_N | SR_Z | SR_V | SR_C);
    if ((s32)d < 0) c->sr |= SR_N;
    if (!(d >> 16)) c->sr |= SR_Z;
    exc(c, 5); c->cyc += 38; return;
  }
  if ((d >> 16) >= s) { c->sr = (c->sr & ~SR_C) | SR_V; c->cyc += 10; return; }
  u32 q = d / s, rm = d % s;
  DR(OP_RX) = rm << 16 | q;
  f_logic(c, q, 2);
  int mc = 38; u32 dv = d, hd = (u32)s << 16;
  for (int i = 0; i < 15; i++) {
    u32 t = dv; dv <<= 1;
    if ((s32)t < 0) dv -= hd;
    else { mc += 2; if (dv >= hd) { dv -= hd; mc--; } }
  }
  c->cyc += mc * 2;
}
static inline void op_divs(M68k *c, u16 op) {
  s16 s = (s16)rea(c, OP_M, OP_R, 2);
  s32 d = (s32)DR(OP_RX);
  if (!s) {
    c->sr &= ~(SR_N | SR_Z | SR_V | SR_C);
    if (d < 0) c->sr |= SR_N;
    if (!(d >> 16)) c->sr |= SR_Z;   // matches the 68000's leftover flags
    exc(c, 5); c->cyc += 38; return;
  }
  int mc = 6 + (d < 0);
  u32 ad = d < 0 ? 0u - (u32)d : (u32)d, as = s < 0 ? (u32)-s : (u32)s;
  if ((ad >> 16) >= as) { c->sr = (c->sr & ~SR_C) | SR_V; c->cyc += (mc + 2) * 2; return; }
  u32 aq = ad / as;
  mc += 55;
  if (s >= 0) mc += d >= 0 ? -1 : 1;
  for (int i = 0; i < 15; i++) { if ((s16)aq >= 0) mc++; aq <<= 1; }
  c->cyc += mc * 2;
  s64 q = (s64)d / s, rm = (s64)d % s;
  if (q < -32768 || q > 32767) { c->sr = (c->sr & ~SR_C) | SR_V; return; }
  DR(OP_RX) = (u32)(u16)rm << 16 | (u16)q;
  f_logic(c, (u32)q, 2);
}
static inline void op_exg(M68k *c, u16 op) {
  int rx = OP_RX, ry = OP_R, mode = (op >> 3) & 0x1f;
  u32 *a, *b;
  if (mode == 8) { a = &DR(rx); b = &DR(ry); }
  else if (mode == 9) { a = &AR(rx); b = &AR(ry); }
  else { a = &DR(rx); b = &AR(ry); }
  u32 t = *a; *a = *b; *b = t;
  c->cyc += 6;
}

// ---- 1110: shifts and rotates
static inline u32 shift(M68k *c, int type, bool left, u32 v, int cnt, int sz) {
  u32 m = SZMASK(sz), sb = SZMSB(sz);
  int bits = sz * 8;
  v &= m;
  u16 f = c->sr & ~(SR_N | SR_Z | SR_V | SR_C);
  bool x = c->sr & SR_X;
  if (cnt == 0) {
    if (type == 2 && x) f |= SR_C;
    if (!v) f |= SR_Z;
    if (v & sb) f |= SR_N;
    c->sr = f;
    return v;
  }
  bool carry = false, ovf = false;
  switch (type) {
  case 0:   // as
    if (left) {
      for (int i = 0; i < cnt; i++) { carry = v & sb; u32 nv = (v << 1) & m; if ((nv ^ v) & sb) ovf = true; v = nv; }
    } else {
      for (int i = 0; i < cnt; i++) { carry = v & 1; v = (v >> 1) | (v & sb); }
    }
    x = carry;
    break;
  case 1:   // ls
    for (int i = 0; i < cnt; i++) {
      if (left) { carry = v & sb; v = (v << 1) & m; } else { carry = v & 1; v >>= 1; }
    }
    x = carry;
    break;
  case 2:   // rox
    for (int i = 0; i < cnt; i++) {
      if (left) { carry = v & sb; v = ((v << 1) | x) & m; } else { carry = v & 1; v = (v >> 1) | (x ? sb : 0); }
      x = carry;
    }
    carry = x;
    break;
  default:  // ro
    for (int i = 0; i < cnt; i++) {
      if (left) { carry = v & sb; v = ((v << 1) | carry) & m; } else { carry = v & 1; v = (v >> 1) | (carry ? sb : 0); }
    }
    break;
  }
  (void)bits;
  if (type != 3) f = x ? (f | SR_X) : (f & ~SR_X);
  if (carry) f |= SR_C;
  if (ovf) f |= SR_V;
  if (!v) f |= SR_Z;
  if (v & sb) f |= SR_N;
  c->sr = f;
  return v;
}
static inline void op_shift_reg(M68k *c, u16 op) {
  int sz = SZ2((op >> 6) & 3), type = (op >> 3) & 3, r = OP_R;
  bool left = op & 0x100;
  int cnt = (op & 0x20) ? (DR(OP_RX) & 63) : (((op >> 9) & 7) ? ((op >> 9) & 7) : 8);
  setd(c, r, sz, shift(c, type, left, DR(r), cnt, sz));
  c->cyc += (sz == 4 ? 8 : 6) + 2 * cnt;
}
static inline void op_shift_mem(M68k *c, u16 op) {
  int type = (op >> 9) & 3;
  bool left = op & 0x100;
  c->cyc += 8;
  Loc l = loc(c, OP_M, OP_R, 2);
  u32 v = lrd(c, &l, 2);
  lwr(c, &l, 2, shift(c, type, left, v, 1, 2));
}
