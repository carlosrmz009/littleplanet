#include "../app.h"
#include <SDL3/SDL.h>

// Keyboard and gamepads through SDL3 (positional buttons: south/east/west/north, whatever the brand).
// A key or button pressed and let go between two polls still counts as down for one poll.
static bool keys[256], key_tap[256], key_tap_now[256];
static int last_key, last_pad = -1;
static u32 pad_prev, pad_state, pad_tap, pad_tap_now;
#define MAXPAD 8
static SDL_Gamepad *pads[MAXPAD]; static int npads;

int sdl_vk(SDL_Keycode s, SDL_Scancode c) {
  if (s >= 'a' && s <= 'z') return (int)(s - 'a' + 'A');
  if (s >= '0' && s <= '9') return (int)s;
  switch (s) {
  case ';': return VK_OEM_1; case '=': return VK_OEM_PLUS; case ',': return VK_OEM_COMMA; case '-': return VK_OEM_MINUS;
  case '.': return VK_OEM_PERIOD; case '/': return VK_OEM_2; case '`': return VK_OEM_3; case '[': return VK_OEM_4;
  case '\\': return VK_OEM_5; case ']': return VK_OEM_6; case '\'': return VK_OEM_7;
  }
  if (c >= SDL_SCANCODE_F1 && c <= SDL_SCANCODE_F12) return VK_F1 + (c - SDL_SCANCODE_F1);
  if (c >= SDL_SCANCODE_F13 && c <= SDL_SCANCODE_F24) return VK_F13 + (c - SDL_SCANCODE_F13);
  if (c >= SDL_SCANCODE_KP_1 && c <= SDL_SCANCODE_KP_9) return VK_NUMPAD0 + 1 + (c - SDL_SCANCODE_KP_1);
  switch (c) {
  case SDL_SCANCODE_KP_0: return VK_NUMPAD0;
  case SDL_SCANCODE_UP: return VK_UP; case SDL_SCANCODE_DOWN: return VK_DOWN;
  case SDL_SCANCODE_LEFT: return VK_LEFT; case SDL_SCANCODE_RIGHT: return VK_RIGHT;
  case SDL_SCANCODE_RETURN: case SDL_SCANCODE_KP_ENTER: return VK_RETURN;
  case SDL_SCANCODE_ESCAPE: return VK_ESCAPE; case SDL_SCANCODE_TAB: return VK_TAB;
  case SDL_SCANCODE_SPACE: return VK_SPACE; case SDL_SCANCODE_BACKSPACE: return VK_BACK;
  case SDL_SCANCODE_LSHIFT: return VK_LSHIFT; case SDL_SCANCODE_RSHIFT: return VK_RSHIFT;
  case SDL_SCANCODE_LCTRL: case SDL_SCANCODE_RCTRL: return VK_CONTROL;
  case SDL_SCANCODE_LALT: case SDL_SCANCODE_RALT: return VK_MENU;
  case SDL_SCANCODE_LGUI: case SDL_SCANCODE_RGUI: return VK_LWIN;
  case SDL_SCANCODE_PAUSE: return VK_PAUSE; case SDL_SCANCODE_INSERT: return VK_INSERT;
  case SDL_SCANCODE_DELETE: return VK_DELETE; case SDL_SCANCODE_HOME: return VK_HOME; case SDL_SCANCODE_END: return VK_END;
  case SDL_SCANCODE_PAGEUP: return VK_PRIOR; case SDL_SCANCODE_PAGEDOWN: return VK_NEXT;
  case SDL_SCANCODE_KP_MULTIPLY: return VK_MULTIPLY; case SDL_SCANCODE_KP_PLUS: return VK_ADD;
  case SDL_SCANCODE_KP_MINUS: return VK_SUBTRACT; case SDL_SCANCODE_KP_PERIOD: return VK_DECIMAL;
  case SDL_SCANCODE_KP_DIVIDE: return VK_DIVIDE;
  default: return 0;
  }
}

static const struct { SDL_GamepadButton b; int pb; } button_map[] = {
  { SDL_GAMEPAD_BUTTON_SOUTH, PB_SOUTH }, { SDL_GAMEPAD_BUTTON_EAST, PB_EAST }, { SDL_GAMEPAD_BUTTON_WEST, PB_WEST },
  { SDL_GAMEPAD_BUTTON_NORTH, PB_NORTH }, { SDL_GAMEPAD_BUTTON_LEFT_SHOULDER, PB_L1 }, { SDL_GAMEPAD_BUTTON_RIGHT_SHOULDER, PB_R1 },
  { SDL_GAMEPAD_BUTTON_BACK, PB_SELECT }, { SDL_GAMEPAD_BUTTON_START, PB_START }, { SDL_GAMEPAD_BUTTON_LEFT_STICK, PB_L3 },
  { SDL_GAMEPAD_BUTTON_RIGHT_STICK, PB_R3 }, { SDL_GAMEPAD_BUTTON_GUIDE, PB_HOME }, { SDL_GAMEPAD_BUTTON_DPAD_UP, PB_DUP },
  { SDL_GAMEPAD_BUTTON_DPAD_DOWN, PB_DDOWN }, { SDL_GAMEPAD_BUTTON_DPAD_LEFT, PB_DLEFT }, { SDL_GAMEPAD_BUTTON_DPAD_RIGHT, PB_DRIGHT } };

static const char *pad_name(SDL_Gamepad *c) { const char *n = SDL_GetGamepadName(c); return n ? n : "Gamepad"; }

void input_init(void) { SDL_InitSubSystem(SDL_INIT_GAMEPAD); }

void input_event(const SDL_Event *e) {
  switch (e->type) {
  case SDL_EVENT_KEY_DOWN: case SDL_EVENT_KEY_UP: {
    int vk = sdl_vk(e->key.key, e->key.scancode);
    if (vk <= 0 || vk > 255) break;
    if (e->type == SDL_EVENT_KEY_UP) keys[vk] = false;
    else { if (!keys[vk] && !e->key.repeat) { last_key = vk; key_tap[vk] = true; } keys[vk] = true; }
    break;
  }
  case SDL_EVENT_WINDOW_FOCUS_LOST:
    memset(keys, 0, sizeof keys);
    break;
  case SDL_EVENT_GAMEPAD_ADDED: {
    SDL_JoystickID id = e->gdevice.which;
    for (int i = 0; i < npads; i++) if (SDL_GetGamepadID(pads[i]) == id) return;
    if (npads == MAXPAD) break;
    SDL_Gamepad *c = SDL_OpenGamepad(id);
    if (!c) break;
    pads[npads++] = c;
    osd_message("Controller connected: %s", pad_name(c));
    break;
  }
  case SDL_EVENT_GAMEPAD_REMOVED:
    for (int i = 0; i < npads; i++)
      if (SDL_GetGamepadID(pads[i]) == e->gdevice.which) {
        osd_message("Controller disconnected: %s", pad_name(pads[i]));
        SDL_CloseGamepad(pads[i]); pads[i] = pads[--npads]; break;
      }
    break;
  case SDL_EVENT_GAMEPAD_BUTTON_DOWN:
    for (int k = 0; k < (int)(sizeof button_map / sizeof button_map[0]); k++)
      if (button_map[k].b == e->gbutton.button) pad_tap |= 1u << button_map[k].pb;
    break;
  }
}

void input_poll(void) {
  u32 st = 0;
  for (int i = 0; i < npads; i++) {
    SDL_Gamepad *c = pads[i];
    for (int k = 0; k < (int)(sizeof button_map / sizeof button_map[0]); k++) if (SDL_GetGamepadButton(c, button_map[k].b)) st |= 1u << button_map[k].pb;
    if (SDL_GetGamepadAxis(c, SDL_GAMEPAD_AXIS_LEFT_TRIGGER) > 12850) st |= 1u << PB_L2;
    if (SDL_GetGamepadAxis(c, SDL_GAMEPAD_AXIS_RIGHT_TRIGGER) > 12850) st |= 1u << PB_R2;
    int x = SDL_GetGamepadAxis(c, SDL_GAMEPAD_AXIS_LEFTX), y = SDL_GetGamepadAxis(c, SDL_GAMEPAD_AXIS_LEFTY);
    if (x < -16000) st |= 1u << PB_LS_LEFT;
    if (x > 16000) st |= 1u << PB_LS_RIGHT;
    if (y < -16000) st |= 1u << PB_LS_UP;
    if (y > 16000) st |= 1u << PB_LS_DOWN;
  }
  // presses since the last poll count until the next one, even if already let go
  pad_tap_now = pad_tap; pad_tap = 0;
  memcpy(key_tap_now, key_tap, sizeof key_tap); memset(key_tap, 0, sizeof key_tap);
  pad_state = st;
  u32 now = input_pad_buttons();
  u32 pressed = now & ~pad_prev;
  for (int b = 0; b < PB_COUNT; b++) if (pressed & (1u << b)) { last_pad = b; break; }
  pad_prev = now;
}

u32 input_pad_buttons(void) {
  u32 st = pad_state | pad_tap_now;
  if ((st & (1u << PB_SELECT)) && (st & (1u << PB_START))) st |= 1u << PB_HOME;
  return st;
}

int input_pad_count(void) { return npads; }
const char *input_pad_name(int i) { return i < npads ? pad_name(pads[i]) : ""; }
bool input_key(int vk) { return vk > 0 && vk < 256 && (keys[vk] || key_tap_now[vk]); }
int input_last_key_pressed(void) { int k = last_key; last_key = 0; return k; }
int input_last_pad_pressed(void) { int b = last_pad; last_pad = -1; return b; }
void input_flush_edges(void) { last_key = 0; last_pad = -1; }

const char *key_name(int vk) {
  static char buf[32];
  static const char oem[] = ";=,-./`";
  static const char oem2[] = "[\\]'";
  if (!vk) return "-";
  switch (vk) {
  case VK_UP: return "Up"; case VK_DOWN: return "Down"; case VK_LEFT: return "Left"; case VK_RIGHT: return "Right";
  case VK_RETURN: return "Enter"; case VK_RSHIFT: return "Right Shift"; case VK_LSHIFT: return "Left Shift";
  case VK_TAB: return "Tab"; case VK_ESCAPE: return "Esc"; case VK_SPACE: return "Space"; case VK_BACK: return "Backspace";
#ifdef __APPLE__
  case VK_MENU: return "Option"; case VK_LWIN: return "Cmd";
#else
  case VK_MENU: return "Alt"; case VK_LWIN: return "Super";
#endif
  case VK_CONTROL: return "Ctrl"; case VK_PAUSE: return "Pause";
  case VK_INSERT: return "Insert"; case VK_DELETE: return "Delete"; case VK_HOME: return "Home"; case VK_END: return "End";
  case VK_PRIOR: return "Page Up"; case VK_NEXT: return "Page Down";
  case VK_MULTIPLY: return "Num *"; case VK_ADD: return "Num +"; case VK_SUBTRACT: return "Num -";
  case VK_DECIMAL: return "Num ."; case VK_DIVIDE: return "Num /";
  }
  if (vk >= VK_F1 && vk <= VK_F24) snprintf(buf, sizeof buf, "F%d", vk - VK_F1 + 1);
  else if ((vk >= '0' && vk <= '9') || (vk >= 'A' && vk <= 'Z')) snprintf(buf, sizeof buf, "%c", vk);
  else if (vk >= VK_NUMPAD0 && vk <= VK_NUMPAD0 + 9) snprintf(buf, sizeof buf, "Num %d", vk - VK_NUMPAD0);
  else if (vk >= VK_OEM_1 && vk <= VK_OEM_3) snprintf(buf, sizeof buf, "%c", oem[vk - VK_OEM_1]);
  else if (vk >= VK_OEM_4 && vk <= VK_OEM_7) snprintf(buf, sizeof buf, "%c", oem2[vk - VK_OEM_4]);
  else snprintf(buf, sizeof buf, "Key %d", vk);
  return buf;
}
