// The control pad protocols, read the way games read them.   cc -Isrc tests/io_test.c src/io.c -o io_test
#include "io.h"
#include "mcd.h"

Mcd mcd;
M68k mcpu, scpu;
static u64 now;
u64 mcd_now(void) { return now; }

static int fails;
static void expect(const char *what, u8 got, u8 want) {
  if ((got & 0x7f) != (want & 0x7f)) { printf("FAIL %s: %02x, expected %02x\n", what, got & 0x7f, want & 0x7f); fails++; }
}
static u8 th(int level) { io_write(0xa10003, level ? 0x40 : 0); now += 100; return io_read(0xa10003); }

int main(void) {
  io_init();
  io_write(0xa10009, 0x40);   // TH as output, like games do
  u16 b = PAD_A | PAD_C | PAD_UP | PAD_X | PAD_MODE;
  io_set_pad(0, b);

  io_six_button = false;
  for (int k = 0; k < 4; k++) {
    expect("3 button, TH=1", th(1), 0x40 | (0x3f & ~(0x01 | 0x20)));   // ?1CBRLDU: C, up
    expect("3 button, TH=0", th(0), 0x33 & ~(0x01 | 0x10));            // ?0SA00DU: A, up
  }

  io_six_button = true;
  now += 1000000; th(1); now += 1000000;   // idle long enough to start over
  expect("6 button 1 high", th(1), 0x40 | (0x3f & ~0x21));
  expect("6 button 1 low", th(0), 0x33 & ~0x11);
  expect("6 button 2 high", th(1), 0x40 | (0x3f & ~0x21));
  expect("6 button 2 low", th(0), 0x33 & ~0x11);
  expect("6 button 3 high", th(1), 0x40 | (0x3f & ~0x21));
  expect("6 button 3 low: ?0SA0000", th(0), 0x30 & ~0x10);
  expect("6 button 4 high: ?1CBMXYZ", th(1), 0x40 | (0x3f & ~(0x20 | 0x08 | 0x04)));
  expect("6 button 4 low: ?0SA1111", th(0), 0x3f & ~0x10);
  now += 1000000;                          // a pause: back to normal reads
  expect("after a pause, high", th(1), 0x40 | (0x3f & ~0x21));
  expect("after a pause, low", th(0), 0x33 & ~0x11);
  printf(fails ? "%d failures\n" : "pad protocols ok\n", fails);
  return fails != 0;
}
