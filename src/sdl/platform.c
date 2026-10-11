#include "../app.h"
#include <SDL.h>
#include <sys/stat.h>
#include <time.h>
#include <unistd.h>

void ui_mouse(int x, int y, bool down, int wheel_delta);
void input_event(const SDL_Event *e);
void sdl_icon(SDL_Window *w);
static SDL_Window *win;
static SDL_AudioDeviceID dev;
static float dpi = 1;

static void resize(void) {
  int w, h, pw, ph;
  SDL_GetWindowSize(win, &w, &h);
  SDL_GL_GetDrawableSize(win, &pw, &ph);
  dpi = w > 0 ? (float)pw / w : 1;
  video_resize(pw, ph);
}

bool plat_open(void) {
  SDL_SetHint(SDL_HINT_GAMECONTROLLER_USE_BUTTON_LABELS, "0");
  if (SDL_Init(SDL_INIT_VIDEO) < 0) return false;
  SDL_GL_SetAttribute(SDL_GL_CONTEXT_MAJOR_VERSION, 2);
  SDL_GL_SetAttribute(SDL_GL_CONTEXT_MINOR_VERSION, 1);
  SDL_GL_SetAttribute(SDL_GL_DOUBLEBUFFER, 1);
  int w = 1280, h = 800;
  SDL_Rect ub;
  if (!SDL_GetDisplayUsableBounds(0, &ub) && ub.h - 60 < h) { h = ub.h - 60; w = h * 8 / 5; }
  win = SDL_CreateWindow("Sonic CD", SDL_WINDOWPOS_CENTERED, SDL_WINDOWPOS_CENTERED, w, h,
                         SDL_WINDOW_OPENGL | SDL_WINDOW_RESIZABLE | SDL_WINDOW_ALLOW_HIGHDPI);
  if (!win || !SDL_GL_CreateContext(win) || !video_init()) return false;
  sdl_icon(win);
  resize();
  input_init();
  return true;
}

void plat_events(void) {
  SDL_Event e;
  while (SDL_PollEvent(&e)) {
    input_event(&e);
    switch (e.type) {
    case SDL_QUIT: app_quit = true; break;
    case SDL_WINDOWEVENT:
      if (e.window.event == SDL_WINDOWEVENT_SIZE_CHANGED) resize();
      else if (e.window.event == SDL_WINDOWEVENT_CLOSE) app_quit = true;
      break;
    case SDL_MOUSEMOTION: ui_mouse((int)(e.motion.x * dpi), (int)(e.motion.y * dpi), (e.motion.state & SDL_BUTTON_LMASK) != 0, 0); break;
    case SDL_MOUSEBUTTONDOWN: case SDL_MOUSEBUTTONUP:
      if (e.button.button == SDL_BUTTON_LEFT) ui_mouse((int)(e.button.x * dpi), (int)(e.button.y * dpi), e.type == SDL_MOUSEBUTTONDOWN, 0);
      break;
    case SDL_MOUSEWHEEL: if (e.wheel.y) ui_mouse(-1, -1, false, e.wheel.y > 0 ? 1 : -1); break;
    case SDL_KEYDOWN: {
      SDL_Keycode k = e.key.keysym.sym; Uint16 m = e.key.keysym.mod;
      if (!e.key.repeat && (((m & KMOD_ALT) && k == SDLK_RETURN) || ((m & KMOD_GUI) && k == SDLK_f))) app_toggle_fullscreen();
      break;
    }
    }
  }
}

void plat_fullscreen(bool on) { SDL_SetWindowFullscreen(win, on ? SDL_WINDOW_FULLSCREEN_DESKTOP : 0); resize(); }
void plat_vsync(int on) { SDL_GL_SetSwapInterval(on); }
void video_present(void) { SDL_GL_SwapWindow(win); }
void plat_error(const char *msg) { SDL_ShowSimpleMessageBox(SDL_MESSAGEBOX_ERROR, "Sonic CD", msg, win); }
void plat_mkdir(const char *path) { mkdir(path, 0755); }
double plat_time(void) { struct timespec t; clock_gettime(CLOCK_MONOTONIC, &t); return t.tv_sec + t.tv_nsec / 1e9; }
void *plat_thread(int (*fn)(void *)) { return SDL_CreateThread(fn, "preview", NULL); }
void plat_join(void *t) { SDL_WaitThread(t, NULL); }

bool snd_open(void) {
  if (SDL_InitSubSystem(SDL_INIT_AUDIO) < 0) return false;
  SDL_AudioSpec want = { 0 }, have;
  want.freq = 48000; want.format = AUDIO_S16SYS; want.channels = 2; want.samples = 1024;
  dev = SDL_OpenAudioDevice(NULL, 0, &want, &have, 0);
  if (!dev) return false;
  SDL_PauseAudioDevice(dev, 0);
  return true;
}
int snd_busy(void) { return (int)(SDL_GetQueuedAudioSize(dev) / 4); }
bool snd_put(const s16 *pcm, int frames) {
  if (snd_busy() + frames > ABUF_FRAMES * 8) return false;
  return SDL_QueueAudio(dev, pcm, (Uint32)frames * 4) == 0;
}
