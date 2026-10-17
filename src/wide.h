#pragma once
#include "types.h"
#include "m68k.h"

// True widescreen in the stages (wide.c): the level drawn 428 pixels wide instead of 320.

#define WIDE_EXTRA 108   // 320 + 108 = 428 pixels: 16:9, with the Mega Drive's pixels 14:15 as wide as tall
#define WIDE_EXTRA_H32 84 // 256 + 84 = 340: 16:9 in the H32 screens (the title), whose pixels are 7:6

typedef struct { u32 off; u8 n; u16 old[2], rep[2]; } WideSite;   // offset in the file (= in Word RAM)
typedef struct { const char *name; int first, n; } WideFile;
extern const WideSite wide_sites[];   // tools/wide_gen.py
extern const WideFile wide_files[];
extern const int wide_nfiles;

void wide_enable(bool on);     // the player's setting (only the game's own emulation, not the menu's previews)
void wide_reset(void);         // a state was loaded: find the stage again
void wide_disc(void);          // a disc was opened
void wide_check(void);         // Word RAM came back to the main CPU, or a new frame: patch or unpatch the stage
void wide_frame(void);         // a frame starts: how far the picture reaches past each side (vdp_exl, vdp_exr)
int wide_trap(M68k *c, int id);   // line-A $a8xx in the patched code
bool wide_stage(void);         // a stage (or an attract demo) is running: its engine is in Word RAM
