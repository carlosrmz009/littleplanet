// Z80 sound CPU in the Mega Drive: 8 KB RAM, YM2612, PSG and a banked window into 68k space.
#include "z80.h"
#include "z80cpu.h"
#include "mcd.h"
#include "audio.h"
#include "vdp.h"

static Z80 z;
static u8 zram[0x2000];
static u16 bank;               // 68k address bits 23-15
static u64 z_mclk;             // master clock the Z80 has reached
static u64 int_until;
bool z80_running;
u64 z80_clock;

static u8 z_read(u16 a) {
  if (a < 0x4000) return zram[a & 0x1fff];
  if (a < 0x6000) return fm_read(a);
  if (a >= 0x7f00 && a < 0x7f20) return vdp_read8(0xc00000 | (a & 0x1f));
  if (a >= 0x8000) {
    u32 addr = (u32)bank << 15 | (a & 0x7fff);
    if (addr >= 0xa00000 && addr < 0xa10000) return 0xff;   // the Z80 can't see its own bus this way
    z.cycles += 3;   // 68k bus access penalty (approximate)
    return main_r8(addr);
  }
  return 0xff;
}
static void z_write(u16 a, u8 v) {
  if (a < 0x4000) { zram[a & 0x1fff] = v; return; }
  if (a < 0x6000) { fm_write(a, v); return; }
  if (a < 0x6100) { bank = (bank >> 1) | ((v & 1) << 8); return; }
  if (a >= 0x7f00 && a < 0x7f20) { vdp_write8(0xc00000 | (a & 0x1f), v); return; }
  if (a >= 0x8000) {
    u32 addr = (u32)bank << 15 | (a & 0x7fff);
    if (addr >= 0xa00000 && addr < 0xa10000) return;
    z.cycles += 3;
    main_w8(addr, v);
  }
}
static u8 z_in(u16 p) { (void)p; return 0xff; }
static void z_out(u16 p, u8 v) { (void)p; (void)v; }

void z80_init(void) {
  memset(&z, 0, sizeof z);
  memset(zram, 0, sizeof zram);
  z.read = z_read; z.write = z_write; z.in = z_in; z.out = z_out;
  z80cpu_reset(&z);
  bank = 0;
  z_mclk = 0;
  int_until = 0;
}

// 68k side ($A00000-$A0FFFF), valid while the 68k holds the Z80 bus
u8 z80_bus_r8(u32 a) {
  a &= 0xffff;
  if (a < 0x4000) return zram[a & 0x1fff];
  if (a < 0x6000) return fm_read(a);
  return 0xff;
}
void z80_bus_w8(u32 a, u8 v) {
  a &= 0xffff;
  if (a < 0x4000) zram[a & 0x1fff] = v;
  else if (a < 0x6000) fm_write(a, v);
  else if (a < 0x6100) bank = (bank >> 1) | ((v & 1) << 8);
  else if (a >= 0x7f00 && a < 0x7f20) vdp_write8(0xc00000 | (a & 0x1f), v);
}

void z80_busreq_w(int v) { mcd.z80_busreq = (u8)v; }
void z80_reset_w(int v) {
  if (!v) { z80cpu_reset(&z); if (mcd.z80_reset) fm_reset(); }   // the reset line also resets the YM2612
  mcd.z80_reset = (u8)v;
}

void z80_vint(void) { z.int_line = 1; int_until = mcd_now() + MCLK_PER_LINE; }

void z80_run_until(u64 t) {
  if (int_until && t >= int_until) { z.int_line = 0; int_until = 0; }
  if (!mcd.z80_reset || mcd.z80_busreq) { z_mclk = t; return; }
  z80_running = true;
  while (z_mclk < t) {
    z.cycles = 0;
    z80_clock = z_mclk;
    int c = z80cpu_step(&z) + z.cycles;
    z_mclk += (u64)c * 15;
  }
  z80_running = false;
}
