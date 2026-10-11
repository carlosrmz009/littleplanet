// Mega Drive + Mega-CD: memory maps, gate array, interrupts and the scheduler.
#include "mcd.h"
#include "vdp.h"
#include "hle.h"
#include "cdc.h"
#include "audio.h"
#include "z80.h"
#include "io.h"
#include "asic.h"
#include "state.h"

Mcd mcd;
M68k mcpu, scpu;

static u64 main_mclk_done;
static u32 timer_frac;

u64 mcd_now(void) { return main_mclk_done + (u64)mcpu.cyc * 7; }

// ---------------------------------------------------------------- Word RAM
// Stored in 2M (linear) order. In 1M mode bank b, byte offset o maps to
// ((o >> 1) << 2) | (b << 1) | (o & 1): the banks interleave word by word.
static inline u32 wr1m(int bank, u32 o) { o &= 0x1ffff; return ((o >> 1) << 2) | (bank << 1) | (o & 1); }
static inline int main_bank(void) { return mcd.ret ? 1 : 0; }

// 1M mode, main $220000-$23FFFF: the main bank seen as VDP cells. Not used by Sonic CD;
// reads/writes go to the linear bank and are reported once so a mapping can be added if needed.
static u32 cell_addr(u32 a) {
  static bool warned;
  if (!warned) { warned = true; fprintf(stderr, "mcd: 1M cell image access at %06x (unmapped)\n", a); }
  return a & 0x1ffff;
}

static u8 wram_main_r8(u32 a) {
  if (!mcd.mode1m) return mcd.ret ? mcd.word_ram[a & 0x3ffff] : 0;
  if ((a & 0x3ffff) < 0x20000) return mcd.word_ram[wr1m(main_bank(), a)];
  return mcd.word_ram[wr1m(main_bank(), cell_addr(a))];
}
static void wram_main_w8(u32 a, u8 v) {
  if (!mcd.mode1m) { if (mcd.ret) mcd.word_ram[a & 0x3ffff] = v; return; }
  if ((a & 0x3ffff) < 0x20000) mcd.word_ram[wr1m(main_bank(), a)] = v;
  else mcd.word_ram[wr1m(main_bank(), cell_addr(a))] = v;
}
u8 wram_dma_r8(u32 a) { return wram_main_r8(a); }

static u8 wram_sub_r8(u32 a) {
  a &= 0xfffff;
  if (!mcd.mode1m) return (!mcd.ret && a < 0xc0000) ? mcd.word_ram[a & 0x3ffff] : 0;
  int bank = main_bank() ^ 1;
  if (a >= 0xc0000) return a < 0xe0000 ? mcd.word_ram[wr1m(bank, a)] : 0;
  // dot image: each byte is one pixel (low nibble)
  u32 o = (a - 0x80000) >> 1;
  u8 b = mcd.word_ram[wr1m(bank, o)];
  return (a & 1) ? (b & 0x0f) : (b >> 4);
}
static void wram_sub_w8(u32 a, u8 v) {
  a &= 0xfffff;
  if (!mcd.mode1m) { if (!mcd.ret && a < 0xc0000) mcd.word_ram[a & 0x3ffff] = v; return; }
  int bank = main_bank() ^ 1;
  if (a >= 0xc0000) { if (a < 0xe0000) mcd.word_ram[wr1m(bank, a)] = v; return; }
  u32 o = (a - 0x80000) >> 1;
  u8 *p = &mcd.word_ram[wr1m(bank, o)];
  u8 old = (a & 1) ? (*p & 0x0f) : (*p >> 4), nv = v & 0x0f;
  if (mcd.pm == 1 && old) return;            // underwrite: only into transparent pixels
  if (mcd.pm == 2 && !nv) return;            // overwrite: transparent pixels don't write
  if (a & 1) *p = (*p & 0xf0) | nv; else *p = (*p & 0x0f) | nv << 4;
}

// ---------------------------------------------------------------- interrupts
void mcd_update_sub_ipl(void) {
  u8 p = mcd.sub_ipend & mcd.int_mask;
  int l = 0;
  for (int i = 6; i >= 1; i--) if (p & (1 << i)) { l = i; break; }
  scpu.ipl = l;
}
void mcd_sub_irq(int level) {
  mcd.sub_ipend |= 1 << level;
  mcd_update_sub_ipl();
}
static int sub_iack(int level) {
  mcd.sub_ipend &= ~(1 << level);   // for level 2 this also clears IFL2
  mcd_update_sub_ipl();
  return -1;
}
static int main_iack(int level) {
  vdp_iack(level);
  mcpu.ipl = vdp_ipl();
  return -1;    // autovectors; the level 4 vector is redirected through $A12006 in main_r16
}

// ---------------------------------------------------------------- main bus
static u8 open_bus_main(void) { return 0xff; }

static u16 ga_main_r16(u32 a) {
  a &= 0x3e;
  switch (a) {
  case 0x00: return (mcd.ien2 ? 0x8000 : 0) | ((mcd.sub_ipend >> 2) & 1) | (mcd.sub_busreq ? 2 : 0) | (mcd.sub_reset ? 1 : 0);
  case 0x02: return mcd.wp << 8 | mcd.bk << 6 | (mcd.mode1m ? 4 : 0) | (mcd.dmna ? 2 : 0) | (mcd.ret ? 1 : 0);
  case 0x04: return mcd.cdc_mode & 0xc700;
  case 0x06: return mcd.hint_vec;
  case 0x08: return cdc_host_read(0);
  case 0x0c: return mcd.stopwatch & 0xfff;
  case 0x0e: return mcd.comm_main << 8 | mcd.comm_sub;
  }
  if (a >= 0x10 && a < 0x20) return mcd.comm_cmd[(a - 0x10) >> 1];
  if (a >= 0x20 && a < 0x30) return mcd.comm_stat[(a - 0x20) >> 1];
  return 0;
}

static void main_ret_dmna_write(u8 v) {
  mcd.bk = (v >> 6) & 3;
  if (v & 2) {
    if (!mcd.mode1m) { mcd.dmna = 1; mcd.ret = 0; }      // 2M: give Word RAM to the sub CPU
    else mcd.dmna = 1;                                     // 1M: request a bank swap
  }
}

static void ga_main_w8(u32 a, u8 v) {
  a &= 0x3f;
  switch (a) {
  case 0x00:
    if (v & 1) { if (mcd.ien2) { mcd_sub_irq(2); } }
    return;
  case 0x01: {
    u8 was_reset = !mcd.sub_reset;
    mcd.sub_reset = v & 1;
    mcd.sub_busreq = (v >> 1) & 1;
    if (was_reset && mcd.sub_reset) hle_sub_reset();
    return;
  }
  case 0x02: mcd.wp = v; return;
  case 0x03: main_ret_dmna_write(v); return;
  case 0x06: mcd.hint_vec = (mcd.hint_vec & 0xff) | v << 8; return;
  case 0x07: mcd.hint_vec = (mcd.hint_vec & 0xff00) | v; return;
  case 0x0e: mcd.comm_main = v; return;
  case 0x0f: mcd.comm_main = v; return;   // byte writes to either half land in the main flags
  }
  if (a >= 0x10 && a < 0x20) {
    u16 *w = &mcd.comm_cmd[(a - 0x10) >> 1];
    *w = (a & 1) ? ((*w & 0xff00) | v) : ((*w & 0xff) | v << 8);
  }
}
static void ga_main_w16(u32 a, u16 v) {
  a &= 0x3e;
  if (a >= 0x10 && a < 0x20) { mcd.comm_cmd[(a - 0x10) >> 1] = v; return; }
  if (a == 0x06) { mcd.hint_vec = v; return; }
  if (a == 0x0e) { mcd.comm_main = v >> 8; return; }
  ga_main_w8(a, v >> 8);
  ga_main_w8(a + 1, (u8)v);
}

u8 main_r8(u32 a) {
  a &= 0xffffff;
  if (a < 0x20000) return mcd.bios[a];
  if (a < 0x40000) return mcd.prg_ram[mcd.bk * 0x20000 + (a & 0x1ffff)];
  if (a >= 0x200000 && a < 0x240000) return wram_main_r8(a);
  if (a >= 0xff0000) return mcd.work_ram[a & 0xffff];
  if (a >= 0xa00000 && a < 0xa10000) return z80_bus_r8(a);
  if (a >= 0xa10000 && a < 0xa10020) return io_read(a);
  if (a == 0xa11100) return mcd.z80_busreq ? 0 : 1;   // BUSACK follows the request even while the Z80 is in reset
  if (a == 0xa11101) return 0;
  if (a >= 0xa12000 && a < 0xa12040) { u16 w = ga_main_r16(a); return (a & 1) ? (u8)w : w >> 8; }
  if (a >= 0xc00000 && a < 0xe00000) return vdp_read8(a);
  return open_bus_main();
}
u16 main_r16(u32 a) {
  a &= 0xfffffe;
  if (a < 0x20000) {
    if (a == 0x70) return 0x00ff;            // level 4 vector high word: $FFxxxx
    if (a == 0x72) return mcd.hint_vec;      // low word from $A12006
    return mcd.bios[a] << 8 | mcd.bios[a + 1];
  }
  if (a < 0x40000) { u32 o = mcd.bk * 0x20000 + (a & 0x1ffff); return mcd.prg_ram[o] << 8 | mcd.prg_ram[o + 1]; }
  if (a >= 0xff0000) return mcd.work_ram[a & 0xffff] << 8 | mcd.work_ram[(a & 0xffff) + 1];
  if (a >= 0x200000 && a < 0x240000) return wram_main_r8(a) << 8 | wram_main_r8(a + 1);
  if (a >= 0xa12000 && a < 0xa12040) return ga_main_r16(a);
  if (a >= 0xc00000 && a < 0xe00000) return vdp_read16(a);
  if (a >= 0xa00000 && a < 0xa10000) { u8 v = z80_bus_r8(a); return v << 8 | v; }
  return main_r8(a) << 8 | main_r8(a + 1);
}
void main_w8(u32 a, u8 v) {
  a &= 0xffffff;
  if (a >= 0xff0000) { mcd.work_ram[a & 0xffff] = v; return; }
  if (a < 0x20000) return;
  if (a < 0x40000) { mcd.prg_ram[mcd.bk * 0x20000 + (a & 0x1ffff)] = v; return; }
  if (a >= 0x200000 && a < 0x240000) { wram_main_w8(a, v); return; }
  if (a >= 0xa00000 && a < 0xa10000) { z80_bus_w8(a, v); return; }
  if (a >= 0xa10000 && a < 0xa10020) { io_write(a, v); return; }
  if (a == 0xa11100) { z80_busreq_w(v & 1); return; }
  if (a == 0xa11200) { z80_reset_w(v & 1); return; }
  if (a >= 0xa12000 && a < 0xa12040) { ga_main_w8(a, v); return; }
  if (a >= 0xa14000 && a < 0xa14004) return;
  if (a >= 0xc00000 && a < 0xe00000) { vdp_write8(a, v); return; }
}
void main_w16(u32 a, u16 v) {
  a &= 0xfffffe;
  if (a >= 0xff0000) { mcd.work_ram[a & 0xffff] = v >> 8; mcd.work_ram[(a & 0xffff) + 1] = (u8)v; return; }
  if (a >= 0xc00000 && a < 0xe00000) { vdp_write16(a, v); return; }
  if (a >= 0xa12000 && a < 0xa12040) { ga_main_w16(a, v); return; }
  if (a == 0xa11100 || a == 0xa11200) { main_w8(a, v >> 8); return; }
  if (a >= 0xa00000 && a < 0xa10000) { z80_bus_w8(a, v >> 8); return; }
  main_w8(a, v >> 8);
  main_w8(a + 1, (u8)v);
}

// ---------------------------------------------------------------- sub bus
static u16 ga_sub_r16(u32 a) {
  a &= 0x1fe;
  if (a >= 0x100) return mcd.subcode[(a - 0x100) >> 1];
  switch (a) {
  case 0x00: return mcd.led << 8 | 0x01;      // version 0, RES done
  case 0x02: return mcd.wp << 8 | mcd.pm << 3 | (mcd.mode1m ? 4 : 0) | (mcd.dmna ? 2 : 0) | (mcd.ret ? 1 : 0);
  case 0x04: return mcd.cdc_mode;
  case 0x06: return cdc_reg_read();
  case 0x08: return cdc_host_read(1);
  case 0x0a: return mcd.cdc_dma_addr;
  case 0x0c: return mcd.stopwatch & 0xfff;
  case 0x0e: return mcd.comm_main << 8 | mcd.comm_sub;
  case 0x30: return mcd.timer;
  case 0x32: return mcd.int_mask;
  case 0x34: return mcd.fader;
  case 0x36: return mcd.cdd_ctrl;
  case 0x4c: return mcd.font_color;
  case 0x4e: return mcd.font_bits;
  case 0x50: case 0x52: case 0x54: case 0x56: {
    // font data: 4 pixels per word from font_bits, colors from font_color
    int n = (a - 0x50) >> 1;
    u16 out = 0;
    for (int i = 0; i < 4; i++) {
      int bit = (mcd.font_bits >> (15 - (n * 4 + i))) & 1;
      u8 col = bit ? (mcd.font_color >> 4) & 15 : mcd.font_color & 15;
      out |= col << (12 - i * 4);
    }
    return out;
  }
  }
  if (a >= 0x10 && a < 0x20) return mcd.comm_cmd[(a - 0x10) >> 1];
  if (a >= 0x20 && a < 0x30) return mcd.comm_stat[(a - 0x20) >> 1];
  if (a >= 0x38 && a < 0x42) { int i = a - 0x38; return mcd.cdd_status[i] << 8 | mcd.cdd_status[i + 1]; }
  if (a >= 0x42 && a < 0x4c) { int i = a - 0x42; return mcd.cdd_cmd[i] << 8 | mcd.cdd_cmd[i + 1]; }
  if (a >= 0x58 && a < 0x68) return asic_read((a - 0x58) >> 1);
  return 0;
}

static void sub_mem_mode_write(u8 v) {
  mcd.pm = (v >> 3) & 3;
  bool m1 = v & 4;
  if (m1 != mcd.mode1m) {
    mcd.mode1m = m1;
    if (m1) mcd.dmna = 0;
  }
  if (!mcd.mode1m) {
    if (v & 1) { mcd.ret = 1; mcd.dmna = 0; }   // return Word RAM to main
  } else {
    // 1M: RET selects the bank arrangement; a write completes any pending swap request
    mcd.ret = v & 1;
    mcd.dmna = 0;
  }
}

static void ga_sub_w8(u32 a, u8 v);
static void ga_sub_w16(u32 a, u16 v) {
  a &= 0x1fe;
  if (a >= 0x100) { mcd.subcode[(a - 0x100) >> 1] = v; return; }
  switch (a) {
  case 0x04: ga_sub_w8(0x04, v >> 8); ga_sub_w8(0x05, (u8)v); return;
  case 0x0a: mcd.cdc_dma_addr = v; cdc_dma_addr_w(v); return;
  case 0x0c: mcd.stopwatch = 0; return;
  case 0x34: mcd.fader = v; audio_cdda_fader(v); return;
  case 0x36: mcd.cdd_ctrl = v; return;
  case 0x4c: mcd.font_color = v & 0xff; return;
  case 0x4e: mcd.font_bits = v; return;
  }
  if (a >= 0x20 && a < 0x30) { mcd.comm_stat[(a - 0x20) >> 1] = v; return; }
  if (a >= 0x58 && a < 0x68) { asic_write((a - 0x58) >> 1, v); return; }
  ga_sub_w8(a, v >> 8);
  ga_sub_w8(a + 1, (u8)v);
}
static void ga_sub_w8(u32 a, u8 v) {
  a &= 0x1ff;
  if (a >= 0x100) { u16 *w = &mcd.subcode[(a - 0x100) >> 1]; *w = (a & 1) ? ((*w & 0xff00) | v) : ((*w & 0xff) | v << 8); return; }
  switch (a) {
  case 0x00: mcd.led = v & 3; return;
  case 0x01: return;
  case 0x02: return;
  case 0x03: sub_mem_mode_write(v); return;
  case 0x04: cdc_mode_w(v); return;
  case 0x05: mcd.cdc_mode = (mcd.cdc_mode & 0xff00) | (v & 0x0f); return;
  case 0x07: cdc_reg_write(v); return;
  case 0x0e: case 0x0f: mcd.comm_sub = v; return;
  case 0x31: mcd.timer = v; mcd.timer_count = v; return;
  case 0x33:
    mcd.int_mask = v & 0x7e;
    mcd.ien2 = (v >> 2) & 1;
    if (!mcd.ien2) mcd.sub_ipend &= ~4;
    mcd_update_sub_ipl();
    return;
  }
  if (a >= 0x20 && a < 0x30) {
    u16 *w = &mcd.comm_stat[(a - 0x20) >> 1];
    *w = (a & 1) ? ((*w & 0xff00) | v) : ((*w & 0xff) | v << 8);
    return;
  }
  if (a >= 0x42 && a < 0x4c) { mcd.cdd_cmd[a - 0x42] = v & 15; if (a == 0x4b) cdd_command(); return; }
  if (a >= 0x4c && a < 0x58) { ga_sub_w16(a & ~1, (a & 1) ? ((ga_sub_r16(a & ~1) & 0xff00) | v) : ((ga_sub_r16(a & ~1) & 0xff) | v << 8)); return; }
  if (a >= 0x58 && a < 0x68) { u16 w = asic_read((a - 0x58) >> 1); asic_write((a - 0x58) >> 1, (a & 1) ? ((w & 0xff00) | v) : ((w & 0xff) | v << 8)); }
}

u8 sub_r8(u32 a) {
  a &= 0xffffff;
  if (a < 0x80000) return mcd.prg_ram[a];
  if (a < 0xe0000) return wram_sub_r8(a);
  if (a >= 0xfe0000 && a < 0xff0000) return (a & 1) ? mcd.bram[(a >> 1) & 0x1fff] : 0xff;
  if (a >= 0xff0000 && a < 0xff8000) return (a & 1) ? pcm_read((a >> 1) & 0x1fff) : 0;
  if (a >= 0xff8000) { u16 w = ga_sub_r16(a); return (a & 1) ? (u8)w : w >> 8; }
  return 0;
}
u16 sub_r16(u32 a) {
  a &= 0xfffffe;
  if (a < 0x80000) return mcd.prg_ram[a] << 8 | mcd.prg_ram[a + 1];
  if (a >= 0xff8000) return ga_sub_r16(a);
  return sub_r8(a) << 8 | sub_r8(a + 1);
}
void sub_w8(u32 a, u8 v) {
  a &= 0xffffff;
  if (a < 0x80000) { if (a >= (u32)mcd.wp * 0x200) mcd.prg_ram[a] = v; return; }
  if (a < 0xe0000) { wram_sub_w8(a, v); return; }
  if (a >= 0xfe0000 && a < 0xff0000) { if (a & 1) mcd.bram[(a >> 1) & 0x1fff] = v; return; }
  if (a >= 0xff0000 && a < 0xff8000) { if (a & 1) pcm_write((a >> 1) & 0x1fff, v); return; }
  if (a >= 0xff8000) { ga_sub_w8(a, v); return; }
}
void sub_w16(u32 a, u16 v) {
  a &= 0xfffffe;
  if (a < 0x80000) { if (a >= (u32)mcd.wp * 0x200) { mcd.prg_ram[a] = v >> 8; mcd.prg_ram[a + 1] = (u8)v; } return; }
  if (a >= 0xff8000) { ga_sub_w16(a, v); return; }
  if (a >= 0x80000 && a < 0xc0000 && mcd.mode1m) {   // dot image word write: two pixels
    wram_sub_w8(a, v >> 8); wram_sub_w8(a + 1, (u8)v); return;
  }
  sub_w8(a, v >> 8);
  sub_w8(a + 1, (u8)v);
}

// ---------------------------------------------------------------- scheduler
void mcd_init(void) {
  memset(&mcd, 0, sizeof mcd);
  m68k_init_tables();
  memset(&mcpu, 0, sizeof mcpu);
  memset(&scpu, 0, sizeof scpu);
  mcpu.r8 = main_r8; mcpu.r16 = main_r16; mcpu.w8 = main_w8; mcpu.w16 = main_w16; mcpu.iack = main_iack;
  mcpu.line_a = hle_main_trap; mcpu.id = 0;
  scpu.r8 = sub_r8; scpu.r16 = sub_r16; scpu.w8 = sub_w8; scpu.w16 = sub_w16; scpu.iack = sub_iack;
  scpu.line_a = hle_sub_trap; scpu.id = 1;
  mcd.ret = 1;
  mcd.z80_reset = 0;
  main_mclk_done = 0;
  timer_frac = 0;
  vdp_reset();
  z80_init();
  audio_init();
  io_init();
  cdc_init();
  asic_init();
}

static u32 *dbg_ring, dbg_pos;
static bool dbg_dumped;
void mcd_debug(bool on) { dbg_ring = on ? calloc(4096, 4) : NULL; }

// sub CPU and devices catch up to master clock `t`
static void sub_timers(u32 cycles) {
  // stopwatch and timer W tick every 30.72 us = 384 sub cycles
  timer_frac += cycles;
  while (timer_frac >= 384) {
    timer_frac -= 384;
    mcd.stopwatch = (mcd.stopwatch + 1) & 0xfff;
    if (mcd.timer) {
      if (mcd.timer_count == 0) { mcd.timer_count = mcd.timer; mcd_sub_irq(3); }
      else mcd.timer_count--;
    }
  }
}
static void run_sub_until(u64 t) {
  u64 target = t / MCLK_HZ * SUB_HZ + t % MCLK_HZ * SUB_HZ / MCLK_HZ;
  while (mcd.sub_cycles < target) {
    s32 want = (s32)(target - mcd.sub_cycles);
    if (want > 64) want = 64;
    scpu.cyc = 0;
    if (!mcd.sub_reset || mcd.sub_busreq) scpu.cyc = want;
    else while (scpu.cyc < want) {
      if (dbg_ring) {
        dbg_ring[dbg_pos++ & 4095] = scpu.pc;
        if (((scpu.pc & 1) || (scpu.pc >= 0x400 && scpu.pc < 0x5f00)) && !dbg_dumped) {
          dbg_dumped = true;
          fprintf(stderr, "sub pc %06x looks wrong; recent pcs:\n", scpu.pc);
          for (int k = 256; k > 0; k--) fprintf(stderr, " %06x", dbg_ring[(dbg_pos - k) & 4095]);
          fprintf(stderr, "\n");
        }
      }
      m68k_step(&scpu);
    }
    u32 used = (u32)scpu.cyc;
    scpu.cyc = 0;
    mcd.sub_cycles += used;
    sub_timers(used);
    asic_run(used);
    cdc_run(used);
  }
}

static void run_main_until(u64 t) {
  while (main_mclk_done < t) {
    s64 left = (s64)(t - main_mclk_done);
    // small steps so the sub CPU, Z80 and timers stay close
    s64 step = left > 280 ? 280 : left;
    mcpu.cyc = 0;
    if (vdp.dma_stall) { mcpu.cyc += vdp.dma_stall; vdp.dma_stall = 0; }
    while ((s64)mcpu.cyc * 7 < step) m68k_step(&mcpu);
    main_mclk_done += (u64)mcpu.cyc * 7;
    mcpu.cyc = 0;
    run_sub_until(main_mclk_done);
    z80_run_until(main_mclk_done);
    audio_run_until(main_mclk_done);
  }
}

void mcd_run_frame(void) {
  vdp_frame_start();
  for (int line = 0; line < LINES_PER_FRAME; line++) {
    mcd.line = line;
    u64 line_start = (mcd.frame * LINES_PER_FRAME + line) * (u64)MCLK_PER_LINE;
    // active display, then hblank
    run_main_until(line_start + 2560);
    vdp_line(line);
    mcpu.ipl = vdp_ipl();
    run_main_until(line_start + MCLK_PER_LINE);
  }
  mcd.frame++;
}

static void cpu_ser(Ser *s, M68k *c) {
  SER(s, c->r); SER(s, c->osp); SER(s, c->pc); SER(s, c->sr); SER(s, c->ir); SER(s, c->stopped); SER(s, c->halted);
  SER(s, c->ipl); SER(s, c->trace_pending); SER(s, c->cyc); SER(s, c->ipc);
}

void mcd_serialize(Ser *s) {
  u32 magic = 0x5350504c, version = 1;   // "LPPS"
  SER(s, magic); SER(s, version);
  if (s->load && (magic != 0x5350504c || version != 1)) { s->fail = true; return; }
  SER(s, mcd);
  cpu_ser(s, &mcpu); cpu_ser(s, &scpu);
  SER(s, main_mclk_done); SER(s, timer_frac);
  vdp_serialize(s);
  z80_serialize(s);
  cdc_serialize(s);
  asic_serialize(s);
  audio_serialize(s);
}
