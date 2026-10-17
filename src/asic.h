#pragma once
#include "types.h"

// Mega-CD graphics ASIC (stamp rotation/scaling)
void asic_init(void);
u16 asic_read(int reg);
void asic_write(int reg, u16 v);
void asic_run(u32 sub_cycles);

// widescreen: the dots past both ends of each line of the last finished image (asic_side of them)
#define ASIC_SIDE_MAX 48
#define ASIC_SIDE_LINES 128
extern int asic_side;
extern u8 asic_side_px[ASIC_SIDE_LINES][2][ASIC_SIDE_MAX];   // [line][left, right][distance - 1]
