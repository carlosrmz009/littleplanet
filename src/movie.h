#pragma once
#include "types.h"

// Video file playback (the remastered opening) through FFmpeg, loaded at run time:
// without the FFmpeg libraries everything here reports "not available" and the game runs as usual.
// Decoding runs on its own thread; the caller drives the clock, one emulated frame at a time.

#define MOVIE_RATE 48000

typedef struct {
  int w, h;                     // picture size (luma)
  int cw, ch;                   // chroma plane size
  int depth;                    // bits per sample; above 8 the planes hold 16-bit little-endian words
  const u8 *plane[3];           // Y, Cb, Cr
  int stride[3];                // bytes per row
  bool bt709, full_range;
  u32 serial;                   // changes whenever a different picture is returned
} MovieFrame;

bool movie_available(void);                 // FFmpeg found (tries to load it once)
const char *movie_error(void);
bool movie_open(const char *path);
void movie_close(void);
bool movie_is_open(void);
void movie_seek(double t);                  // t < 0: black and silence until 0
double movie_time(void);
int movie_advance(double dt, s16 *out, int max);   // move the clock; returns that stretch of audio (stereo, 48 kHz)
const MovieFrame *movie_frame(void);        // picture for the current time, NULL if none yet
