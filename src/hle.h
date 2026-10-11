#pragma once
#include "m68k.h"

// High-level replacement for the Mega-CD boot ROM and sub-CPU BIOS. The game's code calls
// into small stubs at the documented BIOS entry points; each stub is a line-A opcode that
// traps into C.
bool hle_boot(char *err, int errlen);
int hle_main_trap(M68k *c);
int hle_sub_trap(M68k *c);
void hle_sub_reset(void);

// backup RAM (save data), kept by the BIOS layer
bool bram_load(const char *path);
bool bram_save(const char *path);
bool bram_dirty(void);
