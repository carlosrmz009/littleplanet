#pragma once
#include "types.h"
#include "m68k.h"

// True widescreen in the stages (wide.c): the level drawn 428 pixels wide instead of 320.

#define WIDE_EXTRA 108   // 320 + 108 = 428 pixels: 16:9, with the Mega Drive's pixels 14:15 as wide as tall

typedef struct { u32 off; u8 n; u16 old[2], rep[2]; } WideSite;   // offset in the file (= in Word RAM)
typedef struct { const char *name; int first, n; } WideFile;
extern const WideSite wide_sites[];   // tools/wide_gen.py
extern const WideFile wide_files[];
extern const int wide_nfiles;

void wide_enable(bool on);     // the player's setting (only the game's own emulation, not the menu's previews)
void wide_reset(void);         // a state was loaded: find the stage again
void wide_check(void);         // Word RAM came back to the main CPU, or a new frame: patch or unpatch the stage
void wide_frame(void);         // a frame starts: how far the picture reaches past each side (vdp_exl, vdp_exr)
int wide_trap(M68k *c, int id);   // line-A $a8xx in the patched code
