#pragma once
#include "types.h"

void z80_init(void);
u8 z80_bus_r8(u32 a);
void z80_bus_w8(u32 a, u8 v);
void z80_busreq_w(int v);
void z80_reset_w(int v);
void z80_run_until(u64 mclk);
void z80_vint(void);
