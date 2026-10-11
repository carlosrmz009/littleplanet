#include "app.h"
#include "ui_art.h"
#include "vg.h"
#include <stdarg.h>
#include <math.h>

// the window-sized picture the menu is drawn into, and the background cached for it
static u32 *ui_px, *ui_bg; static int ui_w, ui_h, bg_key = -1;
static void canvas_ensure(int w, int h) {
  if (w == ui_w && h == ui_h && ui_px) return;
  free(ui_px); free(ui_bg);
  ui_px = malloc((size_t)w * h * 4); ui_bg = malloc((size_t)w * h * 4);
  ui_w = w; ui_h = h; bg_key = -1;
}

static const u32 *sc[2]; static int sc_w[2];
static int clip_frames;
static int scene = -1;
static u32 *pv_big;
const s16 *preview_clip(int accurate);

// the Intro setting shows one still of each opening at the same moment, to compare
static const u32 *istill[2]; static int istill_w[2], istill_h[2];
void ui_set_intro_still(int which, const u32 *pix, int w, int h) { istill[which] = pix; istill_w[which] = w; istill_h[which] = h; }

void ui_set_preview_frames(const u32 *scene[2], const int scene_w[2], const s16 *audio, int audio_frames) {
  for (int i = 0; i < 2; i++) { sc[i] = scene[i]; sc_w[i] = scene_w[i]; }
  (void)audio;
  clip_frames = audio_frames;
}

typedef enum { IT_ACTION, IT_CHOICE, IT_SLIDER } ItemType;
typedef struct {
  const char *label; ItemType type; int *val; int min, max, step;
  const char **choices; const char *help; int scene; int id;
} Item;

enum { A_START = 1, A_CONTROLS, A_RESET, A_QUIT, A_SAMPLE };
static const char *filters[] = { "Sharp", "Smooth", "Scale4x", "CRT" };
static const char *masks[] = { "Grille", "Shadow", "Slot" };
static const char *aspects[] = { "4:3", "Square pixels", "16:9 fill", "16:9 stretch" };
static const char *onoff[] = { "Off", "On" };
static const char *audios[] = { "Accurate", "Clean" };
static const char *pads[] = { "3 button", "6 button" };
static const char *intros[] = { "Remastered", "Original" };

static Item items[32]; static int nitems;
static void build_items(bool in_game) {
  nitems = 0;
#define ADD(...) items[nitems++] = (Item){ __VA_ARGS__ }
  ADD(in_game ? "Resume" : "Start game", IT_ACTION, NULL, 0, 0, 0, NULL, "Esc brings you back here.", -1, A_START);
  ADD("Filter", IT_CHOICE, &cfg.filter, 0, FILT_COUNT - 1, 1, filters, "How the pixels get drawn.", 0, 0);
  ADD("CRT mask", IT_CHOICE, &cfg.crt_mask, 0, MASK_COUNT - 1, 1, masks, "Phosphor pattern. Easier to see fullscreen.", 0, 0);
  ADD("Scanlines", IT_SLIDER, &cfg.crt_scanlines, 0, 100, 10, NULL, "Scanline strength.", 0, 0);
  ADD("Glow", IT_SLIDER, &cfg.crt_glow, 0, 100, 10, NULL, "Bloom around bright stuff.", 0, 0);
  ADD("Curvature", IT_CHOICE, &cfg.crt_curvature, 0, 1, 1, onoff, "Curved glass, dark corners.", 0, 0);
  ADD("Aspect", IT_CHOICE, &cfg.aspect, 0, ASPECT_COUNT - 1, 1, aspects, "4:3 is how it looked on a TV. 16:9 fill blurs the picture into the sides.", 1, 0);
  ADD("Integer scale", IT_CHOICE, &cfg.integer_scale, 0, 1, 1, onoff, "Even pixels. Might leave borders.", 0, 0);
  ADD("Sound", IT_CHOICE, &cfg.sound, 0, 1, 1, audios, "Accurate adds the Model 1's filter on FM and PSG. CD music is never filtered. Enter plays a sample.", -2, A_SAMPLE);
  ADD("Volume", IT_SLIDER, &cfg.volume, 0, 100, 10, NULL, "Volume.", -2, 0);
  ADD("Fullscreen", IT_CHOICE, &cfg.fullscreen, 0, 1, 1, onoff, "F11 works too.", -1, 0);
  ADD("VSync", IT_CHOICE, &cfg.vsync, 0, 1, 1, onoff, "No tearing.", -1, 0);
  ADD("Show FPS", IT_CHOICE, &cfg.show_fps, 0, 1, 1, onoff, "Frame counter in the corner.", -1, 0);
  ADD("Fast-forward", IT_SLIDER, &cfg.ff_speed, 2, 8, 1, NULL, "Speed while holding Tab.", -1, 0);
  ADD("Intro", IT_CHOICE, &cfg.intro, 0, 1, 1, intros, cfg.intro == INTRO_REMASTERED ? intro_status() : "The game's own opening.", -3, 0);
  ADD("Controller", IT_CHOICE, &cfg.six_button, 0, 1, 1, pads, "Sonic CD was made for the 3 button pad.", -1, 0);
  ADD("Controls", IT_ACTION, NULL, 0, 0, 0, NULL, "Remap keys and pads.", -1, A_CONTROLS);
  if (in_game) ADD("Reset", IT_ACTION, NULL, 0, 0, 0, NULL, "Restart from power-on. Your save is kept.", -1, A_RESET);
  ADD("Quit", IT_ACTION, NULL, 0, 0, 0, NULL, "See you, Sonic.", -1, A_QUIT);
#undef ADD
}

static int sel, page;
void ui_debug_set(int s, int p) { sel = s; page = p; }
static int csel, ccol;
static int capture;
static int hover = -1;

static bool item_enabled(const Item *it) {
  if (it->val == &cfg.crt_mask || it->val == &cfg.crt_scanlines || it->val == &cfg.crt_glow || it->val == &cfg.crt_curvature)
    return cfg.filter == FILT_CRT;
  return true;
}

static void change(Item *it, int dir) {
  if (!it->val || !item_enabled(it)) return;
  int v = *it->val + dir * (it->step ? it->step : 1);
  if (it->type == IT_CHOICE) { if (v < it->min) v = it->max; if (v > it->max) v = it->min; }
  else { if (v < it->min) v = it->min; if (v > it->max) v = it->max; }
  *it->val = v;
}

typedef struct { bool held; double next, up; } Nav;
static bool nav(int vk, u32 pm, Nav *n) {
  double t = plat_time();
  if (input_key(vk) || (input_pad_buttons() & pm)) {
    n->up = 0;
    if (!n->held) { n->held = true; n->next = t + 0.4; return true; }
    if (t >= n->next) { n->next = t + 0.12; return true; }
    return false;
  }
  if (n->held && !n->up) n->up = t;
  else if (n->held && t - n->up > 0.06) n->held = false;
  return false;
}

#define LIST_Y 296.0f
#define LIST_BOTTOM 722.0f
static float row_h(int n) { float h = (LIST_BOTTOM - LIST_Y) / n; return h > 30 ? 30 : h; }
static float sel_anim = -1; static double anim_t;
static float slide(float target) {   // the selection slab slides to the new row
  double t = plat_time(), dt = anim_t ? t - anim_t : 0;
  anim_t = t;
  extern const char *uitest_prefix;
  if (sel_anim < 0 || fabsf(sel_anim - target) > 6 || uitest_prefix) sel_anim = target;   // tests: no motion
  float k = (float)(dt * 22); if (k > 1) k = 1;
  sel_anim += (target - sel_anim) * k;
  if (fabsf(sel_anim - target) < 0.01f) sel_anim = target;
  return sel_anim;
}

static void draw_settings(bool in_game) {
  static ArtRow rows[32]; static char vals[32][32];
  for (int i = 0; i < nitems; i++) {
    Item *it = &items[i];
    ArtRow *r = &rows[i];
    *r = (ArtRow){ it->label, NULL, 0, 0, item_enabled(it), it->type == IT_CHOICE };
    if (it->type == IT_SLIDER && it->val != &cfg.ff_speed) {
      r->slider_max = 10; r->slider = (*it->val - it->min) * 10 / (it->max - it->min);
    } else if (it->val) {
      if (it->type == IT_SLIDER) snprintf(vals[i], sizeof vals[i], "%dx", *it->val);
      else snprintf(vals[i], sizeof vals[i], "%s", it->choices[*it->val]);
      r->value = vals[i]; r->arrows = true;
    }
  }
  art_list(rows, nitems, LIST_Y, row_h(nitems), slide((float)sel), hover);
  art_help(items[sel].help);
  static const char *keys[] = { "\xe2\x86\x91\xe2\x86\x93", "\xe2\x86\x90\xe2\x86\x92", "ENTER", "ESC", "TAB" };
  static const char *acts[] = { "Choose", "Change", "Select", "Resume", "Other scene" };
  const char *k[5], *a[5]; int n = 0;
  for (int i = 0; i < 5; i++) {
    if (i == 3 && !in_game) continue;
    if (i == 4 && items[sel].scene < -1) continue;
    k[n] = keys[i]; a[n++] = acts[i];
  }
  const char *right = in_game ? NULL : update_label();
  art_band(k, a, n, right, right && update_ready());
}

#define CTL_Y 330.0f
#define CTL_K 470.0f
#define CTL_P 820.0f
static void draw_controls(void) {
  int n = BIND_COUNT + 2;
  float rh = (LIST_BOTTOM - CTL_Y) / n; if (rh > 28) rh = 28;
  art_columns("Action", "Keyboard", "Pad", CTL_Y - 10, CTL_K, CTL_P);
  float sy = CTL_Y + slide((float)csel) * rh;
  art_select(ART_LIST_X - 10, sy, 1150, rh);
  float fs = rh * 0.66f > 18 ? 18 : rh * 0.66f, base = rh * 0.5f + fs * 0.36f;
  for (int i = 0; i < n; i++) {
    float y = CTL_Y + i * rh;
    bool s = i == csel;
    u32 c = s ? A_PAPER : A_INK;
    if (i < BIND_COUNT) {
      art_text(VF_BOLD, fs, ART_LIST_X + 14, y + base, c, bind_names[i]);
      const char *kn = (s && capture == 1) ? "Press a key" : key_name(cfg.key[i]);
      const char *pn = (s && capture == 2) ? "Press a button" : (cfg.pad[i] > 0 ? pad_button_names[cfg.pad[i] - 1] : "-");
      if (s) {
        art_cell(CTL_K, y, 320, rh, kn, ccol == 0, capture == 1);
        art_cell(CTL_P, y, 380, rh, pn, ccol == 1, capture == 2);
        if (ccol != 0) art_text(VF_BOLD, fs, CTL_K, y + base, A_PAPER, kn);
        if (ccol != 1) art_text(VF_BOLD, fs, CTL_P, y + base, A_PAPER, pn);
      } else {
        art_text(VF_BOLD, fs, CTL_K, y + base, A_INK, kn);
        art_text(VF_BOLD, fs, CTL_P, y + base, A_INK, pn);
      }
    } else art_text(VF_BOLD, fs, ART_LIST_X + 14, y + base, c, i == BIND_COUNT ? "Reset to defaults" : "Back");
  }
  char buf[200]; int np = input_pad_count(), o;
  o = snprintf(buf, sizeof buf, np ? "Pads:" : "No pads found. Plug one in any time.");
  for (int i = 0; i < np && i < 3 && o < (int)sizeof buf; i++) o += snprintf(buf + o, sizeof buf - o, " %s", input_pad_name(i));
  static const char *k1[] = { "ENTER", "\xe2\x86\x90\xe2\x86\x92", "BACKSPACE", "ESC" }, *a1[] = { "Rebind", "Key or pad", "Clear", "Back" };
  static const char *k2[] = { "ESC", "BACKSPACE" }, *a2[] = { "Cancel", "Clear" };
  if (capture) art_band(k2, a2, 2, buf, false); else art_band(k1, a1, 4, buf, false);
}

static Nav n_up, n_dn, n_lt, n_rt, n_ok, n_bk, n_tab;
static int mouse_x, mouse_y; static bool mouse_click, mouse_was;
static int wheel;
static Rect ubtn;
void ui_mouse(int x, int y, bool down, int wheel_delta) { mouse_x = x; mouse_y = y; if (down && !mouse_was) mouse_click = true; mouse_was = down; wheel += wheel_delta; }

void ui_init(void) {
  sel = 0; page = 0; capture = 0;
  Nav *all[] = { &n_up, &n_dn, &n_lt, &n_rt, &n_ok, &n_bk, &n_tab };
  for (int i = 0; i < 7; i++) { all[i]->held = true; all[i]->up = 0; all[i]->next = 1e300; }
}

UiResult ui_frame(bool in_game) {
  if (!in_game) update_start_check();
  if (update_apply()) return UI_QUIT;
  build_items(in_game);
  if (sel >= nitems) sel = nitems - 1;
  UiResult res = UI_NONE;
#define PM(a, b) ((1u << (a)) | (1u << (b)))
  bool up = nav(VK_UP, PM(PB_DUP, PB_LS_UP), &n_up), dn = nav(VK_DOWN, PM(PB_DDOWN, PB_LS_DOWN), &n_dn);
  bool lt = nav(VK_LEFT, PM(PB_DLEFT, PB_LS_LEFT), &n_lt), rt = nav(VK_RIGHT, PM(PB_DRIGHT, PB_LS_RIGHT), &n_rt);
  bool ok = nav(VK_RETURN, 1u << PB_SOUTH, &n_ok), bk = nav(VK_ESCAPE, 1u << PB_EAST, &n_bk), tb = nav(VK_TAB, 1u << PB_NORTH, &n_tab);
#undef PM
  canvas_ensure(video_width(), video_height());

  if (page == 1) {
    if (capture == 1) {
      int k = input_last_key_pressed(); input_last_pad_pressed();
      if (k == VK_ESCAPE) capture = 0;
      else if (k == VK_BACK) { cfg.key[csel] = 0; capture = 0; }
      else if (k) { cfg.key[csel] = k; capture = 0; }
      ok = bk = up = dn = lt = rt = false;
    } else if (capture == 2) {
      int k = input_last_key_pressed(), b = input_last_pad_pressed();
      if (k == VK_ESCAPE) capture = 0;
      else if (k == VK_BACK) { cfg.pad[csel] = 0; capture = 0; }
      else if (b >= 0) { cfg.pad[csel] = b + 1; capture = 0; }
      ok = bk = up = dn = lt = rt = false;
      n_ok.held = n_bk.held = true; n_ok.up = n_bk.up = 0; n_ok.next = n_bk.next = 1e300;
    } else {
      if (up) csel = (csel + BIND_COUNT + 1) % (BIND_COUNT + 2);
      if (dn) csel = (csel + 1) % (BIND_COUNT + 2);
      if (lt || rt) ccol ^= 1;
      if (input_key(VK_BACK) && csel < BIND_COUNT) { if (ccol) cfg.pad[csel] = 0; else cfg.key[csel] = 0; }
      if (ok) {
        if (csel < BIND_COUNT) { capture = ccol ? 2 : 1; input_flush_edges(); }
        else if (csel == BIND_COUNT) cfg_defaults_bindings(&cfg);
        else page = 0;
      }
      if (bk) page = 0;
    }
  } else {
    float mx, my;
    art_begin(ui_px, ui_w, ui_h);
    art_page_pos(mouse_x, mouse_y, &mx, &my);
    if (update_ready() && ((mouse_click && mouse_x >= ubtn.x && mouse_x < ubtn.x + ubtn.w && mouse_y >= ubtn.y && mouse_y < ubtn.y + ubtn.h) || input_key('U'))) update_download();
    if (mouse_x >= 0 && mx >= ART_LIST_X - 14 && mx < ART_LIST_X + ART_LIST_W + 14 && my >= LIST_Y) {
      int i = (int)((my - LIST_Y) / row_h(nitems));
      hover = i < nitems ? i : -1;
      if (hover >= 0 && mouse_click) { sel = hover; if (items[sel].type == IT_ACTION) ok = true; else change(&items[sel], 1); }
      if (hover >= 0 && wheel) { sel = hover; change(&items[sel], wheel > 0 ? 1 : -1); }
    } else hover = -1;
    if (up) sel = (sel + nitems - 1) % nitems;
    if (dn) sel = (sel + 1) % nitems;
    if (lt) change(&items[sel], -1);
    if (rt) change(&items[sel], 1);
    if (tb) scene = scene < 0 ? (items[sel].scene == 1 ? 0 : 1) : scene ^ 1;
    if (ok) {
      switch (items[sel].id) {
      case A_START: res = in_game ? UI_RESUME : UI_START_GAME; break;
      case A_CONTROLS: page = 1; csel = 0; ccol = 0; break;
      case A_RESET: res = UI_RESET; break;
      case A_QUIT: res = UI_QUIT; break;
      case A_SAMPLE: if (preview_clip(cfg.sound == SOUND_ACCURATE) && clip_frames) audio_play_clip(preview_clip(cfg.sound == SOUND_ACCURATE), clip_frames); break;
      default: if (items[sel].type == IT_CHOICE) change(&items[sel], 1);
      }
    }
    if (bk && in_game) res = UI_RESUME;
  }
  mouse_click = false; wheel = 0;

  // background (cached per window size and state), then the page
  int key = (page << 1) | (in_game ? 1 : 0);
  if (key != bg_key) {
    art_begin(ui_bg, ui_w, ui_h);
    art_background(in_game);
    if (page == 0) art_monitor();
    bg_key = key;
  }
  memcpy(ui_px, ui_bg, (size_t)ui_w * ui_h * 4);
  art_begin(ui_px, ui_w, ui_h);
  Rect pr = art_monitor(), ir = {0, 0, 0, 0};
  if (page == 1) {
    memcpy(ui_px, ui_bg, (size_t)ui_w * ui_h * 4);   // no monitor on this page
    draw_controls();
  } else {
    draw_settings(in_game);
    if (in_game) art_paused();
    if (items[sel].scene == -3) { if (!istill[0]) art_note(pr, "Warming up\xe2\x80\xa6"); }
    else if (sc[0]) ir = art_inset(pr);
    else art_note(pr, "Warming up\xe2\x80\xa6");
  }
  ubtn = art_band_button();
  video_clear(1, 1, 1);
  video_draw_rgba(ui_px, ui_w, ui_h, (Rect){ 0, 0, ui_w, ui_h }, false);

  if (page == 0 && items[sel].scene == -3) {
    // a still of the chosen intro: the remaster fills the monitor's width at 16:9, the FMV is drawn like the game
    if (cfg.intro == INTRO_REMASTERED && istill[1]) {
      int h = pr.w * istill_h[1] / istill_w[1];
      video_draw_rgba(istill[1], istill_w[1], istill_h[1], (Rect){ pr.x, pr.y + (pr.h - h) / 2, pr.w, h }, false);
    } else if (istill[0]) {
      video_upload_game(istill[0], istill_w[0], istill_h[0]);
      video_draw_game(&cfg, pr, 0, 0, 1, 1);
    }
  } else if (page == 0 && sc[0]) {
    int s = scene >= 0 ? scene : (items[sel].scene == 1 ? 1 : 0);
    if (cfg.filter == FILT_PIXELART) {
      if (!pv_big) pv_big = malloc(GAME_W * 4 * GAME_H * 4 * 4);
      scale_epx(sc[s], sc_w[s], GAME_H, pv_big, 4);
      video_upload_game(pv_big, sc_w[s] * 4, GAME_H * 4);
    } else video_upload_game(sc[s], sc_w[s], GAME_H);
    video_draw_game(&cfg, pr, 0, 0, 1, 1);
    float cxu = s == 1 ? 0.30f : 0.42f, cyv = s == 1 ? 0.62f : 0.28f, du = 0.5f / 6, dv = 0.5f / 6 * ((float)ir.h / ir.w) * (4.0f / 3);
    video_draw_game(&cfg, ir, cxu - du, cyv - dv, cxu + du, cyv + dv);
  }
  return res;
}

static char osd_text[160]; static DWORD osd_until;
void osd_message(const char *fmt, ...) {
  va_list ap; va_start(ap, fmt); vsnprintf(osd_text, sizeof osd_text, fmt, ap); va_end(ap);
  osd_until = GetTickCount() + 2500;
}

void osd_draw(double fps) {
  char fpsbuf[32] = "";
  if (cfg.show_fps) snprintf(fpsbuf, sizeof fpsbuf, "%.1f fps", fps);
  bool msg = GetTickCount() < osd_until;
  if (!msg && !fpsbuf[0]) return;
  float sc = video_height() / (float)ART_H;
  if (sc < 0.6f) sc = 0.6f;
  int w = (int)(640 * sc), h = (int)(110 * sc);
  static u32 *ov; static int ow, oh;
  if (ow != w || oh != h) { free(ov); ov = malloc((size_t)w * h * 4); ow = w; oh = h; }
  memset(ov, 0, (size_t)w * h * 4);
  art_osd(ov, w, h, sc, msg ? osd_text : NULL, fpsbuf[0] ? fpsbuf : NULL);
  video_draw_rgba(ov, w, h, (Rect){ (int)(8 * sc), (int)(8 * sc), w, h }, true);
}

// a line of text in the bottom-right corner of r (the remastered opening's credit)
void osd_caption(const char *s, float alpha, Rect r) {
  if (alpha <= 0) return;
  float sc = r.h / (float)ART_H * 1.25f;
  if (sc < 0.6f) sc = 0.6f;
  int w, h;
  art_caption_size(sc, s, &w, &h);
  static u32 *ov; static int ow, oh;
  if (ow != w || oh != h) { free(ov); ov = malloc((size_t)w * h * 4); ow = w; oh = h; }
  memset(ov, 0, (size_t)w * h * 4);
  art_caption(ov, w, h, sc, s);
  if (alpha < 1) for (int i = 0; i < w * h; i++) ov[i] = (u32)((ov[i] >> 24) * alpha) << 24 | (ov[i] & 0xffffff);
  video_draw_rgba(ov, w, h, (Rect){ r.x + r.w - w - (int)(10 * sc), r.y + r.h - h - (int)(10 * sc), w, h }, true);
}
