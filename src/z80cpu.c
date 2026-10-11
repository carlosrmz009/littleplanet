#include "z80cpu.h"

enum { FC = 1, FN = 2, FP = 4, FX = 8, FH = 16, FY = 32, FZ = 64, FS = 128 };

static u8 sz53[256], sz53p[256], par[256];
static bool tables;

static void init_tables(void) {
  for (int i = 0; i < 256; i++) {
    int p = 0; for (int b = 0; b < 8; b++) p ^= (i >> b) & 1;
    par[i] = p ? 0 : FP;
    sz53[i] = (i & (FS | FX | FY)) | (i ? 0 : FZ);
    sz53p[i] = sz53[i] | par[i];
  }
  tables = true;
}

void z80cpu_reset(Z80 *z) {
  if (!tables) init_tables();
  z->pc = 0; z->i = z->r = 0; z->im = 0; z->iff1 = z->iff2 = 0;
  z->af = z->sp = 0xffff;
  z->halted = 0; z->ei_delay = 0; z->q = 0; z->wz = 0;
}

#define RD(a) z->read((u16)(a))
#define WR(a, v) z->write((u16)(a), (u8)(v))
#define SETF(v) do { z->f = (u8)(v); z->q = z->f; } while (0)

static inline u8 fetch(Z80 *z) { return RD(z->pc++); }
static inline u16 fetch16(Z80 *z) { u8 l = fetch(z); return l | fetch(z) << 8; }
static inline void inc_r(Z80 *z) { z->r = (z->r & 0x80) | ((z->r + 1) & 0x7f); }
static inline void push(Z80 *z, u16 v) { WR(--z->sp, v >> 8); WR(--z->sp, v); }
static inline u16 pop(Z80 *z) { u8 l = RD(z->sp++); return l | RD(z->sp++) << 8; }

// ---- ALU
static inline void add8(Z80 *z, u8 v, int c) {
  int r = z->a + v + c;
  u8 f = (r & 0xff ? 0 : FZ) | (r & (FS | FX | FY)) | ((z->a ^ v ^ r) & FH) | (r >> 8 & FC);
  if (((z->a ^ ~v) & (z->a ^ r)) & 0x80) f |= FP;
  z->a = (u8)r; SETF(f);
}
static inline void sub8(Z80 *z, u8 v, int c, bool store) {
  int r = z->a - v - c;
  u8 f = FN | ((r & 0xff) ? 0 : FZ) | (r & FS) | ((z->a ^ v ^ r) & FH) | ((r >> 8) & FC);
  if (((z->a ^ v) & (z->a ^ r)) & 0x80) f |= FP;
  if (store) { f |= r & (FX | FY); z->a = (u8)r; } else f |= v & (FX | FY);
  SETF(f);
}
static inline void and8(Z80 *z, u8 v) { z->a &= v; SETF(sz53p[z->a] | FH); }
static inline void xor8(Z80 *z, u8 v) { z->a ^= v; SETF(sz53p[z->a]); }
static inline void or8(Z80 *z, u8 v) { z->a |= v; SETF(sz53p[z->a]); }
static inline void alu(Z80 *z, int op, u8 v) {
  switch (op) {
  case 0: add8(z, v, 0); break;
  case 1: add8(z, v, z->f & FC); break;
  case 2: sub8(z, v, 0, true); break;
  case 3: sub8(z, v, z->f & FC, true); break;
  case 4: and8(z, v); break;
  case 5: xor8(z, v); break;
  case 6: or8(z, v); break;
  default: sub8(z, v, 0, false); break;
  }
}
static inline u8 inc8(Z80 *z, u8 v) {
  u8 r = v + 1;
  SETF((z->f & FC) | sz53[r] | ((r & 0x0f) ? 0 : FH) | (r == 0x80 ? FP : 0));
  return r;
}
static inline u8 dec8(Z80 *z, u8 v) {
  u8 r = v - 1;
  SETF((z->f & FC) | FN | sz53[r] | ((v & 0x0f) ? 0 : FH) | (v == 0x80 ? FP : 0));
  return r;
}
static inline u16 add16(Z80 *z, u16 a, u16 b) {
  u32 r = a + b;
  z->wz = a + 1;
  SETF((z->f & (FS | FZ | FP)) | ((r >> 8) & (FX | FY)) | (((a ^ b ^ r) >> 8) & FH) | (r >> 16));
  return (u16)r;
}
static inline void adc16(Z80 *z, u16 b) {
  u16 a = z->hl;
  u32 r = a + b + (z->f & FC);
  u8 f = ((r >> 8) & (FS | FX | FY)) | (((a ^ b ^ r) >> 8) & FH) | (r >> 16 & FC);
  if (!(r & 0xffff)) f |= FZ;
  if (((a ^ ~b) & (a ^ r)) & 0x8000) f |= FP;
  z->wz = a + 1; z->hl = (u16)r; SETF(f);
}
static inline void sbc16(Z80 *z, u16 b) {
  u16 a = z->hl;
  u32 r = a - b - (z->f & FC);
  u8 f = FN | ((r >> 8) & (FS | FX | FY)) | (((a ^ b ^ r) >> 8) & FH) | ((r >> 16) & FC);
  if (!(r & 0xffff)) f |= FZ;
  if (((a ^ b) & (a ^ r)) & 0x8000) f |= FP;
  z->wz = a + 1; z->hl = (u16)r; SETF(f);
}
static inline u8 rot(Z80 *z, int op, u8 v) {
  u8 c, r;
  switch (op) {
  case 0: c = v >> 7; r = v << 1 | c; break;                 // rlc
  case 1: c = v & 1; r = v >> 1 | c << 7; break;             // rrc
  case 2: c = v >> 7; r = v << 1 | (z->f & FC); break;       // rl
  case 3: c = v & 1; r = v >> 1 | (z->f & FC) << 7; break;   // rr
  case 4: c = v >> 7; r = v << 1; break;                      // sla
  case 5: c = v & 1; r = (v >> 1) | (v & 0x80); break;        // sra
  case 6: c = v >> 7; r = v << 1 | 1; break;                  // sll
  default: c = v & 1; r = v >> 1; break;                      // srl
  }
  SETF(sz53p[r] | c);
  return r;
}
static inline bool cc(Z80 *z, int n) {
  switch (n) {
  case 0: return !(z->f & FZ); case 1: return z->f & FZ;
  case 2: return !(z->f & FC); case 3: return z->f & FC;
  case 4: return !(z->f & FP); case 5: return z->f & FP;
  case 6: return !(z->f & FS); default: return z->f & FS;
  }
}

// register by index with optional IX/IY substitution for H/L
static inline u8 *reg8(Z80 *z, int n, int pfx) {
  switch (n) {
  case 0: return &z->b; case 1: return &z->c; case 2: return &z->d; case 3: return &z->e;
  case 4: return pfx == 1 ? &z->ixh : pfx == 2 ? &z->iyh : &z->h;
  case 5: return pfx == 1 ? &z->ixl : pfx == 2 ? &z->iyl : &z->l;
  default: return &z->a;
  }
}
static inline u16 *rp(Z80 *z, int n, int pfx) {
  switch (n) {
  case 0: return &z->bc; case 1: return &z->de;
  case 2: return pfx == 1 ? &z->ix : pfx == 2 ? &z->iy : &z->hl;
  default: return &z->sp;
  }
}

static int op_cb(Z80 *z, int pfx, u16 addr) {
  // pfx: 0 plain CB, 1/2 DDCB/FDCB with addr = IX/IY+d
  u8 op = pfx ? fetch(z) : fetch(z);
  if (!pfx) inc_r(z);
  int x = op >> 6, y = (op >> 3) & 7, r = op & 7;
  u8 v;
  if (pfx) v = RD(addr);
  else if (r == 6) v = RD(z->hl);
  else v = *reg8(z, r, 0);
  u8 res = v;
  switch (x) {
  case 0: res = rot(z, y, v); break;
  case 1: {
    u8 f = (z->f & FC) | FH | (v & (1 << y) ? 0 : FZ | FP);
    if (y == 7 && (v & 0x80)) f |= FS;
    if (pfx || r == 6) f |= (z->wz >> 8) & (FX | FY);
    else f |= v & (FX | FY);
    SETF(f);
    if (pfx) return 20;
    return r == 6 ? 12 : 8;
  }
  case 2: res = v & ~(1 << y); break;
  default: res = v | (1 << y); break;
  }
  if (pfx) { WR(addr, res); if (r != 6) *reg8(z, r, 0) = res; return 23; }
  if (r == 6) { WR(z->hl, res); return 15; }
  *reg8(z, r, 0) = res;
  return 8;
}

static int block(Z80 *z, u8 op) {
  int t = 16;
  switch (op) {
  case 0xa0: case 0xa8: case 0xb0: case 0xb8: {   // LDI LDD LDIR LDDR
    u8 v = RD(z->hl); WR(z->de, v);
    int d = (op & 8) ? -1 : 1;
    z->hl += d; z->de += d; z->bc--;
    u8 n = v + z->a;
    u8 f = (z->f & (FS | FZ | FC)) | (z->bc ? FP : 0) | (n & FX) | ((n << 4) & FY);
    if ((op & 0x10) && z->bc) {
      z->pc -= 2; t = 21; z->wz = z->pc + 1;
      f = (f & ~(FX | FY)) | ((z->pc >> 8) & (FX | FY));
    }
    SETF(f);
    return t;
  }
  case 0xa1: case 0xa9: case 0xb1: case 0xb9: {   // CPI CPD CPIR CPDR
    u8 v = RD(z->hl);
    int d = (op & 8) ? -1 : 1;
    u8 r = z->a - v;
    u8 h = (z->a ^ v ^ r) & FH;
    u8 n = r - (h ? 1 : 0);
    z->hl += d; z->bc--; z->wz += d;
    u8 f = (z->f & FC) | FN | (r & FS) | (r ? 0 : FZ) | h | (z->bc ? FP : 0) | (n & FX) | ((n << 4) & FY);
    if ((op & 0x10) && z->bc && r) {
      z->pc -= 2; t = 21; z->wz = z->pc + 1;
      f = (f & ~(FX | FY)) | ((z->pc >> 8) & (FX | FY));
    }
    SETF(f);
    return t;
  }
  case 0xa2: case 0xaa: case 0xb2: case 0xba: {   // INI IND INIR INDR
    int d = (op & 8) ? -1 : 1;
    u8 v = z->in(z->bc);
    z->wz = z->bc + d;
    WR(z->hl, v);
    z->b--; z->hl += d;
    u16 k = v + (u8)(z->c + d);
    u8 f = sz53[z->b] | ((v >> 6) & FN) | (k > 255 ? FH | FC : 0) | par[(k & 7) ^ z->b];
    if ((op & 0x10) && z->b) {
      z->pc -= 2; t = 21; z->wz = z->pc + 1;
      f = (f & ~(FX | FY)) | ((z->pc >> 8) & (FX | FY));
      if (f & FC) {
        if (v & 0x80) { f ^= (par[(z->b - 1) & 7] ^ FP) & FP; f = (f & ~FH) | (((z->b & 0x0f) == 0x00) ? FH : 0); }
        else { f ^= (par[(z->b + 1) & 7] ^ FP) & FP; f = (f & ~FH) | (((z->b & 0x0f) == 0x0f) ? FH : 0); }
      } else f ^= (par[z->b & 7] ^ FP) & FP;
    }
    SETF(f);
    return t;
  }
  default: {   // OUTI OUTD OTIR OTDR
    int d = (op & 8) ? -1 : 1;
    u8 v = RD(z->hl);
    z->b--;
    z->wz = z->bc + d;
    z->out(z->bc, v);
    z->hl += d;
    u16 k = v + z->l;
    u8 f = sz53[z->b] | ((v >> 6) & FN) | (k > 255 ? FH | FC : 0) | par[(k & 7) ^ z->b];
    if ((op & 0x10) && z->b) {
      z->pc -= 2; t = 21; z->wz = z->pc + 1;
      f = (f & ~(FX | FY)) | ((z->pc >> 8) & (FX | FY));
      if (f & FC) {
        if (v & 0x80) { f ^= (par[(z->b - 1) & 7] ^ FP) & FP; f = (f & ~FH) | (((z->b & 0x0f) == 0x00) ? FH : 0); }
        else { f ^= (par[(z->b + 1) & 7] ^ FP) & FP; f = (f & ~FH) | (((z->b & 0x0f) == 0x0f) ? FH : 0); }
      } else f ^= (par[z->b & 7] ^ FP) & FP;
    }
    SETF(f);
    return t;
  }
  }
}

static int op_ed(Z80 *z) {
  u8 op = fetch(z);
  inc_r(z);
  int x = op >> 6, y = (op >> 3) & 7, zz = op & 7, p = y >> 1, qq = y & 1;
  if (x == 2 && zz < 4 && y >= 4) return block(z, op);
  if (x != 1) return 8;   // ED NOP
  switch (zz) {
  case 0: {   // IN r,(C)
    u8 v = z->in(z->bc);
    z->wz = z->bc + 1;
    if (y != 6) *reg8(z, y, 0) = v;
    SETF((z->f & FC) | sz53p[v]);
    return 12;
  }
  case 1: z->out(z->bc, y == 6 ? 0 : *reg8(z, y, 0)); z->wz = z->bc + 1; return 12;
  case 2: if (qq) adc16(z, *rp(z, p, 0)); else sbc16(z, *rp(z, p, 0)); return 15;
  case 3: {
    u16 nn = fetch16(z);
    z->wz = nn + 1;
    if (qq) { u8 l = RD(nn); *rp(z, p, 0) = l | RD(nn + 1) << 8; }
    else { u16 v = *rp(z, p, 0); WR(nn, v); WR(nn + 1, v >> 8); }
    return 20;
  }
  case 4: { u8 a = z->a; z->a = 0; sub8(z, a, 0, true); return 8; }   // NEG
  case 5:   // RETN / RETI
    z->pc = pop(z); z->wz = z->pc; z->iff1 = z->iff2;
    return 14;
  case 6: z->im = (y & 3) == 0 ? 0 : (y & 3) == 1 ? 0 : (y & 3) == 2 ? 1 : 2; return 8;
  default:
    switch (y) {
    case 0: z->i = z->a; return 9;
    case 1: z->r = z->a; return 9;
    case 2: z->a = z->i; SETF((z->f & FC) | sz53[z->a] | (z->iff2 ? FP : 0)); z->p = 1; return 9;
    case 3: z->a = z->r; SETF((z->f & FC) | sz53[z->a] | (z->iff2 ? FP : 0)); z->p = 1; return 9;
    case 4: {   // RRD
      u8 v = RD(z->hl);
      WR(z->hl, (z->a << 4) | (v >> 4));
      z->a = (z->a & 0xf0) | (v & 0x0f);
      z->wz = z->hl + 1;
      SETF((z->f & FC) | sz53p[z->a]);
      return 18;
    }
    case 5: {   // RLD
      u8 v = RD(z->hl);
      WR(z->hl, (v << 4) | (z->a & 0x0f));
      z->a = (z->a & 0xf0) | (v >> 4);
      z->wz = z->hl + 1;
      SETF((z->f & FC) | sz53p[z->a]);
      return 18;
    }
    default: return 8;
    }
  }
}

static int exec(Z80 *z, u8 op, int pfx) {
  // pfx: 0 none, 1 DD (IX), 2 FD (IY)
  int x = op >> 6, y = (op >> 3) & 7, zz = op & 7, p = y >> 1, qq = y & 1;
  u16 *hlx = pfx == 1 ? &z->ix : pfx == 2 ? &z->iy : &z->hl;
  // (HL) or (IX+d)
  #define MEMADDR(dst) do { if (pfx) { dst = *hlx + (s8)fetch(z); z->wz = dst; } else dst = z->hl; } while (0)
  switch (x) {
  case 0:
    switch (zz) {
    case 0:
      switch (y) {
      case 0: return 4;
      case 1: { u16 t = z->af; z->af = z->af_; z->af_ = t; return 4; }
      case 2: { s8 d = (s8)fetch(z); if (--z->b) { z->pc += d; z->wz = z->pc; return 13; } return 8; }
      case 3: { s8 d = (s8)fetch(z); z->pc += d; z->wz = z->pc; return 12; }
      default: { s8 d = (s8)fetch(z); if (cc(z, y - 4)) { z->pc += d; z->wz = z->pc; return 12; } return 7; }
      }
    case 1:
      if (!qq) { u16 v = fetch16(z); if (p == 2) *hlx = v; else *rp(z, p, 0) = v; return 10; }
      *hlx = add16(z, *hlx, p == 2 ? *hlx : *rp(z, p, 0));
      return 11;
    case 2:
      switch (y) {
      case 0: WR(z->bc, z->a); z->wz = ((z->bc + 1) & 0xff) | z->a << 8; return 7;
      case 1: z->a = RD(z->bc); z->wz = z->bc + 1; return 7;
      case 2: WR(z->de, z->a); z->wz = ((z->de + 1) & 0xff) | z->a << 8; return 7;
      case 3: z->a = RD(z->de); z->wz = z->de + 1; return 7;
      case 4: { u16 nn = fetch16(z); WR(nn, *hlx); WR(nn + 1, *hlx >> 8); z->wz = nn + 1; return 16; }
      case 5: { u16 nn = fetch16(z); u8 l = RD(nn); *hlx = l | RD(nn + 1) << 8; z->wz = nn + 1; return 16; }
      case 6: { u16 nn = fetch16(z); WR(nn, z->a); z->wz = ((nn + 1) & 0xff) | z->a << 8; return 13; }
      default: { u16 nn = fetch16(z); z->a = RD(nn); z->wz = nn + 1; return 13; }
      }
    case 3:
      if (p == 2) { if (qq) (*hlx)--; else (*hlx)++; }
      else if (qq) (*rp(z, p, 0))--; else (*rp(z, p, 0))++;
      return 6;
    case 4: case 5:
      if (y == 6) {
        u16 a; MEMADDR(a);
        u8 v = RD(a);
        WR(a, zz == 4 ? inc8(z, v) : dec8(z, v));
        return pfx ? 19 : 11;
      } else {
        u8 *r = reg8(z, y, pfx);
        *r = zz == 4 ? inc8(z, *r) : dec8(z, *r);
        return 4;
      }
    case 6:
      if (y == 6) { u16 a; MEMADDR(a); u8 n = fetch(z); WR(a, n); return pfx ? 15 : 10; }
      *reg8(z, y, pfx) = fetch(z);
      return 7;
    default:
      switch (y) {
      case 0: { u8 c = z->a >> 7; z->a = z->a << 1 | c; SETF((z->f & (FS | FZ | FP)) | (z->a & (FX | FY)) | c); return 4; }
      case 1: { u8 c = z->a & 1; z->a = z->a >> 1 | c << 7; SETF((z->f & (FS | FZ | FP)) | (z->a & (FX | FY)) | c); return 4; }
      case 2: { u8 c = z->a >> 7; z->a = z->a << 1 | (z->f & FC); SETF((z->f & (FS | FZ | FP)) | (z->a & (FX | FY)) | c); return 4; }
      case 3: { u8 c = z->a & 1; z->a = z->a >> 1 | (z->f & FC) << 7; SETF((z->f & (FS | FZ | FP)) | (z->a & (FX | FY)) | c); return 4; }
      case 4: {   // DAA
        u8 a = z->a, corr = 0, c = z->f & FC;
        if ((z->f & FH) || (a & 0x0f) > 9) corr |= 0x06;
        if (c || a > 0x99) { corr |= 0x60; c = FC; }
        u8 r = (z->f & FN) ? a - corr : a + corr;
        z->a = r;
        SETF(sz53p[r] | c | (z->f & FN) | ((a ^ r) & FH));
        return 4;
      }
      case 5: z->a = ~z->a; SETF((z->f & (FS | FZ | FP | FC)) | FH | FN | (z->a & (FX | FY))); return 4;
      case 6: SETF((z->f & (FS | FZ | FP)) | FC | (((z->last_q ^ z->f) | z->a) & (FX | FY))); return 4;
      default: SETF(((z->f & (FS | FZ | FP | FC)) | ((z->f & FC) ? FH : 0) | (((z->last_q ^ z->f) | z->a) & (FX | FY))) ^ FC); return 4;
      }
    }
  case 1:
    if (y == 6 && zz == 6) { z->halted = 1; return 4; }
    if (y == 6) { u16 a; MEMADDR(a); WR(a, *reg8(z, zz, 0)); return pfx ? 15 : 7; }
    if (zz == 6) { u16 a; MEMADDR(a); *reg8(z, y, 0) = RD(a); return pfx ? 15 : 7; }
    *reg8(z, y, pfx) = *reg8(z, zz, pfx);
    return 4;
  case 2:
    if (zz == 6) { u16 a; MEMADDR(a); alu(z, y, RD(a)); return pfx ? 15 : 7; }
    alu(z, y, *reg8(z, zz, pfx));
    return 4;
  default:
    switch (zz) {
    case 0: if (cc(z, y)) { z->pc = pop(z); z->wz = z->pc; return 11; } return 5;
    case 1:
      if (!qq) { u16 v = pop(z); if (p == 2) *hlx = v; else if (p == 3) z->af = v; else *rp(z, p, 0) = v; return 10; }
      switch (p) {
      case 0: z->pc = pop(z); z->wz = z->pc; return 10;
      case 1: { u16 t; t = z->bc; z->bc = z->bc_; z->bc_ = t; t = z->de; z->de = z->de_; z->de_ = t; t = z->hl; z->hl = z->hl_; z->hl_ = t; return 4; }
      case 2: z->pc = *hlx; return 4;
      default: z->sp = *hlx; return 6;
      }
    case 2: { u16 nn = fetch16(z); z->wz = nn; if (cc(z, y)) z->pc = nn; return 10; }
    case 3:
      switch (y) {
      case 0: { u16 nn = fetch16(z); z->pc = nn; z->wz = nn; return 10; }
      case 1: if (pfx) { u16 a = *hlx + (s8)fetch(z); z->wz = a; return op_cb(z, pfx, a) ; } return op_cb(z, 0, 0);
      case 2: { u8 n = fetch(z); z->out(n | z->a << 8, z->a); z->wz = ((n + 1) & 0xff) | z->a << 8; return 11; }
      case 3: { u8 n = fetch(z); u16 port = n | z->a << 8; z->a = z->in(port); z->wz = port + 1; return 11; }
      case 4: { u8 l = RD(z->sp), h = RD(z->sp + 1); WR(z->sp + 1, *hlx >> 8); WR(z->sp, *hlx); *hlx = l | h << 8; z->wz = *hlx; return 19; }
      case 5: { u16 t = z->de; z->de = z->hl; z->hl = t; return 4; }
      case 6: z->iff1 = z->iff2 = 0; return 4;
      default: z->iff1 = z->iff2 = 1; z->ei_delay = 1; return 4;
      }
    case 4: { u16 nn = fetch16(z); z->wz = nn; if (cc(z, y)) { push(z, z->pc); z->pc = nn; return 17; } return 10; }
    case 5:
      if (!qq) { u16 v = p == 2 ? *hlx : p == 3 ? z->af : *rp(z, p, 0); push(z, v); return 11; }
      if (p == 0) { u16 nn = fetch16(z); push(z, z->pc); z->pc = nn; z->wz = nn; return 17; }
      return 4;   // prefixes are handled by the caller
    case 6: alu(z, y, fetch(z)); return 7;
    default: push(z, z->pc); z->pc = y * 8; z->wz = z->pc; return 11;
    }
  }
  #undef MEMADDR
}

int z80cpu_step(Z80 *z) {
  z->last_q = z->q;
  z->q = 0;
  z->p = 0;
  if (z->int_line && z->iff1 && !z->ei_delay) {
    z->halted = 0;
    z->iff1 = z->iff2 = 0;
    inc_r(z);
    if (z->im == 2) {
      push(z, z->pc);
      u16 v = z->i << 8 | 0xff;
      z->pc = RD(v) | RD(v + 1) << 8;
      z->wz = z->pc;
      return 19;
    }
    push(z, z->pc);
    z->pc = 0x38;
    z->wz = z->pc;
    return 13;
  }
  z->ei_delay = 0;
  if (z->halted) { inc_r(z); return 4; }
  u8 op = fetch(z);
  inc_r(z);
  int t = 0, pfx = 0;
  while (op == 0xdd || op == 0xfd) {
    pfx = op == 0xdd ? 1 : 2;
    t += 4;
    z->last_q = 0;   // a prefix counts as an instruction that left the flags alone
    op = fetch(z);
    inc_r(z);
  }
  if (op == 0xed) return t + op_ed(z);
  if (op == 0xcb && pfx) {
    u16 a = (pfx == 1 ? z->ix : z->iy) + (s8)fetch(z);
    z->wz = a;
    return t + op_cb(z, pfx, a) - 4;
  }
  return t + exec(z, op, pfx);
}

void z80cpu_nmi(Z80 *z) {
  z->halted = 0;
  z->iff2 = z->iff1; z->iff1 = 0;
  push(z, z->pc);
  z->pc = 0x66;
  z->wz = z->pc;
}
