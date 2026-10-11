#pragma once
#include "types.h"

// pad buttons (active high here)
enum { PAD_UP = 1, PAD_DOWN = 2, PAD_LEFT = 4, PAD_RIGHT = 8, PAD_B = 16, PAD_C = 32, PAD_A = 64, PAD_START = 128,
       PAD_Z = 256, PAD_Y = 512, PAD_X = 1024, PAD_MODE = 2048 };

void io_init(void);
u8 io_read(u32 a);
void io_write(u32 a, u8 v);
void io_set_pad(int port, u16 buttons);
