#include "app.h"
#include <xinput.h>
#include <hidsdi.h>
#include <hidpi.h>
#include <math.h>
#pragma comment(lib, "xinput.lib")
#pragma comment(lib, "hid.lib")

static bool keys[256];
static int last_key;
static u32 pad_prev;
static int last_pad = -1;

#define MAX_HID 8
typedef struct {
  HANDLE dev; u16 vid, pid; char name[64];
  PHIDP_PREPARSED_DATA pp; HIDP_CAPS caps;
  HIDP_VALUE_CAPS vcaps[32]; USHORT nv;
  u8 btnmap[32];
  u32 state;
} HidPad;
static HidPad hid[MAX_HID]; static int nhid;
static u32 xstate[4]; static bool xconn[4];

static void set_layout(HidPad *p) {
  static const u8 sony[14] = { PB_WEST, PB_SOUTH, PB_EAST, PB_NORTH, PB_L1, PB_R1, PB_L2, PB_R2, PB_SELECT, PB_START, PB_L3, PB_R3, PB_HOME, PB_SELECT };
  static const u8 nint[14] = { PB_SOUTH, PB_EAST, PB_WEST, PB_NORTH, PB_L1, PB_R1, PB_L2, PB_R2, PB_SELECT, PB_START, PB_L3, PB_R3, PB_HOME, 0xff };
  memset(p->btnmap, 0xff, sizeof p->btnmap);
  const u8 *m = p->vid == 0x057e ? nint : sony;
  for (int i = 0; i < 14; i++) p->btnmap[i] = m[i];
  if (p->vid == 0x054c) snprintf(p->name, sizeof p->name, (p->pid == 0x0ce6 || p->pid == 0x0df2) ? "DualSense" : "DualShock 4");
  else if (p->vid == 0x057e) snprintf(p->name, sizeof p->name, "Switch Pro Controller");
  else snprintf(p->name, sizeof p->name, "HID gamepad %04X:%04X", p->vid, p->pid);
}

static HidPad *hid_get(HANDLE dev) {
  for (int i = 0; i < nhid; i++) if (hid[i].dev == dev) return &hid[i];
  if (nhid == MAX_HID) return NULL;
  char name[512]; UINT sz = sizeof name;
  if (GetRawInputDeviceInfoA(dev, RIDI_DEVICENAME, name, &sz) == (UINT)-1) return NULL;
  if (strstr(name, "IG_") || strstr(name, "ig_")) return NULL;
  RID_DEVICE_INFO info = { sizeof info }; sz = sizeof info;
  if (GetRawInputDeviceInfoA(dev, RIDI_DEVICEINFO, &info, &sz) == (UINT)-1 || info.dwType != RIM_TYPEHID) return NULL;
  UINT ppsz = 0;
  GetRawInputDeviceInfoA(dev, RIDI_PREPARSEDDATA, NULL, &ppsz);
  HidPad *p = &hid[nhid];
  memset(p, 0, sizeof *p);
  p->pp = malloc(ppsz);
  if (GetRawInputDeviceInfoA(dev, RIDI_PREPARSEDDATA, p->pp, &ppsz) == (UINT)-1 || HidP_GetCaps(p->pp, &p->caps) != HIDP_STATUS_SUCCESS) { free(p->pp); return NULL; }
  p->nv = 32;
  if (HidP_GetValueCaps(HidP_Input, p->vcaps, &p->nv, p->pp) != HIDP_STATUS_SUCCESS) p->nv = 0;
  p->dev = dev; p->vid = (u16)info.hid.dwVendorId; p->pid = (u16)info.hid.dwProductId;
  set_layout(p);
  nhid++;
  osd_message("Controller connected: %s", p->name);
  return p;
}

static void hid_report(HidPad *p, u8 *rep, ULONG len) {
  u32 st = 0;
  USAGE us[64]; ULONG n = 64;
  if (HidP_GetUsages(HidP_Input, 0x09, 0, us, &n, p->pp, (PCHAR)rep, len) == HIDP_STATUS_SUCCESS)
    for (ULONG i = 0; i < n; i++) if (us[i] >= 1 && us[i] <= 32 && p->btnmap[us[i] - 1] != 0xff) st |= 1u << p->btnmap[us[i] - 1];
  for (int i = 0; i < p->nv; i++) {
    HIDP_VALUE_CAPS *c = &p->vcaps[i];
    if (c->UsagePage != 1) continue;
    USAGE u = c->IsRange ? c->Range.UsageMin : c->NotRange.Usage;
    ULONG v;
    if (HidP_GetUsageValue(HidP_Input, 1, c->LinkCollection, u, &v, p->pp, (PCHAR)rep, len) != HIDP_STATUS_SUCCESS) continue;
    LONG lo = c->LogicalMin, hi = c->LogicalMax;
    if (hi <= lo) { lo = 0; hi = (1 << c->BitSize) - 1; }
    if (u == 0x39) {
      LONG h = (LONG)v - lo;
      if (h >= 0 && h <= 7) {
        static const u32 hat[8] = { 1 << PB_DUP, 1 << PB_DUP | 1 << PB_DRIGHT, 1 << PB_DRIGHT, 1 << PB_DRIGHT | 1 << PB_DDOWN,
                                    1 << PB_DDOWN, 1 << PB_DDOWN | 1 << PB_DLEFT, 1 << PB_DLEFT, 1 << PB_DLEFT | 1 << PB_DUP };
        st |= hat[h];
      }
    } else if (u == 0x30 || u == 0x31) {
      float f = ((LONG)v - lo) * 2.0f / (hi - lo) - 1.0f;
      if (u == 0x30) { if (f < -0.5f) st |= 1 << PB_LS_LEFT; if (f > 0.5f) st |= 1 << PB_LS_RIGHT; }
      else { if (f < -0.5f) st |= 1 << PB_LS_UP; if (f > 0.5f) st |= 1 << PB_LS_DOWN; }
    }
  }
  p->state = st;
}

void input_init(HWND w) {
  RAWINPUTDEVICE rid[2] = {
    { 1, 4, RIDEV_INPUTSINK | RIDEV_DEVNOTIFY, w },
    { 1, 5, RIDEV_INPUTSINK | RIDEV_DEVNOTIFY, w },
  };
  RegisterRawInputDevices(rid, 2, sizeof rid[0]);
}

bool input_wndproc(HWND w, UINT m, WPARAM wp, LPARAM lp) {
  (void)w;
  switch (m) {
  case WM_KEYDOWN: case WM_SYSKEYDOWN: {
    int vk = (int)wp;
    if (vk == VK_SHIFT) vk = (MapVirtualKeyA((lp >> 16) & 0xff, MAPVK_VSC_TO_VK_EX) == VK_RSHIFT) ? VK_RSHIFT : VK_LSHIFT;
    if (vk < 256) { if (!keys[vk] && !(lp & (1 << 30))) last_key = vk; keys[vk] = true; }
    return false;
  }
  case WM_KEYUP: case WM_SYSKEYUP: {
    int vk = (int)wp;
    if (vk == VK_SHIFT) { keys[VK_LSHIFT] = (GetKeyState(VK_LSHIFT) & 0x8000) != 0; keys[VK_RSHIFT] = (GetKeyState(VK_RSHIFT) & 0x8000) != 0; }
    else if (vk < 256) keys[vk] = false;
    return false;
  }
  case WM_KILLFOCUS: memset(keys, 0, sizeof keys); return false;
  case WM_INPUT: {
    UINT sz = 0;
    GetRawInputData((HRAWINPUT)lp, RID_INPUT, NULL, &sz, sizeof(RAWINPUTHEADER));
    static u8 buf[4096];
    if (sz > sizeof buf || GetRawInputData((HRAWINPUT)lp, RID_INPUT, buf, &sz, sizeof(RAWINPUTHEADER)) == (UINT)-1) return false;
    RAWINPUT *ri = (RAWINPUT *)buf;
    if (ri->header.dwType != RIM_TYPEHID) return false;
    HidPad *p = hid_get(ri->header.hDevice);
    if (!p) return false;
    for (DWORD i = 0; i < ri->data.hid.dwCount; i++)
      hid_report(p, ri->data.hid.bRawData + i * ri->data.hid.dwSizeHid, ri->data.hid.dwSizeHid);
    return false;
  }
  case WM_INPUT_DEVICE_CHANGE:
    if (wp == GIDC_REMOVAL)
      for (int i = 0; i < nhid; i++) if (hid[i].dev == (HANDLE)lp) {
        osd_message("Controller disconnected: %s", hid[i].name);
        free(hid[i].pp); hid[i] = hid[--nhid]; break;
      }
    return false;
  }
  return false;
}

void input_poll(void) {
  for (int i = 0; i < 4; i++) {
    XINPUT_STATE xs;
    bool was = xconn[i];
    xconn[i] = XInputGetState(i, &xs) == ERROR_SUCCESS;
    if (xconn[i] != was) osd_message(xconn[i] ? "Controller connected: Xbox controller %d" : "Controller disconnected: Xbox controller %d", i + 1);
    if (!xconn[i]) { xstate[i] = 0; continue; }
    WORD b = xs.Gamepad.wButtons; u32 st = 0;
    static const struct { WORD x; int pb; } xm[] = {
      { XINPUT_GAMEPAD_A, PB_SOUTH }, { XINPUT_GAMEPAD_B, PB_EAST }, { XINPUT_GAMEPAD_X, PB_WEST }, { XINPUT_GAMEPAD_Y, PB_NORTH },
      { XINPUT_GAMEPAD_LEFT_SHOULDER, PB_L1 }, { XINPUT_GAMEPAD_RIGHT_SHOULDER, PB_R1 }, { XINPUT_GAMEPAD_BACK, PB_SELECT },
      { XINPUT_GAMEPAD_START, PB_START }, { XINPUT_GAMEPAD_LEFT_THUMB, PB_L3 }, { XINPUT_GAMEPAD_RIGHT_THUMB, PB_R3 },
      { XINPUT_GAMEPAD_DPAD_UP, PB_DUP }, { XINPUT_GAMEPAD_DPAD_DOWN, PB_DDOWN }, { XINPUT_GAMEPAD_DPAD_LEFT, PB_DLEFT },
      { XINPUT_GAMEPAD_DPAD_RIGHT, PB_DRIGHT } };
    for (int k = 0; k < (int)(sizeof xm / sizeof xm[0]); k++) if (b & xm[k].x) st |= 1u << xm[k].pb;
    if (xs.Gamepad.bLeftTrigger > 100) st |= 1u << PB_L2;
    if (xs.Gamepad.bRightTrigger > 100) st |= 1u << PB_R2;
    if (xs.Gamepad.sThumbLX < -16000) st |= 1u << PB_LS_LEFT; if (xs.Gamepad.sThumbLX > 16000) st |= 1u << PB_LS_RIGHT;
    if (xs.Gamepad.sThumbLY > 16000) st |= 1u << PB_LS_UP; if (xs.Gamepad.sThumbLY < -16000) st |= 1u << PB_LS_DOWN;
    xstate[i] = st;
  }
  u32 now = input_pad_buttons();
  u32 pressed = now & ~pad_prev;
  for (int b = 0; b < PB_COUNT; b++) if (pressed & (1u << b)) { last_pad = b; break; }
  pad_prev = now;
}

u32 input_pad_buttons(void) {
  u32 st = 0;
  for (int i = 0; i < 4; i++) st |= xstate[i];
  for (int i = 0; i < nhid; i++) st |= hid[i].state;
  if ((st & (1u << PB_SELECT)) && (st & (1u << PB_START))) st |= 1u << PB_HOME;
  return st;
}

int input_pad_count(void) { int n = nhid; for (int i = 0; i < 4; i++) n += xconn[i]; return n; }
const char *input_pad_name(int i) {
  static char buf[64];
  for (int k = 0; k < 4; k++) if (xconn[k] && i-- == 0) { snprintf(buf, sizeof buf, "Xbox controller (XInput %d)", k + 1); return buf; }
  return i < nhid ? hid[i].name : "";
}
bool input_key(int vk) { return vk > 0 && vk < 256 && keys[vk]; }
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
