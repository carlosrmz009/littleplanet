#pragma once
#include "types.h"

// Save states: every module writes/reads its state through the same function.
typedef struct { u8 *buf; size_t pos, cap; bool load; bool fail; } Ser;
void ser_bytes(Ser *s, void *p, size_t n);
#define SER(s, v) ser_bytes((s), &(v), sizeof(v))

void mcd_serialize(Ser *s);       // whole machine
void vdp_serialize(Ser *s);
void z80_serialize(Ser *s);
void audio_serialize(Ser *s);
void cdc_serialize(Ser *s);
void asic_serialize(Ser *s);
void fm_serialize(Ser *s);
