#include "app.h"
#include <stdarg.h>

static int px = 1;
static void canvas_ensure(int ww, int wh) {
  px = wh / 240 > 1 ? wh / 240 : 1;
  gfx_canvas((ww + px - 1) / px, (wh + px - 1) / px);
}

static const u32 *sc[2]; static int sc_w[2];
static int clip_frames;
static int scene = -1;
static u32 *pv_big;
const s16 *preview_clip(int accurate);

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
  ADD("Intro", IT_CHOICE, &cfg.intro, 0, 1, 1, intros, cfg.intro == INTRO_REMASTERED ? intro_status() : "The game's own opening.", -1, 0);
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

#define TOP 30
static int list_w(void) { return cw * 46 / 100; }
static int row_h(void) { int h = (ch - TOP - 24) / nitems; return h > 15 ? 15 : h; }
static Rect comm_rect(void) { int x = list_w() + 12; return (Rect){ x, ch - 52, cw - x - 6, 36 }; }
static Rect preview_rect(void) {
  int x = list_w() + 16, y = TOP + 10, w = cw - x - 10, h = comm_rect().y - 10 - y;
  if (h > w * 3 / 4) h = w * 3 / 4;
  return (Rect){ x, y, w, h };
}

static void draw_settings(bool in_game) {
  int x0 = 6, lw = list_w(), lh = row_h(), y = TOP + 10;
  panel(x0, TOP + 4, lw, nitems * lh + 12, C_PANEL, C_EDGE);
  tab(x0 + 8, TOP - 2, in_game ? "PAUSED" : "SETUP");
  int vx = x0 + lw * 52 / 100, vw = lw - (vx - x0) - 6;
  for (int i = 0; i < nitems; i++) {
    Item *it = &items[i];
    bool en = item_enabled(it), s = i == sel;
    if (s || i == hover) fill(x0 + 2, y, lw - 4, lh - 1, s ? C_ROW : RGB(44, 54, 128));
    if (s) sparkle(x0 + 9, y + lh / 2);
    text(x0 + 17, y + (lh - 13) / 2, f_item, !en ? C_DIM : s ? C_SEL : C_TEXT, it->label);
    if (it->val) {
      Rect v = { vx, y + 2, vw, lh - 4 };
      fill(v.x, v.y, v.w, v.h, C_INSET);
      COLORREF c = en ? C_LCD : C_DIM;
      if (it->type == IT_SLIDER && it->val != &cfg.ff_speed) {
        int segs = 10, sw = (v.w - 4) / segs, on = (*it->val - it->min) * segs / (it->max - it->min);
        for (int k = 0; k < segs; k++) fill(v.x + 2 + k * sw, v.y + 2, sw - 1, v.h - 4, k < on ? c : RGB(24, 32, 72));
      } else {
        char b[32];
        if (it->type == IT_SLIDER) snprintf(b, sizeof b, "%dx", *it->val); else snprintf(b, sizeof b, "%s", it->choices[*it->val]);
        text(v.x + (v.w - text_w(f_item, b)) / 2, v.y + (v.h - 13) / 2, f_item, c, b);
        if (s && en) { text(v.x + 2, v.y + (v.h - 13) / 2, f_item, C_TAB, "<"); text_r(v.x + v.w - 2, v.y + (v.h - 13) / 2, f_item, C_TAB, ">"); }
      }
    }
    y += lh;
  }
  Rect pr = preview_rect();
  panel(pr.x - 4, pr.y - 4, pr.w + 8, pr.h + 8, RGB(0, 0, 0), C_EDGE);
  tab(pr.x + 4, pr.y - 10, items[sel].scene == -2 ? "SOUND" : "MONITOR");
  if (items[sel].scene != -2) text_r(pr.x + pr.w, pr.y + pr.h + 6, f_tab, C_DIM, "Tab: other scene");
  Rect cr = comm_rect();
  panel(cr.x, cr.y, cr.w, cr.h, C_COMM, C_TEXT);
  text_wrap((Rect){ cr.x + 6, cr.y + 4, cr.w - 16, cr.h - 6 }, f_small, C_TEXT, items[sel].help);
  if (GetTickCount() / 400 % 2) for (int k = 0; k < 3; k++) fill(cr.x + cr.w - 10 + k, cr.y + cr.h - 8 + k, 5 - 2 * k, 1, C_SEL);
  text(x0 + 2, ch - 13, f_tab, C_DIM, in_game ? "Arrows move   Enter picks   Esc resumes" : "Arrows move   Enter picks   Mouse and pads work too");
}

static void draw_controls(void) {
  int x0 = 6, w = cw - 12, lh = (ch - TOP - 40) / (BIND_COUNT + 2);
  if (lh > 14) lh = 14;
  int c1 = x0 + w * 36 / 100, c2 = x0 + w * 66 / 100, y = TOP + 12;
  panel(x0, TOP + 4, w, (BIND_COUNT + 2) * lh + 14, C_PANEL, C_EDGE);
  tab(x0 + 8, TOP - 2, "CONTROLS"); tab(c1, TOP - 2, "KEY"); tab(c2, TOP - 2, "PAD");
  for (int i = 0; i <= BIND_COUNT + 1; i++) {
    bool s = i == csel;
    if (s) fill(x0 + 2, y, w - 4, lh - 1, C_ROW);
    if (s) sparkle(x0 + 9, y + lh / 2);
    int ty = y + (lh - 13) / 2;
    if (i < BIND_COUNT) {
      text(x0 + 17, ty, f_item, s ? C_SEL : C_TEXT, bind_names[i]);
      const char *kn = (s && capture == 1) ? "Press a key" : key_name(cfg.key[i]);
      const char *pn = (s && capture == 2) ? "Press a button" : (cfg.pad[i] > 0 ? pad_button_names[cfg.pad[i] - 1] : "-");
      if (s && ccol == 0) fill(c1 - 2, y + 1, c2 - c1 - 8, lh - 3, C_INSET);
      if (s && ccol == 1) fill(c2 - 2, y + 1, x0 + w - c2 - 4, lh - 3, C_INSET);
      text(c1 + 2, ty, f_item, s && ccol == 0 ? C_LCD : C_TAB, kn);
      text(c2 + 2, ty, f_item, s && ccol == 1 ? C_LCD : C_TAB, pn);
    } else text(x0 + 17, ty, f_item, s ? C_SEL : C_TEXT, i == BIND_COUNT ? "Reset to defaults" : "Back");
    y += lh;
  }
  char buf[200]; int n = input_pad_count(), o;
  o = snprintf(buf, sizeof buf, n ? "Pads:" : "No pads found. Plug one in any time.");
  for (int i = 0; i < n && i < 3 && o < (int)sizeof buf; i++) o += snprintf(buf + o, sizeof buf - o, "  %s", input_pad_name(i));
  text(x0 + 2, ch - 25, f_small, C_DIM, buf);
  text(x0 + 2, ch - 13, f_tab, C_DIM, capture ? "Esc cancels   Backspace clears"
                                               : "Enter rebinds   Left/Right switch column   Backspace clears   Esc goes back");
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
    int mx = mouse_x / px, my = mouse_y / px, ytop = TOP + 10;
    if (update_ready() && ((mouse_click && mx >= ubtn.x && mx < ubtn.x + ubtn.w && my >= ubtn.y && my < ubtn.y + ubtn.h) || input_key('U'))) update_download();
    if (mouse_x >= 0 && mx >= 6 && mx < 6 + list_w() && my >= ytop) {
      int i = (my - ytop) / row_h();
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

  fill(0, 0, cw, ch, C_SPACE);
  stars();
  logo(8, 2);
  text_r(cw - 8, 10, f_small, C_DIM, in_game ? "Paused" : "brought to you by carlos ramirez :)");
  if (page == 1) draw_controls(); else draw_settings(in_game);
  ubtn.w = 0;
  if (page == 0 && !in_game && update_label()) {
    const char *l = update_label();
    int w = text_w(f_tab, l) + 10;
    ubtn = (Rect){ cw - 8 - w, ch - 15, w, 13 };
    if (update_ready()) { panel(ubtn.x, ubtn.y, w, 13, C_ROW, C_SEL); text(ubtn.x + 5, ubtn.y + 1, f_tab, C_SEL, l); }
    else text_r(cw - 8, ch - 13, f_tab, C_DIM, l);
  }
  Rect pr = preview_rect();
  if (page == 0 && !sc[0]) text(pr.x + (pr.w - text_w(f_small, "Warming up...")) / 2, pr.y + pr.h / 2 - 6, f_small, C_DIM, "Warming up...");
  GdiFlush();
  for (int i = 0; i < cw * ch; i++) canvas[i] |= 0xff000000;
  video_clear(0, 0, 0);
  video_draw_rgba(canvas, cw, ch, (Rect){ 0, 0, cw * px, ch * px }, false);
  pr = (Rect){ pr.x * px, pr.y * px, pr.w * px, pr.h * px };

  if (page == 0 && sc[0]) {
    int s = scene >= 0 ? scene : (items[sel].scene == 1 ? 1 : 0);
    if (cfg.filter == FILT_PIXELART) {
      if (!pv_big) pv_big = malloc(GAME_W * 4 * GAME_H * 4 * 4);
      scale_epx(sc[s], sc_w[s], GAME_H, pv_big, 4);
      video_upload_game(pv_big, sc_w[s] * 4, GAME_H * 4);
    } else video_upload_game(sc[s], sc_w[s], GAME_H);
    video_draw_game(&cfg, pr, 0, 0, 1, 1);
    int iw = pr.w / 3, ih = pr.h / 3;
    Rect ir = { pr.x + pr.w - iw - 4 * px, pr.y + pr.h - ih - 4 * px, iw, ih };
    static const u32 edge = 0xff88a0e8;
    video_draw_rgba(&edge, 1, 1, (Rect){ ir.x - px, ir.y - px, ir.w + 2 * px, ir.h + 2 * px }, false);
    float cxu = s == 1 ? 0.30f : 0.42f, cyv = s == 1 ? 0.62f : 0.28f, du = 0.5f / 6, dv = 0.5f / 6 * ((float)ih / iw) * (4.0f / 3);
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
  canvas_ensure(video_width(), video_height());
  static u32 *ov; static int ow, oh;
  int w = cw / 2, h = 30;
  if (ow != w || oh != h) { free(ov); ov = malloc(w * h * 4); ow = w; oh = h; }
  fill(0, 0, w, h, RGB(0, 0, 0));
  if (msg) text(2, 2, f_item, C_SEL, osd_text);
  if (fpsbuf[0]) text(2, 16, f_item, C_LCD, fpsbuf);
  GdiFlush();
  for (int y = 0; y < h; y++)
    for (int x = 0; x < w; x++) {
      u32 p = canvas[y * cw + x];
      u32 l = ((p >> 16) & 255) > ((p >> 8) & 255) ? (p >> 16) & 255 : (p >> 8) & 255;
      ov[y * w + x] = (l ? (u32)(120 + l * 135 / 255) << 24 : 0) | (p & 0xffffff);
    }
  video_draw_rgba(ov, w, h, (Rect){ 4 * px, 4 * px, w * px, h * px }, true);
}
