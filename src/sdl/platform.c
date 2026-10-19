#include "../app.h"
#include <SDL3/SDL.h>
#include <sys/stat.h>
#include <time.h>
#include <unistd.h>

void ui_mouse(int x, int y, bool down, int wheel_delta);
void input_event(const SDL_Event *e);
void sdl_icon(SDL_Window *w);
static SDL_Window *win;
static SDL_AudioStream *stream;
static float dpi = 1;

static void resize(void) {
  int w, h, pw, ph;
  SDL_GetWindowSize(win, &w, &h);
  SDL_GetWindowSizeInPixels(win, &pw, &ph);
  dpi = w > 0 ? (float)pw / w : 1;
  video_resize(pw, ph);
}

bool plat_open(void) {
  if (!SDL_Init(SDL_INIT_VIDEO)) return false;
  SDL_GL_SetAttribute(SDL_GL_CONTEXT_MAJOR_VERSION, 2);
  SDL_GL_SetAttribute(SDL_GL_CONTEXT_MINOR_VERSION, 1);
  SDL_GL_SetAttribute(SDL_GL_DOUBLEBUFFER, 1);
  int w = 1280, h = 800;
  SDL_Rect ub;
  if (SDL_GetDisplayUsableBounds(SDL_GetPrimaryDisplay(), &ub) && ub.h - 60 < h) { h = ub.h - 60; w = h * 8 / 5; }
  win = SDL_CreateWindow("Sonic CD", w, h, SDL_WINDOW_OPENGL | SDL_WINDOW_RESIZABLE | SDL_WINDOW_HIGH_PIXEL_DENSITY);
  if (!win || !SDL_GL_CreateContext(win) || !video_init()) return false;
  SDL_SetWindowPosition(win, SDL_WINDOWPOS_CENTERED, SDL_WINDOWPOS_CENTERED);
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
    case SDL_EVENT_QUIT: case SDL_EVENT_WINDOW_CLOSE_REQUESTED: app_quit = true; break;
    case SDL_EVENT_WINDOW_PIXEL_SIZE_CHANGED: case SDL_EVENT_WINDOW_RESIZED: resize(); break;
    case SDL_EVENT_MOUSE_MOTION: ui_mouse((int)(e.motion.x * dpi), (int)(e.motion.y * dpi), (e.motion.state & SDL_BUTTON_LMASK) != 0, 0); break;
    case SDL_EVENT_MOUSE_BUTTON_DOWN: case SDL_EVENT_MOUSE_BUTTON_UP:
      if (e.button.button == SDL_BUTTON_LEFT) ui_mouse((int)(e.button.x * dpi), (int)(e.button.y * dpi), e.type == SDL_EVENT_MOUSE_BUTTON_DOWN, 0);
      break;
    case SDL_EVENT_MOUSE_WHEEL: if (e.wheel.y != 0) ui_mouse(-1, -1, false, e.wheel.y > 0 ? 1 : -1); break;
    case SDL_EVENT_KEY_DOWN: {
      SDL_Keycode k = e.key.key; SDL_Keymod m = e.key.mod;
      if (!e.key.repeat && (((m & SDL_KMOD_ALT) && k == SDLK_RETURN) || ((m & SDL_KMOD_GUI) && k == SDLK_F))) app_toggle_fullscreen();
      break;
    }
    }
  }
}

void plat_fullscreen(bool on) { SDL_SetWindowFullscreen(win, on); resize(); }
void plat_vsync(int on) { SDL_GL_SetSwapInterval(on); }
void video_present(void) { SDL_GL_SwapWindow(win); }
void plat_error(const char *msg) { SDL_ShowSimpleMessageBox(SDL_MESSAGEBOX_ERROR, "Sonic CD", msg, win); }
void plat_mkdir(const char *path) { mkdir(path, 0755); }
double plat_time(void) { struct timespec t; clock_gettime(CLOCK_MONOTONIC, &t); return t.tv_sec + t.tv_nsec / 1e9; }
void *plat_thread(int (*fn)(void *)) { return SDL_CreateThread(fn, "preview", NULL); }
void plat_join(void *t) { SDL_WaitThread(t, NULL); }

// sound: a stream the device pulls from; what's queued in it is what the frame pacing reads.
// SDL picks a driver that has devices, but not necessarily one to play on (PipeWire with only inputs,
// say, while PulseAudio does the playing): if the default device won't open, each driver is tried in turn.
static bool open_with(const char *driver) {
  SDL_SetHint(SDL_HINT_AUDIO_DRIVER, driver);
  if (!SDL_InitSubSystem(SDL_INIT_AUDIO)) return false;
  SDL_AudioSpec spec = { SDL_AUDIO_S16, 2, 48000 };
  stream = SDL_OpenAudioDeviceStream(SDL_AUDIO_DEVICE_DEFAULT_PLAYBACK, &spec, NULL, NULL);
  if (stream) return true;
  SDL_QuitSubSystem(SDL_INIT_AUDIO);
  return false;
}
bool snd_open(void) {
  SDL_SetHint(SDL_HINT_AUDIO_DEVICE_SAMPLE_FRAMES, "1024");
  char tried[256] = "";
  bool ok = open_with(NULL);
  if (!ok) snprintf(tried, sizeof tried, "%s", SDL_GetError());
  for (int i = 0; !ok && i < SDL_GetNumAudioDrivers(); i++) {
    const char *d = SDL_GetAudioDriver(i);
    if (strcmp(d, "dummy") && strcmp(d, "disk")) ok = open_with(d);
  }
  SDL_ResetHint(SDL_HINT_AUDIO_DRIVER);
  static bool told;   // (the app keeps trying: say it once)
  if (!ok) { if (!told) fprintf(stderr, "no sound: %s\n", tried); told = true; return false; }
  fprintf(stderr, "sound: %s, %s\n", SDL_GetCurrentAudioDriver(), SDL_GetAudioDeviceName(SDL_GetAudioStreamDevice(stream)));
  SDL_ResumeAudioStreamDevice(stream);
  return true;
}
int snd_busy(void) { return stream ? SDL_GetAudioStreamQueued(stream) / 4 : 0; }
bool snd_put(const s16 *pcm, int frames) {
  if (snd_busy() + frames > ABUF_FRAMES * 8) return false;
  return SDL_PutAudioStreamData(stream, pcm, frames * 4);
}
