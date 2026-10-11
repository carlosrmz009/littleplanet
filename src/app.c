#include "app.h"
#include "audio.h"
#include "io.h"
#include "hle.h"
#include "disc.h"
#include "cdc.h"
#include <time.h>

bool app_quit;
extern const char *uitest_prefix;
void ui_debug_set(int s, int p);
void video_read(u32 *dst);
bool machine_start(const char *disc, char *err, int errlen);
bool app_save_state(const char *path);
bool app_load_state(const char *path);
static bool is_fullscreen, snd;
static const char *disc_path;

static s16 ring[16384 * 2]; static int ring_n;
static const s16 *clip; static int clip_len, clip_pos;

extern const char *apptest_prefix, *apptest_state;
extern int apptest_shots[256], apptest_nshots, apptest_frames;
static FILE *apptest_wav; static u32 apptest_bytes;

static void audio_ring_add(const s16 *s, int n) {
  if (apptest_wav) { fwrite(s, 4, n, apptest_wav); apptest_bytes += n * 4; }
  int room = 16384 - ring_n; if (n > room) n = room;
  int vol = cfg.volume * 256 / 100;
  for (int i = 0; i < n * 2; i++) ring[ring_n * 2 + i] = (s16)((s[i] * vol) >> 8);
  ring_n += n;
}
static void audio_submit(void) {
  if (!snd) { ring_n = 0; return; }
  while (ring_n >= ABUF_FRAMES && snd_put(ring, ABUF_FRAMES)) {
    memmove(ring, ring + ABUF_FRAMES * 2, (ring_n - ABUF_FRAMES) * 4); ring_n -= ABUF_FRAMES;
  }
}
static int audio_queued(void) { return snd_busy() + ring_n; }
void audio_play_clip(const s16 *pcm, int frames) { clip = pcm; clip_len = frames; clip_pos = 0; }
void audio_stop_clip(void) { clip = NULL; }
static void audio_clip_pump(void) {
  if (!clip) return;
  while (clip_pos < clip_len && audio_queued() < ABUF_FRAMES * 4) {
    int n = clip_len - clip_pos; if (n > ABUF_FRAMES) n = ABUF_FRAMES;
    audio_ring_add(clip + clip_pos * 2, n); clip_pos += n; audio_submit();
  }
  if (clip_pos >= clip_len) clip = NULL;
}
static void audio_drain(void) { s16 junk[8192]; while (audio_fetch(junk, 4096) > 0) {} }

// ---------------------------------------------------------------- menu preview
// Boots the game once in the background: the title screen and a moment of Palmtree Panic
// become the two preview scenes, and a few seconds of title music the sound sample.
static u32 *pv[2]; static int pv_w[2];
// stills of the two intros at the same moment, for the Intro setting: the game's FMV (emulated, cached)
// and the remaster (decoded from the video at each launch)
#define PV_INTRO_FRAME 1439   // 1 s after the FMV's first picture, booting with no input (the attract loop)
#define RM_W 640
#define RM_H 360
static u32 *pv_intro, *pv_rm; static int pv_intro_w;
static volatile LONG rm_ready;
static s16 *pvclip[2];
static volatile LONG preview_ready;
#define PV_CLIP_START 240
#define PV_CLIP_FRAMES (48000 * 5)
static const int pv_frame[2] = {380, 1320};
static const char *PV_CACHE = "preview_cache.bin";

const s16 *preview_clip(int accurate) { return pvclip[accurate ? 0 : 1]; }

static void pv_alloc(void) {
  for (int s = 0; s < 2; s++) { pv[s] = calloc(GAME_W * GAME_H, 4); pvclip[s] = calloc(PV_CLIP_FRAMES * 2, 2); }
  pv_intro = calloc(GAME_W * GAME_H, 4); pv_rm = calloc(RM_W * RM_H, 4);
}
static bool pv_load_cache(void) {
  FILE *f = fopen(PV_CACHE, "rb"); if (!f) return false;
  u32 magic = 0; bool ok = fread(&magic, 4, 1, f) == 1 && magic == 0x3250504c;
  for (int s = 0; s < 2 && ok; s++) {
    ok = fread(&pv_w[s], 4, 1, f) == 1 && pv_w[s] > 0 && pv_w[s] <= GAME_W;
    ok = ok && fread(pv[s], 4, GAME_W * GAME_H, f) == GAME_W * GAME_H;
    ok = ok && fread(pvclip[s], 4, PV_CLIP_FRAMES, f) == PV_CLIP_FRAMES;
  }
  ok = ok && fread(&pv_intro_w, 4, 1, f) == 1 && pv_intro_w > 0 && pv_intro_w <= GAME_W;
  ok = ok && fread(pv_intro, 4, GAME_W * GAME_H, f) == GAME_W * GAME_H;
  fclose(f);
  return ok;
}
static void pv_save_cache(void) {
  FILE *f = fopen(PV_CACHE, "wb"); if (!f) return;
  u32 magic = 0x3250504c; fwrite(&magic, 4, 1, f);
  for (int s = 0; s < 2; s++) { fwrite(&pv_w[s], 4, 1, f); fwrite(pv[s], 4, GAME_W * GAME_H, f); fwrite(pvclip[s], 4, PV_CLIP_FRAMES, f); }
  fwrite(&pv_intro_w, 4, 1, f); fwrite(pv_intro, 4, GAME_W * GAME_H, f);
  fclose(f);
}
static u16 pv_pad(int f) {
  if ((f >= 400 && f < 410) || (f >= 500 && f < 510)) return PAD_START;   // title, then "New game"
  if (f >= 900) return PAD_RIGHT;
  return 0;
}
static int pv_thread(void *arg) {
  (void)arg;
  char err[256];
  if (!machine_start(disc_path, err, sizeof err)) return 0;
  bool was = audio_lowpass;
  audio_lowpass = true;   // primary output: accurate, alternate output: clean
  audio_dual = true;
  static s16 tmp[8192];
  int n[2] = {0, 0};
  static u32 pic[GAME_W * 240];
  for (int f = 0; f <= pv_frame[1]; f++) {
    io_set_pad(0, pv_pad(f));
    mcd_run_frame();
    for (int v = 0; v < 2; v++) {
      int a;
      while ((a = v == 0 ? audio_fetch(tmp, 4096) : audio_fetch_alt(tmp, 4096)) > 0)
        if (f >= PV_CLIP_START && n[v] + a <= PV_CLIP_FRAMES) { memcpy(pvclip[v] + n[v] * 2, tmp, a * 4); n[v] += a; }
    }
    for (int s = 0; s < 2; s++)
      if (f == pv_frame[s]) {
        int w, h;
        game_picture(pic, &w, &h);
        pv_w[s] = w;
        memcpy(pv[s], pic, (size_t)w * GAME_H * 4);
      }
  }
  audio_dual = false;
  audio_lowpass = was;
  // again with no input: the attract loop reaches the opening FMV
  if (machine_start(disc_path, err, sizeof err))
    for (int f = 0; f <= PV_INTRO_FRAME; f++) {
      io_set_pad(0, 0);
      mcd_run_frame();
      while (audio_fetch(tmp, 4096) > 0) {}
      if (f == PV_INTRO_FRAME) { int w, h; game_picture(pic, &w, &h); pv_intro_w = w; memcpy(pv_intro, pic, (size_t)w * GAME_H * 4); }
    }
  pv_save_cache();
  InterlockedExchange(&preview_ready, 1);
  return 0;
}

static int rm_thread(void *arg) {   // the remaster's still: decoding a 4K frame takes a moment
  (void)arg;
  if (intro_still(pv_rm, RM_W, RM_H)) InterlockedExchange(&rm_ready, 1);
  return 0;
}

static void set_fullscreen(bool on) {
  if (on == is_fullscreen) return;
  plat_fullscreen(on);
  is_fullscreen = on; cfg.fullscreen = on;
}
void app_toggle_fullscreen(void) { set_fullscreen(!is_fullscreen); }

static int slot;
static void state_path(char *p, int n) { plat_mkdir("saves"); snprintf(p, n, "saves/slot%d.state", slot); }
static void save_state(void) {
  char p[64]; state_path(p, sizeof p);
  if (app_save_state(p)) osd_message("Saved state %d", slot); else osd_message("Couldn't save state %d", slot);
}
static void load_state(void) {
  char p[64]; state_path(p, sizeof p);
  FILE *f = fopen(p, "rb");
  if (!f) { osd_message("State %d is empty", slot); return; }
  fclose(f);
  if (app_load_state(p)) osd_message("Loaded state %d", slot); else osd_message("State %d is from another version", slot);
}
static void write_bmp32(const char *p, const u32 *pix, int w, int h) {
  FILE *f = fopen(p, "wb"); if (!f) return;
  u8 hd[54] = { 'B', 'M' };
  u32 sz = 54 + w * h * 4, off = 54, hs = 40; s32 sw = w, sh = -h; u16 pl = 1, bpp = 32;
  memcpy(hd + 2, &sz, 4); memcpy(hd + 10, &off, 4); memcpy(hd + 14, &hs, 4); memcpy(hd + 18, &sw, 4); memcpy(hd + 22, &sh, 4);
  memcpy(hd + 26, &pl, 2); memcpy(hd + 28, &bpp, 2);
  fwrite(hd, 1, 54, f); fwrite(pix, 4, (size_t)w * h, f); fclose(f);
}

static int ut_step; static char ut_name[64]; static int ut_game_frames;
static void ut_capture(void) {
  if (!ut_name[0]) return;
  u32 *buf = malloc((size_t)video_width() * video_height() * 4);
  video_read(buf);
  char p[256]; snprintf(p, sizeof p, "%s_%s.bmp", uitest_prefix, ut_name);
  write_bmp32(p, buf, video_width(), video_height());
  free(buf);
  ut_name[0] = 0; ut_step++;
}
static bool ut_menu(void) {
  if (ut_name[0] || !preview_ready) return false;
  switch (ut_step) {
  case 0: cfg.filter = FILT_SMOOTH; cfg.aspect = ASPECT_4_3; ui_debug_set(1, 0); strcpy(ut_name, "01_filter_smooth"); break;
  case 1: cfg.filter = FILT_CRT; ui_debug_set(2, 0); strcpy(ut_name, "02_crt_aperture"); break;
  case 2: cfg.crt_mask = MASK_SHADOW; strcpy(ut_name, "03_crt_shadow"); break;
  case 3: cfg.crt_mask = MASK_APERTURE; cfg.filter = FILT_PIXELART; ui_debug_set(1, 0); strcpy(ut_name, "04_pixelart"); break;
  case 4: cfg.filter = FILT_NEAREST; ui_debug_set(1, 0); strcpy(ut_name, "05_sharp"); break;
  case 5: cfg.filter = FILT_SMOOTH; cfg.aspect = ASPECT_SQUARE; ui_debug_set(6, 0); strcpy(ut_name, "06_aspect_square"); break;
  case 6: cfg.aspect = ASPECT_16_9_AMBIENT; ui_debug_set(6, 0); strcpy(ut_name, "07_aspect_ambient"); break;
  case 7: cfg.aspect = ASPECT_4_3; ui_debug_set(0, 1); strcpy(ut_name, "08_controls"); break;
  case 8: ui_debug_set(0, 0); cfg.filter = FILT_CRT; return true;
  }
  return false;
}
static void ut_game(void) {
  if (ut_name[0]) return;
  if (ut_game_frames < 1320) return;
  switch (ut_step) {
  case 8: strcpy(ut_name, "09_game_crt"); break;
  case 9: cfg.filter = FILT_SMOOTH; strcpy(ut_name, "10_game_smooth"); break;
  case 10: cfg.aspect = ASPECT_16_9_AMBIENT; strcpy(ut_name, "11_game_ambient"); break;
  case 11: cfg.aspect = ASPECT_4_3; cfg.filter = FILT_NEAREST; strcpy(ut_name, "12_game_sharp"); break;
  case 12: {
    static u32 t0; static int f0;
    if (!t0) { t0 = GetTickCount(); f0 = ut_game_frames; }
    else if (GetTickCount() - t0 >= 3000) {
      printf("uitest: %.2f emulated frames/s with audio pacing (audio device %s)\n", (ut_game_frames - f0) * 1000.0 / (GetTickCount() - t0), snd ? "open" : "missing");
      fflush(stdout); ut_step++;
    }
    break;
  }
  default: app_quit = true;
  }
}

static void apptest_step(int frames) {
  static int done, k;
  done += frames;
  for (; k < apptest_nshots && done > apptest_shots[k]; k++) {
    u32 *buf = malloc((size_t)video_width() * video_height() * 4);
    video_read(buf);
    char p[512]; snprintf(p, sizeof p, "%s_%05d.bmp", apptest_prefix, apptest_shots[k]);
    write_bmp32(p, buf, video_width(), video_height());
    free(buf);
  }
  if (apptest_frames > 0 && done >= apptest_frames) {
    if (apptest_wav) {
      u8 h[44] = "RIFF....WAVEfmt \x10\0\0\0\1\0\2\0....\0\0\0\0\4\0\x10\0data....";
      u32 rate = 48000, br = 48000 * 4, rl = apptest_bytes + 36;
      memcpy(h + 4, &rl, 4); memcpy(h + 24, &rate, 4); memcpy(h + 28, &br, 4); memcpy(h + 40, &apptest_bytes, 4);
      fseek(apptest_wav, 0, SEEK_SET); fwrite(h, 1, 44, apptest_wav); fclose(apptest_wav); apptest_wav = NULL;
    }
    app_quit = true;
  }
}

static void screenshot(const u32 *pix, int w, int h) {
  plat_mkdir("screenshots");
  time_t now = time(NULL); struct tm t = *localtime(&now);
  char p[128]; snprintf(p, sizeof p, "screenshots/sonic_%04d%02d%02d_%02d%02d%02d.bmp", t.tm_year + 1900, t.tm_mon + 1, t.tm_mday, t.tm_hour, t.tm_min, t.tm_sec);
  write_bmp32(p, pix, w, h);
  osd_message("Screenshot saved: %s", p);
}

// one emulated frame; while the remastered opening is up, its sound replaces the game's
static void run_frame(bool keep_audio) {
  static s16 tmp[8192], mv[8192];
  const double frame_time = (double)MCLK_PER_LINE * LINES_PER_FRAME / MCLK_HZ;
  mcd_run_frame();
  int mn, n;
  bool intro = intro_step(frame_time, mv, &mn, 4096);
  while ((n = audio_fetch(tmp, 4096)) > 0) if (keep_audio && !intro) audio_ring_add(tmp, n);
  if (keep_audio && intro) audio_ring_add(mv, mn);
  if (keep_audio) audio_submit();
}

static void bram_flush(void) { if (bram_dirty()) bram_save("backup_ram.bin"); }

int app_run(const char *disc) {
  disc_path = disc;
  cfg_load("littleplanet.ini");
  if (!plat_open()) { plat_error("OpenGL initialisation failed."); return 1; }
  if (cfg.fullscreen) { cfg.fullscreen = 0; set_fullscreen(true); }
  snd = snd_open();
  ui_init();

  pv_alloc();
  void *th = NULL;
  if (pv_load_cache()) preview_ready = 1;
  else th = plat_thread(pv_thread);
  movie_available();   // load FFmpeg here, before another thread can ask
  void *rm_th = plat_thread(rm_thread);
  bool rm_shown = false;

  enum { M_MENU, M_GAME } mode = M_MENU;
  bool in_game = false, paused = false;
  bool k_save = 0, k_load = 0, k_menu = 0, k_slot = 0, k_pause = 0, k_shot = 0, k_fs = 0;
  double t0 = plat_time(), now;
  double fps = 0; int fps_frames = 0; double fps_t = t0;
  const double frame_time = (double)MCLK_PER_LINE * LINES_PER_FRAME / MCLK_HZ;
  double next_frame = 0;
  static u32 pic[GAME_W * 240], big[GAME_W * 4 * 240 * 4];
  int shown_w = GAME_W, shown_h = GAME_H;
  bool ui_was_ready = false;

  while (!app_quit) {
    plat_events();
    input_poll();
    if (!ui_was_ready && preview_ready) {
      const u32 *a[2] = {pv[0], pv[1]};
      ui_set_preview_frames(a, pv_w, pvclip[0], PV_CLIP_FRAMES);
      ui_set_intro_still(0, pv_intro, pv_intro_w, GAME_H);
      ui_was_ready = true;
    }
    if (!rm_shown && rm_ready) { ui_set_intro_still(1, pv_rm, RM_W, RM_H); rm_shown = true; }
    bool fsk = input_key(VK_F11); if (fsk && !k_fs) set_fullscreen(!is_fullscreen); k_fs = fsk;
    if ((bool)cfg.fullscreen != is_fullscreen) set_fullscreen(cfg.fullscreen);
    if (!th) audio_lowpass = cfg.sound == SOUND_ACCURATE;

    if (mode == M_MENU) {
      UiResult res = ui_frame(in_game);
      if (apptest_prefix) res = UI_START_GAME;
      if (uitest_prefix) { ut_capture(); if (ut_menu()) res = UI_START_GAME; }
      audio_clip_pump();
      video_present();
      if (res == UI_QUIT) app_quit = true;
      if (res == UI_START_GAME || res == UI_RESUME || res == UI_RESET) {
        if (!in_game || res == UI_RESET) {
          if (th) { plat_join(th); th = NULL; }
          if (in_game) bram_flush();
          char err[512];
          if (!machine_start(disc_path, err, sizeof err)) {
            if (uitest_prefix) fprintf(stderr, "%s\n", err); else plat_error(err);
            app_quit = true; continue;
          }
          bram_load("backup_ram.bin");
          if (apptest_prefix && apptest_state && !app_load_state(apptest_state)) { fprintf(stderr, "can't load %s\n", apptest_state); app_quit = true; continue; }
          intro_reset();
          if (apptest_prefix) {
            char p[512]; snprintf(p, sizeof p, "%s.wav", apptest_prefix);
            apptest_wav = fopen(p, "wb");
            if (apptest_wav) { u8 z[44] = {0}; fwrite(z, 1, 44, apptest_wav); }
          }
          audio_drain();
          in_game = true;
        }
        cfg_save("littleplanet.ini");
        audio_stop_clip();
        mode = M_GAME; paused = false; input_flush_edges();
        k_menu = true;
        t0 = plat_time(); next_frame = 0;
      }
      continue;
    }

    bool b;
    b = input_bind_down(BIND_MENU); if (b && !k_menu) { mode = M_MENU; ui_init(); input_flush_edges(); k_menu = b; bram_flush(); continue; } k_menu = b;
    b = input_bind_down(BIND_SAVE); if (b && !k_save) save_state(); k_save = b;
    b = input_bind_down(BIND_LOAD); if (b && !k_load) load_state(); k_load = b;
    b = input_key(VK_F3); if (b && !k_slot) { slot = (slot + 1) % 10; osd_message("State slot %d", slot); } k_slot = b;
    b = input_key('P') || input_key(VK_PAUSE); if (b && !k_pause) { paused = !paused; osd_message(paused ? "Paused" : "Resumed"); } k_pause = b;
    bool ff = input_bind_down(BIND_FAST);
    if (uitest_prefix) { ff = ut_game_frames < 1320; paused = !ff && ut_step < 12; }
    int frames = 0;
    if (!paused) {
      io_six_button = cfg.six_button;
      io_set_pad(0, uitest_prefix ? pv_pad(ut_game_frames) : input_md_mask());
      if (ff) {
        for (int i = 0; i < (uitest_prefix ? 20 : cfg.ff_speed); i++) {
          if (uitest_prefix) io_set_pad(0, pv_pad(ut_game_frames + frames));
          run_frame(false); frames++;
        }
        audio_drain();
        t0 = plat_time(); next_frame = 0;
      } else if (snd) {
        while (audio_queued() < ABUF_FRAMES * 3 && frames < 4) { run_frame(true); frames++; }
      } else {
        double el = plat_time() - t0;
        while (next_frame <= el && frames < 4) { run_frame(apptest_wav != NULL); frames++; next_frame += frame_time; }
        if (el - next_frame > 0.25) next_frame = el;
        audio_drain();
      }
    }
    {   // re-upload every pass: the texture is also used by the menu's monitor
      game_picture(pic, &shown_w, &shown_h);
      if (cfg.filter == FILT_PIXELART) { scale_epx(pic, shown_w, shown_h, big, 4); video_upload_game(big, shown_w * 4, shown_h * 4); }
      else video_upload_game(pic, shown_w, shown_h);
    }
    b = input_key(VK_F12); if (b && !k_shot) { int w, h; game_picture(pic, &w, &h); screenshot(pic, w, h); } k_shot = b;
    fps_frames += frames;
    now = plat_time();
    double dt = now - fps_t;
    if (dt >= 0.5) { fps = fps_frames / dt; fps_frames = 0; fps_t = now; }
    video_clear(0, 0, 0);
    if (intro_active()) intro_draw((Rect){ 0, 0, video_width(), video_height() });
    else video_draw_game(&cfg, (Rect){ 0, 0, video_width(), video_height() }, 0, 0, 1, 1);
    osd_draw(fps);
    if (uitest_prefix) { ut_capture(); ut_game(); ut_game_frames += frames; }
    if (apptest_prefix) apptest_step(frames);
    video_present();
    if (!frames && !cfg.vsync) Sleep(1);
  }
  if (th) plat_join(th);
  if (rm_th) plat_join(rm_th);
  cfg_save("littleplanet.ini");
  if (in_game && !uitest_prefix) bram_flush();
  return 0;
}
