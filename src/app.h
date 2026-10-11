#pragma once
#include "mcd.h"
#include "gfx.h"
#include "movie.h"

enum { FILT_NEAREST, FILT_SMOOTH, FILT_PIXELART, FILT_CRT, FILT_COUNT };
enum { MASK_APERTURE, MASK_SHADOW, MASK_SLOT, MASK_COUNT };
enum { ASPECT_4_3, ASPECT_SQUARE, ASPECT_16_9_AMBIENT, ASPECT_WIDE, ASPECT_COUNT };   // ASPECT_WIDE: true widescreen in the stages
enum { SOUND_ACCURATE, SOUND_CLEAN };
enum { INTRO_REMASTERED, INTRO_ORIGINAL };

enum { BIND_UP, BIND_DOWN, BIND_LEFT, BIND_RIGHT, BIND_A, BIND_B, BIND_C, BIND_START, BIND_X, BIND_Y, BIND_Z, BIND_MODE,
       BIND_FAST, BIND_SAVE, BIND_LOAD, BIND_MENU, BIND_COUNT };
#define BIND_PAD_COUNT 12
extern const char *bind_names[BIND_COUNT];

typedef struct {
  int filter, crt_mask, crt_curvature, crt_scanlines, crt_glow;
  int aspect, integer_scale, fullscreen, vsync, show_fps;
  int sound, volume, ff_speed, six_button, intro;
  int key[BIND_COUNT];
  int pad[BIND_COUNT];
} Settings;
extern Settings cfg;
void cfg_defaults(Settings *s);
void cfg_load(const char *path);
void cfg_save(const char *path);
void cfg_defaults_bindings(Settings *s);

enum { PB_SOUTH, PB_EAST, PB_WEST, PB_NORTH, PB_L1, PB_R1, PB_L2, PB_R2, PB_SELECT, PB_START, PB_L3, PB_R3, PB_HOME,
       PB_DUP, PB_DDOWN, PB_DLEFT, PB_DRIGHT, PB_LS_UP, PB_LS_DOWN, PB_LS_LEFT, PB_LS_RIGHT, PB_COUNT };
extern const char *pad_button_names[PB_COUNT];
#ifdef _WIN32
void input_init(HWND w);
bool input_wndproc(HWND w, UINT m, WPARAM wp, LPARAM lp);
bool video_init(HWND w);
#else
void input_init(void);
bool video_init(void);
#endif
void input_poll(void);
bool input_key(int vk);
u32 input_pad_buttons(void);
int input_pad_count(void);
const char *input_pad_name(int i);
int input_last_key_pressed(void);
int input_last_pad_pressed(void);
void input_flush_edges(void);
bool input_bind_down(int bind);
u16 input_md_mask(void);
const char *key_name(int vk);

void video_resize(int w, int h);
void video_clear(float r, float g, float b);
void video_upload_game(const u32 *pix, int w, int h);
void video_draw_game(const Settings *s, Rect r, float u0, float v0, float u1, float v1);
void video_draw_rgba(const u32 *pix, int w, int h, Rect r, bool blend);
void video_present(void);
bool video_can_draw_movie(void);
void video_draw_movie(const MovieFrame *f, Rect r, float fade);
int video_width(void), video_height(void);
void scale_epx(const u32 *src, int w, int h, u32 *dst, int factor);

// game picture: 320x224 (H40) or 256x224 (H32), XRGB
#define GAME_W 448   // widest picture: 320, or 428 in widescreen (wide.h)
#define GAME_H 224
int game_picture(u32 *dst, int *w, int *h);

typedef enum { UI_NONE, UI_START_GAME, UI_RESUME, UI_QUIT, UI_RESET } UiResult;
void ui_init(void);
UiResult ui_frame(bool in_game);
void ui_set_preview_frames(const u32 *scene[2], const int scene_w[2], const s16 *audio, int audio_frames);
void ui_set_intro_still(int which, const u32 *pix, int w, int h);   // 0 the game's FMV, 1 the remaster
void osd_message(const char *fmt, ...);
void osd_draw(double fps);
void osd_caption(const char *s, float alpha, Rect r);   // bottom-right corner of r

// remastered opening (intro.c)
void intro_reset(bool newgame);   // newgame: play the remaster before a new game too
bool intro_holding(void);          // a new game waits for the remaster
void intro_state_loaded(void);
int intro_hold_step(double dt, bool skip, s16 *audio, int max);
bool intro_step(double dt, s16 *audio, int *frames, int max);   // after each emulated frame
bool intro_active(void);
void intro_draw(Rect r);
const char *intro_status(void);
bool intro_still(u32 *out, int w, int h);   // the remaster at the comparison moment

void audio_play_clip(const s16 *pcm, int frames);
void audio_stop_clip(void);
extern bool app_quit;
void app_toggle_fullscreen(void);

#define ABUF_FRAMES 1024
bool plat_open(void);
void plat_events(void);
void plat_fullscreen(bool on);
void plat_vsync(int on);
void plat_error(const char *msg);
void plat_mkdir(const char *path);
double plat_time(void);
void *plat_thread(int (*fn)(void *));
void plat_join(void *t);
void update_start_check(void);
const char *update_label(void);
bool update_ready(void);
void update_download(void);
bool update_apply(void);
bool snd_open(void);
int snd_busy(void);
bool snd_put(const s16 *pcm, int frames);
