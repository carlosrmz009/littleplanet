#pragma once
#include "types.h"

#define AUDIO_RATE 48000

void audio_init(void);
void audio_run_until(u64 mclk);
int audio_fetch(s16 *out, int frames);     // mixed output, stereo
int audio_available(void);
int audio_fetch_alt(s16 *out, int frames);   // the other sound setting while audio_dual is on
extern bool audio_lowpass, audio_dual;
void audio_cdda_fader(u16 v);

void psg_write(u8 v);
void fm_reset(void);
u8 fm_read(u32 a);
void fm_write(u32 a, u8 v);
u8 pcm_read(u32 a);
void pcm_write(u32 a, u8 v);
void pcm_dma_write(u32 a, u8 v);
