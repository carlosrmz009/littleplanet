#include "m68k_ops.h"

typedef void (*Handler)(M68k *c, u16 op);
static Handler table[65536];

// EA validity classes
enum { EA_DN = 1, EA_AN = 2, EA_IND = 4, EA_PI = 8, EA_PD = 16, EA_D16 = 32, EA_IDX = 64, EA_AW = 128, EA_AL = 256,
       EA_PC = 512, EA_PCX = 1024, EA_IMM = 2048 };
#define EA_ALL 0xfff
#define EA_DATA (EA_ALL & ~EA_AN)
#define EA_MEM (EA_ALL & ~(EA_DN | EA_AN))
#define EA_CTRL (EA_IND | EA_D16 | EA_IDX | EA_AW | EA_AL | EA_PC | EA_PCX)
#define EA_ALT (EA_DN | EA_AN | EA_IND | EA_PI | EA_PD | EA_D16 | EA_IDX | EA_AW | EA_AL)
#define EA_DALT (EA_ALT & ~EA_AN)
#define EA_MALT (EA_ALT & ~(EA_DN | EA_AN))
#define EA_CALT (EA_CTRL & EA_ALT)

static bool ea_ok(u16 op, int cls) {
  int m = (op >> 3) & 7, r = op & 7;
  int bit = m < 7 ? 1 << m : r < 5 ? 1 << (7 + r) : 0;
  return bit & cls;
}

static void set(u16 op, Handler h) { if (!table[op]) table[op] = h; }

void m68k_init_tables(void) {
  static bool done;
  if (done) return;
  done = true;
  for (u32 i = 0; i < 65536; i++) {
    u16 op = i;
    int hi = op >> 12, sz = (op >> 6) & 3, m = (op >> 3) & 7;
    switch (hi) {
    case 0:
      if ((op & 0xffbf) == 0x003c || (op & 0xffbf) == 0x023c || (op & 0xffbf) == 0x0a3c) { set(op, op_immsr); break; }
      if ((op & 0xf138) == 0x0108) { set(op, op_movep); break; }
      if (op & 0x100) {   // dynamic bit op
        int k = (op >> 6) & 3;
        if (ea_ok(op, k == 0 ? EA_DATA : EA_DALT)) set(op, op_bit);
        break;
      }
      if ((op & 0xff00) == 0x0800) {
        int k = (op >> 6) & 3;
        if (ea_ok(op, k == 0 ? (EA_DATA & ~EA_IMM) : EA_DALT)) set(op, op_bit);
        break;
      }
      {
        int k = (op >> 9) & 7;
        if (sz == 3 || k == 7 || k == 4) break;
        if (k == 6 ? ea_ok(op, EA_DATA & ~EA_IMM) : ea_ok(op, EA_DALT)) set(op, op_immop);
      }
      break;
    case 1: case 2: case 3: {
      int dm = (op >> 6) & 7, dr = (op >> 9) & 7;
      int dbit = dm < 7 ? 1 << dm : dr < 2 ? 1 << (7 + dr) : 0;
      if (!ea_ok(op, EA_ALL)) break;
      if (hi == 1 && m == 1) break;
      if (dm == 1 && hi == 1) break;
      if (!(dbit & EA_ALT)) break;
      set(op, op_move);
      break;
    }
    case 4:
      if (op == 0x4afc) { set(op, op_illegal); break; }
      if (op == 0x4e70) { set(op, op_reset); break; }
      if (op == 0x4e71) { set(op, op_nop); break; }
      if (op == 0x4e72) { set(op, op_stop); break; }
      if (op == 0x4e73) { set(op, op_rte); break; }
      if (op == 0x4e75) { set(op, op_rts); break; }
      if (op == 0x4e76) { set(op, op_trapv); break; }
      if (op == 0x4e77) { set(op, op_rtr); break; }
      if ((op & 0xfff0) == 0x4e40) { set(op, op_trap); break; }
      if ((op & 0xfff8) == 0x4e50) { set(op, op_link); break; }
      if ((op & 0xfff8) == 0x4e58) { set(op, op_unlk); break; }
      if ((op & 0xfff0) == 0x4e60) { set(op, op_move_usp); break; }
      if ((op & 0xffc0) == 0x4e80) { if (ea_ok(op, EA_CTRL)) set(op, op_jsr); break; }
      if ((op & 0xffc0) == 0x4ec0) { if (ea_ok(op, EA_CTRL)) set(op, op_jmp); break; }
      if ((op & 0xf1c0) == 0x41c0) { if (ea_ok(op, EA_CTRL)) set(op, op_lea); break; }
      if ((op & 0xf1c0) == 0x4180) { if (ea_ok(op, EA_DATA)) set(op, op_chk); break; }
      if ((op & 0xffc0) == 0x40c0) { if (ea_ok(op, EA_DALT)) set(op, op_move_from_sr); break; }
      if ((op & 0xffc0) == 0x44c0) { if (ea_ok(op, EA_DATA)) set(op, op_move_to_ccr); break; }
      if ((op & 0xffc0) == 0x46c0) { if (ea_ok(op, EA_DATA)) set(op, op_move_to_sr); break; }
      if ((op & 0xf900) == 0x4000 && sz != 3) { if (ea_ok(op, EA_DALT)) set(op, op_negx_neg_not_clr); break; }
      if ((op & 0xffc0) == 0x4800) { if (ea_ok(op, EA_DALT)) set(op, op_nbcd); break; }
      if ((op & 0xfff8) == 0x4840) { set(op, op_swap); break; }
      if ((op & 0xffc0) == 0x4840) { if (ea_ok(op, EA_CTRL)) set(op, op_pea); break; }
      if ((op & 0xffb8) == 0x4880) { set(op, op_ext); break; }
      if ((op & 0xff80) == 0x4880) { if (ea_ok(op, EA_CALT | EA_PD)) set(op, op_movem); break; }
      if ((op & 0xff80) == 0x4c80) { if (ea_ok(op, EA_CTRL | EA_PI)) set(op, op_movem); break; }
      if ((op & 0xffc0) == 0x4ac0) { if (ea_ok(op, EA_DALT)) set(op, op_tas); break; }
      if ((op & 0xff00) == 0x4a00) { if (ea_ok(op, EA_DALT)) set(op, op_tst); break; }
      break;
    case 5:
      if (sz == 3) {
        if (m == 1) set(op, op_dbcc);
        else if (ea_ok(op, EA_DALT)) set(op, op_scc);
      } else if (ea_ok(op, EA_ALT) && !(m == 1 && sz == 0)) set(op, op_addq_subq);
      break;
    case 6: set(op, op_bcc); break;
    case 7: if (!(op & 0x100)) set(op, op_moveq); break;
    case 8: case 12: {
      int om = (op >> 6) & 7;
      if (om == 3 || om == 7) {
        if (ea_ok(op, EA_DATA)) set(op, hi == 8 ? (om == 3 ? op_divu : op_divs) : (om == 3 ? op_mulu : op_muls));
        break;
      }
      if (om == 4 && m < 2) { set(op, op_abcd_sbcd); break; }
      if (hi == 12 && (om == 5 || om == 6) && m < 2) {
        int mode = (op >> 3) & 0x1f;
        if (mode == 8 || mode == 9 || mode == 0x11) set(op, op_exg);
        break;
      }
      if (om < 3) { if (ea_ok(op, EA_DATA)) set(op, op_logic); }
      else if (ea_ok(op, EA_MALT)) set(op, op_logic);
      break;
    }
    case 9: case 13: {
      int om = (op >> 6) & 7;
      if (om == 3 || om == 7) { if (ea_ok(op, EA_ALL)) set(op, op_adda_suba); break; }
      if (om >= 4 && m < 2) { set(op, op_addx_subx); break; }
      if (om < 3) { if (ea_ok(op, EA_ALL) && !(om == 0 && m == 1)) set(op, op_addsub); }
      else if (ea_ok(op, EA_MALT)) set(op, op_addsub);
      break;
    }
    case 10: set(op, op_linea); break;
    case 11: {
      int om = (op >> 6) & 7;
      if (om == 3 || om == 7) { if (ea_ok(op, EA_ALL)) set(op, op_cmpa); break; }
      if (om < 3) { if (ea_ok(op, EA_ALL) && !(om == 0 && m == 1)) set(op, op_cmp); break; }
      if (m == 1) { set(op, op_cmpm); break; }
      if (ea_ok(op, EA_DALT)) set(op, op_eor);
      break;
    }
    case 14:
      if (sz == 3) { if (!(op & 0x800) && ea_ok(op, EA_MALT)) set(op, op_shift_mem); }
      else set(op, op_shift_reg);
      break;
    case 15: set(op, op_linef); break;
    }
    if (!table[op]) table[op] = op_illegal;
  }
}

void m68k_set_sr(M68k *c, u16 v) {
  v &= 0xa71f;
  if ((v ^ c->sr) & SR_S) { u32 t = AR(7); AR(7) = c->osp; c->osp = t; }
  c->sr = v;
}

void m68k_exception(M68k *c, int vec) {
  u16 old = c->sr;
  m68k_set_sr(c, (c->sr | SR_S) & ~SR_T);
  push32(c, c->pc);
  push16(c, old);
  c->pc = rl(c, vec * 4);
  c->stopped = 0;
}

void m68k_reset(M68k *c) {
  m68k_init_tables();
  c->sr = SR_S | 0x0700;
  c->stopped = c->halted = 0;
  AR(7) = rl(c, 0);
  c->pc = rl(c, 4);
  c->cyc += 40;
}

static void interrupt(M68k *c, int level) {
  int vec = c->iack ? c->iack(level) : -1;
  if (vec < 0) vec = 24 + level;
  u16 old = c->sr;
  m68k_set_sr(c, ((c->sr | SR_S) & ~SR_T & ~0x700) | level << 8);
  push32(c, c->pc);
  push16(c, old);
  c->pc = rl(c, vec * 4);
  c->stopped = 0;
  c->cyc += 44;
}

void m68k_step(M68k *c) {
  int lvl = c->ipl;
  if (lvl && (lvl == 7 || lvl > ((c->sr >> 8) & 7))) { interrupt(c, lvl); return; }
  if (c->stopped || c->halted) { c->cyc += 4; return; }
  bool tr = c->sr & SR_T;
  if (c->cov) c->cov(c);
  c->ipc = c->pc;
  u16 op = fw(c);
  c->ir = op;
  table[op](c, op);
  if (tr) { m68k_exception(c, 9); c->cyc += 34; }
}

int m68k_run(M68k *c, int cycles) {
  s32 start = c->cyc;
  while (c->cyc - start < cycles) m68k_step(c);
  return c->cyc - start;
}
