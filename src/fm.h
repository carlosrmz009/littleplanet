#pragma once
#include <stdint.h>

// C side of the ymfm YM2612 wrapper (fm.cpp)
void fm_init(void);
void fm_reset(void);
void fm_chip_write(int port, uint8_t v);   // port 0-3 = A0/A1 address and data lines
uint8_t fm_chip_read(void);
void fm_generate(int32_t *lr);             // one sample at clock / 144
