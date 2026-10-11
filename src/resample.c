#include "resample.h"
#include <math.h>

#define RS_RES 256
static const double PI = 3.14159265358979323846;

static double bessel_i0(double x) {
  double s = 1, t = 1;
  for (int k = 1; k < 40; k++) { t *= (x / (2 * k)) * (x / (2 * k)); s += t; }
  return s;
}

void rs_init(Resampler *r, double in_rate, double out_rate) {
  memset(r, 0, sizeof *r);
  r->step = in_rate / out_rate;
  double ratio = out_rate < in_rate ? out_rate / in_rate : 1.0;
  double cutoff = 0.5 * ratio * 0.92;            // cycles per input sample, a bit under Nyquist
  r->half = (int)ceil(16.0 / ratio);
  int n = r->half * RS_RES + 2;
  r->table = malloc(sizeof(float) * n);
  const double beta = 8.6, norm = bessel_i0(beta);
  double sum = 0;
  for (int i = 0; i < n; i++) {
    double x = (double)i / RS_RES;
    double s = x == 0 ? 2 * cutoff : sin(2 * PI * cutoff * x) / (PI * x);
    double w = x >= r->half ? 0 : bessel_i0(beta * sqrt(1 - (x / r->half) * (x / r->half))) / norm;
    r->table[i] = (float)(s * w);
    if (i % RS_RES == 0) sum += (i ? 2 : 1) * r->table[i];
  }
  for (int i = 0; i < n; i++) r->table[i] /= (float)sum;   // unity DC gain
  r->pos = r->half;   // start once a full window is available
}

void rs_free(Resampler *r) { free(r->table); r->table = NULL; }

void rs_pop(Resampler *r, float *l, float *rr) {
  double p = r->pos;
  long base = (long)floor(p);
  float al = 0, ar = 0;
  for (long n = base - r->half + 1; n <= base + r->half; n++) {
    double x = fabs(p - (double)n) * RS_RES;
    int i = (int)x;
    float f = (float)(x - i);
    float w = r->table[i] + (r->table[i + 1] - r->table[i]) * f;
    al += w * r->ring[0][n & (RS_RING - 1)];
    ar += w * r->ring[1][n & (RS_RING - 1)];
  }
  *l = al; *rr = ar;
  r->pos += r->step;
}
