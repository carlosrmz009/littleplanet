// Windows input: the keyboard from the window's messages, gamepads through SDL3 (only its gamepad part;
// the window stays this program's own). SDL3 knows far more controllers than XInput: DualShock/DualSense,
// Switch, 8BitDo and the rest of its database, with positional buttons (south/east/west/north).
// A key or button pressed and let go between two polls still counts as down for one poll.
#include "app.h"
#include <SDL3/SDL.h>
#pragma comment(lib, "setupapi.lib")
#pragma comment(lib, "winmm.lib")
#pragma comment(lib, "imm32.lib")
#pragma comment(lib, "version.lib")
#pragma comment(lib, "ole32.lib")
#pragma comment(lib, "oleaut32.lib")
#pragma comment(lib, "cfgmgr32.lib")
#pragma comment(lib, "uuid.lib")
#pragma comment(lib, "advapi32.lib")
#pragma comment(lib, "shell32.lib")
#pragma comment(lib, "user32.lib")
#pragma comment(lib, "gdi32.lib")

static bool keys[256], key_tap[256], key_tap_now[256];
static int last_key;
static u32 pad_prev, pad_state, pad_tap, pad_tap_now;
static int last_pad = -1;
#define MAXPAD 8
static SDL_Gamepad *pads[MAXPAD]; static int npads;
static bool sdl_ok;

static const struct { SDL_GamepadButton b; int pb; } button_map[] = {
  { SDL_GAMEPAD_BUTTON_SOUTH, PB_SOUTH }, { SDL_GAMEPAD_BUTTON_EAST, PB_EAST }, { SDL_GAMEPAD_BUTTON_WEST, PB_WEST },
  { SDL_GAMEPAD_BUTTON_NORTH, PB_NORTH }, { SDL_GAMEPAD_BUTTON_LEFT_SHOULDER, PB_L1 }, { SDL_GAMEPAD_BUTTON_RIGHT_SHOULDER, PB_R1 },
  { SDL_GAMEPAD_BUTTON_BACK, PB_SELECT }, { SDL_GAMEPAD_BUTTON_START, PB_START }, { SDL_GAMEPAD_BUTTON_LEFT_STICK, PB_L3 },
  { SDL_GAMEPAD_BUTTON_RIGHT_STICK, PB_R3 }, { SDL_GAMEPAD_BUTTON_GUIDE, PB_HOME }, { SDL_GAMEPAD_BUTTON_DPAD_UP, PB_DUP },
  { SDL_GAMEPAD_BUTTON_DPAD_DOWN, PB_DDOWN }, { SDL_GAMEPAD_BUTTON_DPAD_LEFT, PB_DLEFT }, { SDL_GAMEPAD_BUTTON_DPAD_RIGHT, PB_DRIGHT } };

static const char *pad_name(SDL_Gamepad *c) { const char *n = SDL_GetGamepadName(c); return n ? n : "Gamepad"; }

void input_init(HWND w) {
  (void)w;
  SDL_SetHint(SDL_HINT_JOYSTICK_THREAD, "1");   // no SDL window here: let SDL take device messages on its own thread
  sdl_ok = SDL_Init(SDL_INIT_GAMEPAD);
}

bool input_wndproc(HWND w, UINT m, WPARAM wp, LPARAM lp) {
  (void)w;
  switch (m) {
  case WM_KEYDOWN: case WM_SYSKEYDOWN: {
    int vk = (int)wp;
    if (vk == VK_SHIFT) vk = (MapVirtualKeyA((lp >> 16) & 0xff, MAPVK_VSC_TO_VK_EX) == VK_RSHIFT) ? VK_RSHIFT : VK_LSHIFT;
    if (vk < 256) { if (!keys[vk] && !(lp & (1 << 30))) { last_key = vk; key_tap[vk] = true; } keys[vk] = true; }
    return false;
  }
  case WM_KEYUP: case WM_SYSKEYUP: {
    int vk = (int)wp;
    if (vk == VK_SHIFT) { keys[VK_LSHIFT] = (GetKeyState(VK_LSHIFT) & 0x8000) != 0; keys[VK_RSHIFT] = (GetKeyState(VK_RSHIFT) & 0x8000) != 0; }
    else if (vk < 256) keys[vk] = false;
    return false;
  }
  case WM_KILLFOCUS: memset(keys, 0, sizeof keys); return false;
  }
  return false;
}

static void gamepad_event(const SDL_Event *e) {
  switch (e->type) {
  case SDL_EVENT_GAMEPAD_ADDED: {
    SDL_JoystickID id = e->gdevice.which;
    for (int i = 0; i < npads; i++) if (SDL_GetGamepadID(pads[i]) == id) return;
    if (npads == MAXPAD) return;
    SDL_Gamepad *c = SDL_OpenGamepad(id);
    if (!c) return;
    pads[npads++] = c;
    osd_message("Controller connected: %s", pad_name(c));
    return;
  }
  case SDL_EVENT_GAMEPAD_REMOVED:
    for (int i = 0; i < npads; i++)
      if (SDL_GetGamepadID(pads[i]) == e->gdevice.which) {
        osd_message("Controller disconnected: %s", pad_name(pads[i]));
        SDL_CloseGamepad(pads[i]); pads[i] = pads[--npads]; return;
      }
    return;
  case SDL_EVENT_GAMEPAD_BUTTON_DOWN:
    for (int k = 0; k < (int)(sizeof button_map / sizeof button_map[0]); k++)
      if (button_map[k].b == e->gbutton.button) pad_tap |= 1u << button_map[k].pb;
    return;
  }
}

void input_poll(void) {
  u32 st = 0;
  if (sdl_ok) {
    SDL_Event e;
    while (SDL_PollEvent(&e)) gamepad_event(&e);
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
  if (!vk) return "-";
  switch (vk) {
  case VK_UP: return "Up"; case VK_DOWN: return "Down"; case VK_LEFT: return "Left"; case VK_RIGHT: return "Right";
  case VK_RETURN: return "Enter"; case VK_RSHIFT: return "Right Shift"; case VK_LSHIFT: return "Left Shift";
  case VK_TAB: return "Tab"; case VK_ESCAPE: return "Esc"; case VK_SPACE: return "Space"; case VK_BACK: return "Backspace";
  case VK_CONTROL: return "Ctrl"; case VK_MENU: return "Alt";
  }
  if (vk >= VK_F1 && vk <= VK_F24) { snprintf(buf, sizeof buf, "F%d", vk - VK_F1 + 1); return buf; }
  UINT sc = MapVirtualKeyA(vk, MAPVK_VK_TO_VSC);
  if (GetKeyNameTextA(sc << 16, buf, sizeof buf) > 0) return buf;
  snprintf(buf, sizeof buf, "Key %d", vk);
  return buf;
}
