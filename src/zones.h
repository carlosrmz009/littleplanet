#pragma once
#include "m68k.h"

// A save after every zone, not only every round (zones.c).
void zones_frame(void);              // a frame starts: patch the main program if it's there unpatched
int zones_trap(M68k *c, int id);     // line-A $a9xx in the patched code
