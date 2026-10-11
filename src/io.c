// I/O chip: version register and two 3-button control pads.
#include "io.h"
#include "mcd.h"

static u16 pads[2];

void io_init(void) {
  memset(mcd.io_data, 0, sizeof mcd.io_data);
  memset(mcd.io_ctrl, 0, sizeof mcd.io_ctrl);
  pads[0] = pads[1] = 0;
}

void io_set_pad(int port, u16 b) { if (port < 2) pads[port] = b; }

static u8 pad_read(int port) {
  u8 ctrl = mcd.io_ctrl[port], out = mcd.io_data[port];
  u16 b = port < 2 ? pads[port] : 0;
  bool th = (ctrl & 0x40) ? (out & 0x40) : true;   // TH pulled high when it's an input
  u8 v;
  if (th) v = 0x40 | (~((b & (PAD_UP | PAD_DOWN | PAD_LEFT | PAD_RIGHT)) | (b & PAD_B) | (b & PAD_C)) & 0x3f);
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
}
