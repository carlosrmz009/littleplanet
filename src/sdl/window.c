#include "../gfx.h"
#include <SDL.h>
#include <stdio.h>
#include <string.h>
#include <time.h>

char gfx_drop[1024];
int sdl_vk(const SDL_Keysym *k);
void sdl_icon(SDL_Window *w);

uint32_t GetTickCount(void) { struct timespec t; clock_gettime(CLOCK_MONOTONIC, &t); return (uint32_t)(t.tv_sec * 1000 + t.tv_nsec / 1000000); }
void Sleep(uint32_t ms) { SDL_Delay(ms); }

void fill(int x, int y, int w, int h, COLORREF c) {
  if (x < 0) { w += x; x = 0; }
  if (y < 0) { h += y; y = 0; }
  if (x + w > cw) w = cw - x;
  if (y + h > ch) h = ch - y;
  if (w <= 0 || h <= 0) return;
  uint32_t p = (c & 255) << 16 | (c & 0xff00) | (c >> 16 & 255);
  for (int j = y; j < y + h; j++)
    for (int i = x; i < x + w; i++) canvas[j * cw + i] = p;
}

void text_wrap(Rect r, HFONT f, COLORREF c, const char *s) {
  char b[512];
  int y = r.y;
  while (*s && y < r.y + r.h) {
    int cut = 0, n = 0;
    for (;;) {
      while (s[n] && s[n] != ' ') n++;
      if (n >= (int)sizeof b) break;
      memcpy(b, s, n); b[n] = 0;
      if (cut && text_w(f, b) > r.w) break;
      cut = n;
      if (!s[n]) break;
      n++;
    }
    if (!cut) return;
    memcpy(b, s, cut); b[cut] = 0;
    text(r.x, y, f, c, b);
    y += font_height(f);
    s += cut;
    while (*s == ' ') s++;
  }
}

int gfx_window(const wchar_t *title, int w, int h, int (*step)(void)) {
  char t[128]; size_t k = 0;
  for (; title[k] && k < sizeof t - 1; k++) t[k] = (char)title[k];
  t[k] = 0;
  SDL_SetHint(SDL_HINT_RENDER_SCALE_QUALITY, "0");
  if (SDL_InitSubSystem(SDL_INIT_VIDEO) < 0) return -1;
  SDL_Rect ub = { 0, 0, 1280, 800 };
  SDL_GetDisplayUsableBounds(0, &ub);
  int gpx = ub.h * 55 / 100 / h; if (gpx < 2) gpx = 2;
  SDL_Window *win = SDL_CreateWindow(t, SDL_WINDOWPOS_CENTERED, SDL_WINDOWPOS_CENTERED, w * gpx, h * gpx, SDL_WINDOW_ALLOW_HIGHDPI);
  SDL_Renderer *r = win ? SDL_CreateRenderer(win, -1, 0) : NULL;
  SDL_Texture *tx = r ? SDL_CreateTexture(r, SDL_PIXELFORMAT_RGB888, SDL_TEXTUREACCESS_STREAMING, w, h) : NULL;
  if (!tx) return -1;
  sdl_icon(win);
  gfx_canvas(w, h); gfx_begin();
  SDL_RaiseWindow(win);
  int res = 0;
  while (!res) {
    SDL_Event e;
    while (SDL_PollEvent(&e)) {
      if (e.type == SDL_QUIT || (e.type == SDL_WINDOWEVENT && e.window.event == SDL_WINDOWEVENT_CLOSE)) res = -1;
      else if (e.type == SDL_MOUSEMOTION) { gfx_mx = e.motion.x / gpx; gfx_my = e.motion.y / gpx; gfx_moved = true; }
      else if (e.type == SDL_MOUSEBUTTONDOWN && e.button.button == SDL_BUTTON_LEFT) gfx_click = true;
      else if (e.type == SDL_KEYDOWN) gfx_key = sdl_vk(&e.key.keysym);
      else if (e.type == SDL_DROPFILE) { snprintf(gfx_drop, sizeof gfx_drop, "%s", e.drop.file); SDL_free(e.drop.file); }
    }
    if (res) break;
    res = gfx_frame(step, (SDL_GetModState() & KMOD_SHIFT) != 0);
    SDL_UpdateTexture(tx, NULL, canvas, w * 4);
    SDL_RenderClear(r); SDL_RenderCopy(r, tx, NULL, NULL); SDL_RenderPresent(r);
    SDL_Delay(16);
  }
  SDL_DestroyTexture(tx); SDL_DestroyRenderer(r); SDL_DestroyWindow(win);
  return res;
}
