// I/O chip: version register and two control pads, 3 button or 6 button.
//
// A 6-button pad counts falling edges of TH (the select line the game toggles). After the third one it
// reads all four directions low (how games recognise it), on the next high Mode/X/Y/Z, after the fourth
// 1111. Without a TH change for about 1.5 ms it starts over, so 3-button games never see the extras.
//
// A button pressed is reported until the game has read it (both halves, TH high and low), even if it was
// let go before: a tap between two reads would be lost otherwise. The special stages read the pad only
// once every 3 or 4 frames (once per frame of their own), so quick taps of the jump button went missing.
#include "io.h"
#include "mcd.h"

static u16 pads[2];
static u16 unread[2];   // pressed since the game last read both halves
static u8 halves[2];    // which halves it read since: 1 TH high, 2 TH low
bool io_six_button;
#define PAD_TIMEOUT 80000   // MCLK, ~1.5 ms

void io_init(void) {
  memset(mcd.io_data, 0, sizeof mcd.io_data);
  memset(mcd.io_ctrl, 0, sizeof mcd.io_ctrl);
  pads[0] = pads[1] = 0;
  unread[0] = unread[1] = 0; halves[0] = halves[1] = 0;
  memset(mcd.pad_th, 1, sizeof mcd.pad_th);
  memset(mcd.pad_lows, 0, sizeof mcd.pad_lows);
  memset(mcd.pad_th_time, 0, sizeof mcd.pad_th_time);
}

static bool th_level(int port) { return (mcd.io_ctrl[port] & 0x40) ? (mcd.io_data[port] & 0x40) : true; }

// TH edges, for the 6-button protocol
static void th_update(int port) {
  bool th = th_level(port);
  if (th == mcd.pad_th[port]) return;
  u64 now = mcd_now();
  if (now - mcd.pad_th_time[port] > PAD_TIMEOUT) mcd.pad_lows[port] = 0;
  if (!th) mcd.pad_lows[port] = mcd.pad_lows[port] >= 4 ? 1 : mcd.pad_lows[port] + 1;
  mcd.pad_th[port] = th;
  mcd.pad_th_time[port] = now;
}

void io_set_pad(int port, u16 b) {
  if (port >= 2) return;
  u16 pressed = b & ~pads[port];
  if (pressed) { unread[port] |= pressed; halves[port] = 0; }
  pads[port] = b;
}

static u8 pad_read(int port) {
  u8 ctrl = mcd.io_ctrl[port], out = mcd.io_data[port];
  u16 b = port < 2 ? pads[port] | unread[port] : 0;
  bool th = th_level(port);   // TH pulled high when it's an input
  if (port < 2 && unread[port] && (halves[port] |= th ? 1 : 2) == 3) unread[port] = 0;
  int lows = 0;
  if (io_six_button && port < 2) {
    if (mcd_now() - mcd.pad_th_time[port] > PAD_TIMEOUT) mcd.pad_lows[port] = 0;
    lows = mcd.pad_lows[port];
  }
  u8 v;
  if (th && lows == 3)        // ?1CBMXYZ
    v = 0x40 | (~((b & PAD_B) | (b & PAD_C) | (b & PAD_MODE ? 8 : 0) | (b & PAD_X ? 4 : 0) | (b & PAD_Y ? 2 : 0) | (b & PAD_Z ? 1 : 0)) & 0x3f);
  else if (th) v = 0x40 | (~((b & (PAD_UP | PAD_DOWN | PAD_LEFT | PAD_RIGHT)) | (b & PAD_B) | (b & PAD_C)) & 0x3f);
  else if (lows == 3)         // ?0SA0000: the 6-button pad's signature
    v = (u8)(~((b & PAD_A ? 0x10 : 0) | (b & PAD_START ? 0x20 : 0)) & 0x30);
  else if (lows == 4)         // ?0SA1111
    v = (u8)(~((b & PAD_A ? 0x10 : 0) | (b & PAD_START ? 0x20 : 0)) & 0x3f);
  else v = (u8)(~((b & (PAD_UP | PAD_DOWN)) | (b & PAD_A ? 0x10 : 0) | (b & PAD_START ? 0x20 : 0)) & 0x33);
  // bits configured as outputs read back the latch
  return (v & ~ctrl & 0x7f) | (out & ctrl & 0x7f) | (out & 0x80);
}

u8 io_read(u32 a) {
  switch ((a >> 1) & 0x0f) {
  case 0: return 0x00 | 0x01;   // domestic (Japan), NTSC, expansion unit present, version 1
  case 1: return pad_read(0);
  case 2: return pad_read(1);
  case 3: return mcd.io_data[2] | 0x7f;
  case 4: return mcd.io_ctrl[0];
  case 5: return mcd.io_ctrl[1];
  case 6: return mcd.io_ctrl[2];
  }
  return 0;
}

void io_write(u32 a, u8 v) {
  int r = (a >> 1) & 0x0f;
  if (r >= 1 && r <= 3) mcd.io_data[r - 1] = v;
  else if (r >= 4 && r <= 6) mcd.io_ctrl[r - 4] = v;
  if ((r == 1 || r == 2 || r == 4 || r == 5) && io_six_button) th_update((r - 1) % 3);
}
