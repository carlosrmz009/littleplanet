#pragma once
#include "types.h"

// Band-limited (Kaiser-windowed sinc) stereo resampler for one source.
#define RS_RING 4096

typedef struct {
  double step;          // input samples per output sample
  double pos;           // input position of the next output sample
  u64 count;            // input samples pushed so far
  int half;             // kernel half width in input samples
  float *table;         // kernel, RS_RES points per input sample
  float ring[2][RS_RING];
} Resampler;

void rs_init(Resampler *r, double in_rate, double out_rate);
void rs_free(Resampler *r);
static inline void rs_push(Resampler *r, float l, float rr) {
  r->ring[0][r->count & (RS_RING - 1)] = l;
  r->ring[1][r->count & (RS_RING - 1)] = rr;
  r->count++;
}
static inline bool rs_ready(const Resampler *r) { return r->pos + r->half < (double)r->count; }
void rs_pop(Resampler *r, float *l, float *rr);
