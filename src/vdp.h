#pragma once
#include "types.h"

#define VDP_MAX_W 448      // 320, plus the widescreen pixels (wide.c)
#define VDP_LINES 240

typedef struct {
  u8 vram[0x10000];
  u16 cram[64];
  u16 vsram[40];
  u8 reg[24];
  u16 addr;
  u8 code;
  bool pending;           // first half of a command written
  bool dma_fill_pending;
  u16 status;
  int hcounter_reload, hint_counter;
  bool vint_pending, hint_pending;
  u16 read_buffer;
  u8 fifo_count;
  int width;               // 256 or 320 for the current frame
  int dma_stall;           // main CPU cycles lost to the last 68k->VDP DMA
  u32 fb[VDP_LINES][VDP_MAX_W];   // RGB888, one frame
  int fb_width[VDP_LINES];
  int active_lines;
} Vdp;

extern Vdp vdp;
extern int vdp_exl, vdp_exr;    // widescreen: pixels drawn past the left and right of the screen this frame

void vdp_reset(void);
u16 vdp_read16(u32 a);
void vdp_write16(u32 a, u16 v);
u8 vdp_read8(u32 a);
void vdp_write8(u32 a, u8 v);
void vdp_line(int line);       // called once per scanline at the start of hblank
void vdp_frame_start(void);
int vdp_ipl(void);             // interrupt level the VDP asserts to the main CPU (0, 4 or 6)
void vdp_iack(int level);
u16 vdp_hv(void);
