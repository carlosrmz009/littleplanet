#pragma once
#include "types.h"

// Mega-CD graphics ASIC (stamp rotation/scaling)
void asic_init(void);
u16 asic_read(int reg);
void asic_write(int reg, u16 v);
void asic_run(u32 sub_cycles);
