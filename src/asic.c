// Mega-CD graphics ASIC: renders rotated/scaled stamp maps into a cell-arranged image buffer
// in Word RAM, one line per trace vector, at 5*4 sub cycles per dot.
#include "asic.h"
#include "mcd.h"
#include "state.h"

static u16 reg[8];          // $FF8058..$FF8066
static bool busy;
static u32 trace;           // byte address of the next trace vector
static u32 buf_start;       // pixel index of the current line's first dot
static u32 buf_col_step;
static u32 dot_mask, stamp_shift, map_shift, map_base;
static s32 cycles_left, cycles_per_line;
static u8 cell_lut[256], pixel_lut[512];

void asic_init(void) {
  memset(reg, 0, sizeof reg);
  busy = false;
  for (int i = 0; i < 256; i++) {
    int mask = (i & 8) ? 3 : 1, row = (i >> 6) & mask, col = (i >> 4) & mask;
    if (i & 4) col ^= mask;                        // HFLIP first
    if (i & 2) { col ^= mask; row ^= mask; }      // 180
    if (i & 1) { int t = col; col = row ^ mask; row = t; }   // 90
    cell_lut[i] = (u8)(row + col * (mask + 1));
  }
  for (int i = 0; i < 512; i++) {
    int row = (i >> 6) & 7, col = (i >> 3) & 7;
    if (i & 4) col ^= 7;
    if (i & 2) { col ^= 7; row ^= 7; }
    if (i & 1) { int t = col; col = row ^ 7; row = t; }
    pixel_lut[i] = (u8)((row << 3) + col);
  }
}

static inline u8 nib_rd(u32 idx) { u8 b = mcd.word_ram[(idx >> 1) & 0x3ffff]; return (idx & 1) ? (b & 15) : (b >> 4); }
static inline void nib_wr(u32 idx, u8 v) {
  u8 *p = &mcd.word_ram[(idx >> 1) & 0x3ffff];
  *p = (idx & 1) ? ((*p & 0xf0) | v) : ((*p & 0x0f) | v << 4);
}
static inline u16 wr16(u32 a) { a &= 0x3fffe; return mcd.word_ram[a] << 8 | mcd.word_ram[a + 1]; }

static void render_line(void) {
  u32 xpos = (u32)wr16(trace) << 8, ypos = (u32)wr16(trace + 2) << 8;
  s32 dx = (s16)wr16(trace + 4), dy = (s16)wr16(trace + 6);
  trace += 8;
  bool repeat = reg[0] & 1, big = reg[0] & 2;
  int width = reg[5] & 0x1ff;
  u32 idx = buf_start;
  for (int i = 0; i < width; i++) {
    if (repeat) { xpos &= dot_mask; ypos &= dot_mask; }
    else { xpos &= 0xffffff; ypos &= 0xffffff; }
    u8 out = 0;
    if (!((xpos | ypos) & ~dot_mask)) {
      u16 sd = wr16(map_base + 2 * ((xpos >> stamp_shift) | ((ypos >> stamp_shift) << map_shift)));
      u32 num = sd & 0x7ff;
      if (num) {
        int hrr = (sd >> 13) & 7;
        u32 px = xpos >> 11, py = ypos >> 11;
        int cmask = big ? 3 : 1;
        int ccol = (px >> 3) & cmask, crow = (py >> 3) & cmask;
        int cell = cell_lut[crow << 6 | ccol << 4 | (big ? 8 : 0) | hrr];
        int pix = pixel_lut[(py & 7) << 6 | (px & 7) << 3 | hrr];
        u32 base = big ? (num & ~3u) << 8 : num << 8;
        out = nib_rd(base + cell * 64 + pix);
      }
    }
    u8 in = nib_rd(idx);
    switch (mcd.pm) {
    case 1: if (in) out = in; break;    // underwrite
    case 2: if (!out) out = in; break;  // overwrite
    }
    nib_wr(idx, out);
    idx = (idx & 7) != 7 ? idx + 1 : idx + buf_col_step;
    xpos += (u32)dx; ypos += (u32)dy;
  }
  buf_start += 8;
}

static void start(void) {
  if (mcd.mode1m) return;   // the ASIC works on Word RAM in 2M mode only
  trace = ((u32)reg[7] << 2) & 0x3fff8;
  u32 mask;
  switch ((reg[0] >> 1) & 3) {
  case 0: dot_mask = 0x07ffff; stamp_shift = 11 + 4; map_shift = 4; mask = 0x3fe00; break;
  case 1: dot_mask = 0x07ffff; stamp_shift = 11 + 5; map_shift = 3; mask = 0x3ff80; break;
  case 2: dot_mask = 0x7fffff; stamp_shift = 11 + 4; map_shift = 8; mask = 0x20000; break;
  default: dot_mask = 0x7fffff; stamp_shift = 11 + 5; map_shift = 7; mask = 0x38000; break;
  }
  map_base = ((u32)reg[1] << 2) & mask;
  buf_col_step = (((reg[2] & 0x1f) + 1) << 6) - 7;
  buf_start = (((u32)reg[3] << 3) & 0x7ffc0) + (reg[4] & 0x3f);
  cycles_per_line = 4 * 5 * (reg[5] & 0x1ff);
  if (!cycles_per_line) cycles_per_line = 1;
  cycles_left = cycles_per_line;
  busy = true;
}

u16 asic_read(int r) {
  r &= 7;
  if (r == 0) return (busy ? 0x8000 : 0) | (reg[0] & 7);
  if (r == 6) return reg[6] & 0xff;
  return reg[r];
}

void asic_write(int r, u16 v) {
  r &= 7;
  switch (r) {
  case 0: reg[0] = v & 7; break;
  case 1: reg[1] = v & 0xffe0; break;
  case 2: reg[2] = v & 0x1f; break;
  case 3: reg[3] = v & 0xfff8; break;
  case 4: reg[4] = v & 0x3f; break;
  case 5: reg[5] = v & 0x1ff; break;
  case 6: reg[6] = v & 0xff; break;
  case 7: reg[7] = v & 0xfffe; start(); break;
  }
}

void asic_run(u32 cycles) {
  if (!busy) return;
  cycles_left -= (s32)cycles;
  while (busy && cycles_left <= 0) {
    if ((reg[6] & 0xff) == 0) {
      busy = false;
      if (mcd.int_mask & 2) mcd_sub_irq(1);
      break;
    }
    render_line();
    reg[6] = (reg[6] - 1) & 0xff;
    cycles_left += cycles_per_line;
  }
}

void asic_serialize(Ser *s) {
  SER(s, reg); SER(s, busy); SER(s, trace); SER(s, buf_start); SER(s, buf_col_step); SER(s, dot_mask); SER(s, stamp_shift);
  SER(s, map_shift); SER(s, map_base); SER(s, cycles_left); SER(s, cycles_per_line);
}
