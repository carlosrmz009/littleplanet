#include "app.h"
#include "io.h"

Settings cfg;

const char *pad_button_names[PB_COUNT] = { "South (A/Cross)", "East (B/Circle)", "West (X/Square)", "North (Y/Triangle)",
  "L1/LB", "R1/RB", "L2/LT", "R2/RT", "Select/Back", "Start", "L3", "R3", "Home/Guide",
  "D-pad Up", "D-pad Down", "D-pad Left", "D-pad Right", "Stick Up", "Stick Down", "Stick Left", "Stick Right" };

const char *bind_names[BIND_COUNT] = { "Up", "Down", "Left", "Right", "A", "B", "C", "Start", "X", "Y", "Z", "Mode",
                                       "Fast forward", "Save state", "Load state", "Menu" };

void cfg_defaults_bindings(Settings *s) {
  static const int keys[BIND_COUNT] = { VK_UP, VK_DOWN, VK_LEFT, VK_RIGHT, 'Z', 'X', 'C', VK_RETURN, 'A', 'S', 'D', VK_RSHIFT,
                                        VK_TAB, VK_F2, VK_F4, VK_ESCAPE };
  static const int pads[BIND_COUNT] = { PB_DUP, PB_DDOWN, PB_DLEFT, PB_DRIGHT, PB_WEST, PB_SOUTH, PB_EAST, PB_START,
                                        PB_L1, PB_NORTH, PB_R1, PB_SELECT, PB_R2, -1, -1, PB_HOME };
  for (int i = 0; i < BIND_COUNT; i++) { s->key[i] = keys[i]; s->pad[i] = pads[i] + 1; }
}

void cfg_defaults(Settings *s) {
  memset(s, 0, sizeof *s);
  s->filter = FILT_SMOOTH; s->crt_mask = MASK_APERTURE; s->crt_curvature = 1; s->crt_scanlines = 70; s->crt_glow = 40;
  s->aspect = ASPECT_4_3; s->integer_scale = 0; s->fullscreen = 0; s->vsync = 1; s->show_fps = 0;
  s->sound = SOUND_CLEAN; s->volume = 100; s->ff_speed = 4; s->fast_cd = 0; s->six_button = 0;
  cfg_defaults_bindings(s);
}

#define FIELDS(X) X(filter) X(crt_mask) X(crt_curvature) X(crt_scanlines) X(crt_glow) X(aspect) X(integer_scale) \
  X(fullscreen) X(vsync) X(show_fps) X(sound) X(volume) X(ff_speed) X(fast_cd) X(six_button) X(intro)

void cfg_load(const char *path) {
  cfg_defaults(&cfg);
  FILE *f = fopen(path, "r");
  if (!f) return;
  char line[256];
  while (fgets(line, sizeof line, f)) {
    char k[64]; int v;
    if (sscanf(line, " %63[^= ] = %d", k, &v) != 2) continue;
#define X(n) if (!strcmp(k, #n)) cfg.n = v;
    FIELDS(X)
#undef X
    for (int i = 0; i < BIND_COUNT; i++) {
      char nm[64];
      snprintf(nm, sizeof nm, "key_%d", i); if (!strcmp(k, nm)) cfg.key[i] = v;
      snprintf(nm, sizeof nm, "pad_%d", i); if (!strcmp(k, nm)) cfg.pad[i] = v;
    }
  }
  fclose(f);
  if (cfg.filter < 0 || cfg.filter >= FILT_COUNT) cfg.filter = FILT_SMOOTH;
  if (cfg.aspect < 0 || cfg.aspect >= ASPECT_COUNT) cfg.aspect = ASPECT_4_3;
  if (cfg.sound < 0 || cfg.sound > 1) cfg.sound = SOUND_CLEAN;
  if (cfg.intro < 0 || cfg.intro > 1) cfg.intro = INTRO_REMASTERED;
}

void cfg_save(const char *path) {
  FILE *f = fopen(path, "w");
  if (!f) return;
  fprintf(f, "; Little Planet settings (also editable from the in-game menu)\n");
#define X(n) fprintf(f, "%s = %d\n", #n, cfg.n);
  FIELDS(X)
#undef X
  for (int i = 0; i < BIND_COUNT; i++) fprintf(f, "key_%d = %d ; %s (virtual key)\npad_%d = %d ; %s (pad button + 1)\n",
                                               i, cfg.key[i], bind_names[i], i, cfg.pad[i], bind_names[i]);
  fclose(f);
}

bool input_bind_down(int b) {
  if (input_key(cfg.key[b])) return true;
  return cfg.pad[b] > 0 && (input_pad_buttons() & (1u << (cfg.pad[b] - 1)));
}

u16 input_md_mask(void) {
  static const u16 bits[BIND_PAD_COUNT] = { PAD_UP, PAD_DOWN, PAD_LEFT, PAD_RIGHT, PAD_A, PAD_B, PAD_C, PAD_START,
                                            PAD_X, PAD_Y, PAD_Z, PAD_MODE };
  u16 m = 0;
  for (int i = 0; i < BIND_PAD_COUNT; i++) if (input_bind_down(i)) m |= bits[i];
  u32 p = input_pad_buttons();
  if (p & (1u << PB_LS_UP)) m |= PAD_UP;
  if (p & (1u << PB_LS_DOWN)) m |= PAD_DOWN;
  if (p & (1u << PB_LS_LEFT)) m |= PAD_LEFT;
  if (p & (1u << PB_LS_RIGHT)) m |= PAD_RIGHT;
  // a real d-pad can't press opposite directions
  if ((m & (PAD_UP | PAD_DOWN)) == (PAD_UP | PAD_DOWN)) m &= ~(PAD_UP | PAD_DOWN);
  if ((m & (PAD_LEFT | PAD_RIGHT)) == (PAD_LEFT | PAD_RIGHT)) m &= ~(PAD_LEFT | PAD_RIGHT);
  if (!cfg.six_button) m &= ~(PAD_X | PAD_Y | PAD_Z | PAD_MODE);
  return m;
}
