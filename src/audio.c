// Sound: YM2612 (ymfm), SN76489 PSG, RF5C164 PCM and CD-DA, each resampled to 48 kHz and mixed.
#include "audio.h"
#include "mcd.h"
#include "fm.h"
#include "cdc.h"
#include "resample.h"
#include <math.h>

#define FM_MCLK (144 * 7)     // 53267 Hz
#define PSG_MCLK (16 * 15)    // 223722 Hz

static Resampler rs_fm, rs_psg, rs_pcm, rs_cd;
static u64 fm_next, psg_next, pcm_done, cd_done, synced;
static u16 cdda_vol = 0x400;

// output ring (stereo s16)
#define OUT_RING 16384
static s16 out_ring[OUT_RING * 2];
static u32 out_w, out_r;
static float dc_l, dc_r, dcin_l, dcin_r;

float audio_gain_fm = 1.0f, audio_gain_psg = 1.0f, audio_gain_pcm = 1.0f, audio_gain_cd = 1.0f, audio_master = 1.0f;

// ---------------------------------------------------------------- PSG
static struct {
  u16 period[4]; u8 vol[4]; u16 cnt[4]; u8 out[4];
  u16 lfsr; u8 latch; u8 noise;
} psg;
static float psg_level[16];

static void psg_reset(void) {
  memset(&psg, 0, sizeof psg);
  for (int i = 0; i < 4; i++) psg.vol[i] = 15;
  psg.lfsr = 0x8000;
  for (int i = 0; i < 15; i++) psg_level[i] = 0.25f * powf(10.0f, -0.1f * i);   // 2 dB per step
  psg_level[15] = 0;
}

static void psg_sample(float *l, float *r) {
  for (int c = 0; c < 3; c++) {
    if (psg.period[c] <= 1) { psg.out[c] = 1; continue; }
    if (--psg.cnt[c] == 0) { psg.cnt[c] = psg.period[c]; psg.out[c] ^= 1; }
  }
  // noise channel
  u16 np = (psg.noise & 3) == 3 ? psg.period[2] : (u16)(0x10 << (psg.noise & 3));
  if (np == 0) np = 1;
  if (psg.cnt[3] == 0 || --psg.cnt[3] == 0) {
    psg.cnt[3] = np;
    psg.out[3] ^= 1;
    if (psg.out[3]) {   // shift on the rising edge
      u16 fb = (psg.noise & 4) ? ((psg.lfsr ^ (psg.lfsr >> 3)) & 1) : (psg.lfsr & 1);
      psg.lfsr = (u16)((psg.lfsr >> 1) | fb << 15);
    }
  }
  float s = 0;
  for (int c = 0; c < 3; c++) if (psg.out[c]) s += psg_level[psg.vol[c]];
  if (psg.lfsr & 1) s += psg_level[psg.vol[3]];
  *l = *r = s;
}

// ---------------------------------------------------------------- RF5C164
static struct {
  u8 ram[0x10000];
  u8 enabled, bank, chan, on;   // on: bit set = channel off (as written)
  struct { u8 env, pan; u16 fd, ls; u8 st; u32 addr; } ch[8];
} pcm;

u8 pcm_read(u32 a) {
  a &= 0x1fff;
  if (a >= 0x1000) return pcm.ram[(pcm.bank << 12) | (a & 0xfff)];
  if (a >= 0x10 && a < 0x20) {
    int c = (a - 0x10) >> 1;
    u32 ad = pcm.ch[c].addr >> 11;
    return (a & 1) ? ad >> 8 : (u8)ad;
  }
  return 0;
}

static void audio_sync_now(void);

void pcm_write(u32 a, u8 v) {
  a &= 0x1fff;
  if (a >= 0x1000) { pcm.ram[(pcm.bank << 12) | (a & 0xfff)] = v; return; }
  audio_sync_now();
  int c = pcm.chan;
  switch (a) {
  case 0: pcm.ch[c].env = v; break;
  case 1: pcm.ch[c].pan = v; break;
  case 2: pcm.ch[c].fd = (pcm.ch[c].fd & 0xff00) | v; break;
  case 3: pcm.ch[c].fd = (pcm.ch[c].fd & 0x00ff) | v << 8; break;
  case 4: pcm.ch[c].ls = (pcm.ch[c].ls & 0xff00) | v; break;
  case 5: pcm.ch[c].ls = (pcm.ch[c].ls & 0x00ff) | v << 8; break;
  case 6: pcm.ch[c].st = v; pcm.ch[c].addr = (u32)v << 19; break;
  case 7:
    pcm.enabled = v >> 7;
    if (v & 0x40) pcm.chan = v & 7; else pcm.bank = v & 15;
    break;
  case 8:
    // a channel that is off sits at its start address (16.11 fixed point)
    for (int i = 0; i < 8; i++) if (v & (1 << i)) pcm.ch[i].addr = (u32)pcm.ch[i].st << 19;
    pcm.on = v;
    break;
  }
}
void pcm_dma_write(u32 a, u8 v) { pcm.ram[(pcm.bank << 12) | (a & 0xfff)] = v; }

static void pcm_sample(float *l, float *r) {
  s32 sl = 0, sr = 0;
  if (pcm.enabled) {
    for (int c = 0; c < 8; c++) {
      if (pcm.on & (1 << c)) continue;
      u8 s = pcm.ram[(pcm.ch[c].addr >> 11) & 0xffff];
      if (s == 0xff) {
        pcm.ch[c].addr = (u32)pcm.ch[c].ls << 11;
        s = pcm.ram[pcm.ch[c].ls];
        if (s == 0xff) continue;
      }
      s32 lv = (pcm.ch[c].pan & 15) * pcm.ch[c].env, rv = (pcm.ch[c].pan >> 4) * pcm.ch[c].env;
      s32 mag = s & 0x7f;
      if (s & 0x80) { sl += (mag * lv) >> 5; sr += (mag * rv) >> 5; }
      else { sl -= (mag * lv) >> 5; sr -= (mag * rv) >> 5; }
      pcm.ch[c].addr = (pcm.ch[c].addr + pcm.ch[c].fd) & 0x7ffffff;
    }
  }
  if (sl > 32767) sl = 32767; else if (sl < -32768) sl = -32768;
  if (sr > 32767) sr = 32767; else if (sr < -32768) sr = -32768;
  *l = sl / 32768.0f; *r = sr / 32768.0f;
}

// ---------------------------------------------------------------- FM bus
static u8 fm_status;
u8 fm_read(u32 a) { (void)a; audio_sync_now(); fm_status = fm_chip_read(); return fm_status; }
void fm_write(u32 a, u8 v) { audio_sync_now(); fm_chip_write(a & 3, v); }

void psg_write(u8 v) {
  audio_sync_now();
  if (v & 0x80) {
    psg.latch = (v >> 4) & 7;
    int c = psg.latch >> 1;
    if (psg.latch & 1) psg.vol[c] = v & 15;
    else if (c < 3) psg.period[c] = (psg.period[c] & 0x3f0) | (v & 15);
    else { psg.noise = v & 7; psg.lfsr = 0x8000; }
  } else {
    int c = psg.latch >> 1;
    if (psg.latch & 1) psg.vol[c] = v & 15;
    else if (c < 3) psg.period[c] = (psg.period[c] & 15) | (v & 0x3f) << 4;
    else { psg.noise = v & 7; psg.lfsr = 0x8000; }
  }
}

void audio_cdda_fader(u16 v) { audio_sync_now(); cdda_vol = (v >> 4) & 0x7ff; if (cdda_vol > 0x400) cdda_vol = 0x400; }

// ---------------------------------------------------------------- timing and mixing
void audio_init(void) {
  rs_free(&rs_fm); rs_free(&rs_psg); rs_free(&rs_pcm); rs_free(&rs_cd);
  rs_init(&rs_fm, (double)MCLK_HZ / FM_MCLK, AUDIO_RATE);
  rs_init(&rs_psg, (double)MCLK_HZ / PSG_MCLK, AUDIO_RATE);
  rs_init(&rs_pcm, SUB_HZ / 384.0, AUDIO_RATE);
  rs_init(&rs_cd, 44100, AUDIO_RATE);
  fm_init();
  psg_reset();
  memset(&pcm, 0, sizeof pcm);
  pcm.on = 0xff;
  fm_next = FM_MCLK; psg_next = PSG_MCLK; pcm_done = cd_done = synced = 0;
  out_w = out_r = 0;
  dc_l = dc_r = dcin_l = dcin_r = 0;
  cdda_vol = 0x400;
}

static void mix_out(void) {
  while (rs_ready(&rs_fm) && rs_ready(&rs_psg) && rs_ready(&rs_pcm) && rs_ready(&rs_cd)) {
    float fl, fr, pl, pr, ml, mr, cl, cr;
    rs_pop(&rs_fm, &fl, &fr); rs_pop(&rs_psg, &pl, &pr); rs_pop(&rs_pcm, &ml, &mr); rs_pop(&rs_cd, &cl, &cr);
    float l = (fl * audio_gain_fm + pl * audio_gain_psg) * 0.5f + ml * audio_gain_pcm * 0.5f + cl * audio_gain_cd * 0.5f;
    float r = (fr * audio_gain_fm + pr * audio_gain_psg) * 0.5f + mr * audio_gain_pcm * 0.5f + cr * audio_gain_cd * 0.5f;
    // AC coupling (the output capacitors): one-pole high-pass around 5 Hz
    const float k = 0.99935f;
    float hl = l - dcin_l + k * dc_l, hr = r - dcin_r + k * dc_r;
    dcin_l = l; dcin_r = r; dc_l = hl; dc_r = hr;
    hl *= audio_master; hr *= audio_master;
    int il = (int)lrintf(hl * 32767.0f), ir = (int)lrintf(hr * 32767.0f);
    if (il > 32767) il = 32767; else if (il < -32768) il = -32768;
    if (ir > 32767) ir = 32767; else if (ir < -32768) ir = -32768;
    u32 w = out_w % OUT_RING;
    out_ring[w * 2] = (s16)il; out_ring[w * 2 + 1] = (s16)ir;
    out_w++;
    if (out_w - out_r > OUT_RING) out_r = out_w - OUT_RING;
  }
}

void audio_run_until(u64 t) {
  if (t <= synced) return;
  synced = t;
  while (fm_next <= t) {
    s32 lr[2];
    fm_generate(lr);
    rs_push(&rs_fm, lr[0] / 32768.0f, lr[1] / 32768.0f);
    fm_next += FM_MCLK;
  }
  while (psg_next <= t) {
    float l, r;
    psg_sample(&l, &r);
    rs_push(&rs_psg, l, r);
    psg_next += PSG_MCLK;
  }
  u64 pcm_target = (t / MCLK_HZ * SUB_HZ + t % MCLK_HZ * SUB_HZ / MCLK_HZ) / 384;
  while (pcm_done < pcm_target) {
    float l, r;
    pcm_sample(&l, &r);
    rs_push(&rs_pcm, l, r);
    pcm_done++;
  }
  u64 cd_target = t / MCLK_HZ * 44100 + t % MCLK_HZ * 44100 / MCLK_HZ;
  while (cd_done < cd_target) {
    s16 s[2];
    cdda_pull(s, 1);
    float g = cdda_vol / 1024.0f;
    rs_push(&rs_cd, s[0] / 32768.0f * g, s[1] / 32768.0f * g);
    cd_done++;
  }
  mix_out();
}

extern bool z80_running;
extern u64 z80_clock;
static void audio_sync_now(void) { audio_run_until(z80_running ? z80_clock : mcd_now()); }

int audio_fetch(s16 *out, int frames) {
  int n = 0;
  while (n < frames && out_r < out_w) {
    u32 r = out_r % OUT_RING;
    out[n * 2] = out_ring[r * 2]; out[n * 2 + 1] = out_ring[r * 2 + 1];
    out_r++; n++;
  }
  return n;
}
int audio_available(void) { return (int)(out_w - out_r); }
