#pragma once
#include "types.h"
#include "m68k.h"

// Clocks (NTSC). Everything is scheduled in master clocks (MCLK).
#define MCLK_HZ 53693175
#define MCLK_PER_LINE 3420
#define LINES_PER_FRAME 262
#define SUB_HZ 12500000

typedef struct {
  // main side
  u8 work_ram[0x10000];
  u8 bios[0x20000];           // HLE main BIOS image
  // sub side
  u8 prg_ram[0x80000];
  u8 word_ram[0x40000];
  u8 bram[0x2000];            // internal backup RAM (8 KB)
  // gate array
  u16 comm_cmd[8], comm_stat[8];
  u8 comm_main, comm_sub;     // $A1200E / $FF800E flag bytes
  u8 sub_reset, sub_busreq;   // main $A12001: SRES (1 = running), SBRQ
  u8 ien2;                    // sub level 2 enabled (mirror of $FF8033 bit 2)
  u8 bk, wp;                  // PRG-RAM bank for main window, write protect
  u8 mode1m, dmna, ret;       // Word RAM mode and handshake
  u8 pm;                      // priority mode
  u16 hint_vec;               // $A12006
  u8 int_mask;                // $FF8033
  u8 timer, timer_count;      // $FF8031 (level 3 timer)
  u16 stopwatch;
  u8 led;
  u16 cdc_mode;               // $FF8004: EDT/DSR/DD (bits 15/14, 10-8), CA (3-0)
  u16 cdc_dma_addr;           // $FF800A
  u16 fader, cdd_ctrl;
  u8 cdd_status[10], cdd_cmd[10];
  u16 font_color, font_bits;
  u16 subcode[0x100 / 2 * 2];
  // stamp/graphics regs
  u16 gfx[8];                 // $FF8058..$FF8066
  // interrupt state
  u8 sub_ipend;               // pending sub interrupt levels (bit n = level n)
  u8 z80_busreq, z80_reset;
  u8 io_data[3], io_ctrl[3];
  u8 tmss;
  // timing
  u64 mclk;                   // master clock at the start of the current slice
  int line;
  u64 frame;
  u64 sub_cycles;             // total sub cycles executed
} Mcd;

extern Mcd mcd;
extern M68k mcpu, scpu;

void mcd_init(void);
void mcd_run_frame(void);
void mcd_sub_irq(int level);            // raise a sub-CPU interrupt
void mcd_update_sub_ipl(void);
void mcd_debug(bool on);

// buses
u8 main_r8(u32 a); u16 main_r16(u32 a); void main_w8(u32 a, u8 v); void main_w16(u32 a, u16 v);
u8 sub_r8(u32 a); u16 sub_r16(u32 a); void sub_w8(u32 a, u8 v); void sub_w16(u32 a, u16 v);

// set by the scheduler, read by devices that need the current time
u64 mcd_now(void);
