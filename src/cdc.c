// CD drive (1x, 75 sectors/s) and the CD-ROM decoder's buffer and transfer path.
#include "cdc.h"
#include "mcd.h"
#include "disc.h"
#include "audio.h"

CdDrive drive;

#define FIFO_N 8
static struct { u8 data[2048]; u32 header; } fifo[FIFO_N];
static int fifo_head, fifo_count;

// sector being transferred to the host / DMA destination
static u8 xfer[2048];
static u32 xfer_header;
static int xfer_pos, xfer_len;
static bool xfer_active;
static int dma_delay;            // sub cycles until EDT after a DMA
static u8 cdc_ca;                // LC8951 register address

// CD-DA ring buffer (stereo frames)
#define CDDA_RING 8192
static s16 cdda_ring[CDDA_RING * 2];
static u32 cdda_w, cdda_r;

#define EDT 0x8000
#define DSR 0x4000
#define DD ((mcd.cdc_mode >> 8) & 7)

void cdc_init(void) {
  memset(&drive, 0, sizeof drive);
  fifo_head = fifo_count = 0;
  xfer_active = false;
  xfer_pos = xfer_len = 0;
  dma_delay = 0;
  cdda_w = cdda_r = 0;
}

static u8 bcd(int v) { return (u8)((v / 10) << 4 | (v % 10)); }
static u32 msf_header(u32 lba) {
  u32 a = lba + 150;
  return (u32)bcd(a / 4500) << 24 | (u32)bcd(a / 75 % 60) << 16 | (u32)bcd(a % 75) << 8 | 0x01;
}

static int track_of(u32 lba) {
  const DiscToc *t = disc_toc();
  int tr = 1;
  for (int i = 0; i < t->ntracks; i++) if (lba >= t->trk[i].start) tr = i + 1;
  return tr;
}
static u32 track_end(int tr) {
  const DiscToc *t = disc_toc();
  return tr < t->ntracks ? t->trk[tr].start : t->leadout;
}

static int seek_time(u32 from, u32 to) {
  u32 d = from > to ? from - to : to - from;
  return 8 + (int)((u64)d * 60 / 250000);
}

// ---------------------------------------------------------------- drive commands (HLE BIOS)
void cd_read(u32 lba, u32 count) {
  drive.seek_ticks = seek_time(drive.lba, lba);
  drive.lba = lba;
  drive.end_lba = count ? lba + count : 0xffffffff;
  drive.state = DRV_SEEK_READ;
  drive.decode = true;
}
void cd_seek(u32 lba) {
  drive.seek_ticks = seek_time(drive.lba, lba);
  drive.lba = lba;
  drive.state = DRV_PAUSE;
}
void cd_play(int track, int mode) {
  const DiscToc *t = disc_toc();
  if (track < 1 || track > t->ntracks) { cd_stop(); return; }
  u32 start = t->trk[track - 1].start;
  drive.seek_ticks = seek_time(drive.lba, start);
  drive.lba = drive.play_start = start;
  drive.track = track;
  drive.play_mode = mode;
  drive.end_lba = mode == 2 ? t->leadout : track_end(track);
  drive.state = DRV_SEEK_PLAY;
}
void cd_stop(void) { drive.state = DRV_STOP; drive.decode = false; }
void cd_pause(bool on) {
  if (on) { if (drive.state == DRV_PLAY || drive.state == DRV_SEEK_PLAY) drive.state = DRV_PAUSE; }
  else if (drive.state == DRV_PAUSE && drive.track) drive.state = DRV_PLAY;
}
void cd_drvinit(void) { drive.busy_ticks = 30; drive.toc_ready = true; drive.state = DRV_STOP; }
int cd_bios_status(void) {
  if (drive.busy_ticks) return 0x8000;
  switch (drive.state) {
  case DRV_PLAY: return 0x0100;
  case DRV_SEEK_PLAY: case DRV_SEEK_READ: return 0x1000;
  case DRV_PAUSE: return 0x0800;
  case DRV_READ: return 0x0200;
  default: return 0x0000;
  }
}

// ---------------------------------------------------------------- decoder buffer
void cdc_stop(void) { drive.decode = false; fifo_count = 0; }
bool cdc_stat(void) { return fifo_count > 0; }

static void dma_run(void);

bool cdc_read(u32 *header) {
  if (!fifo_count) return false;
  int i = (fifo_head - fifo_count + FIFO_N) % FIFO_N;
  memcpy(xfer, fifo[i].data, 2048);
  xfer_header = fifo[i].header;
  fifo_count--;
  *header = xfer_header;
  xfer_pos = 0;
  xfer_len = 2048;
  xfer_active = true;
  mcd.cdc_mode &= ~(EDT | DSR);
  switch (DD) {
  case 2: case 3: mcd.cdc_mode |= DSR; break;
  case 4: case 5: case 7: dma_run(); break;
  }
  return true;
}

void cdc_trn(u8 *dst, u8 *header) {
  memcpy(dst, xfer + xfer_pos, xfer_len - xfer_pos);
  header[0] = xfer_header >> 24; header[1] = xfer_header >> 16; header[2] = xfer_header >> 8; header[3] = (u8)xfer_header;
  xfer_pos = xfer_len;
  xfer_active = false;
  mcd.cdc_mode = (mcd.cdc_mode & ~DSR) | EDT;
}

void cdc_ack(void) { xfer_active = false; }

u16 cdc_host_read(int sub) {
  if (!xfer_active || DD != (sub ? 3 : 2)) return 0;
  u16 v = xfer[xfer_pos] << 8 | xfer[xfer_pos + 1];
  xfer_pos += 2;
  if (xfer_pos >= xfer_len) { xfer_active = false; mcd.cdc_mode = (mcd.cdc_mode & ~DSR) | EDT; }
  return v;
}

void cdc_mode_w(u8 v) {
  mcd.cdc_mode = (mcd.cdc_mode & 0x000f) | (v & 7) << 8;   // writing DD clears EDT/DSR
  if (xfer_active && (v & 7) >= 2) {
    if ((v & 7) == 2 || (v & 7) == 3) mcd.cdc_mode |= DSR;
    else dma_run();
  }
}
void cdc_dma_addr_w(u16 v) { (void)v; }

static void dma_run(void) {
  u32 a = mcd.cdc_dma_addr;
  int n = xfer_len - xfer_pos;
  for (int i = 0; i < n; i++) {
    u8 b = xfer[xfer_pos + i];
    switch (DD) {
    case 4: pcm_dma_write((((a & 0x3ff) << 2) + i) & 0xfff, b); break;
    case 5: mcd.prg_ram[((a << 3) + i) & 0x7ffff] = b; break;
    case 7:
      if (!mcd.mode1m) mcd.word_ram[((a << 3) + i) & 0x3ffff] = b;
      else {
        u32 o = ((a << 3) + i) & 0x1ffff;
        int bank = (mcd.ret ? 1 : 0) ^ 1;
        mcd.word_ram[((o >> 1) << 2) | bank << 1 | (o & 1)] = b;
      }
      break;
    }
  }
  mcd.cdc_dma_addr = (u16)(a + (DD == 4 ? n / 4 : n / 8));
  xfer_pos = xfer_len;
  xfer_active = false;
  dma_delay = n;   // ~1 sub cycle per byte before EDT is reported
}

// LC8951 register access ($FF8005 address, $FF8007 data). The HLE BIOS doesn't need it;
// reads return the decoder's status as an idle chip would.
u16 cdc_reg_read(void) { u8 r = cdc_ca; cdc_ca = (cdc_ca + 1) & 15; (void)r; return 0; }
void cdc_reg_write(u8 v) { (void)v; cdc_ca = (cdc_ca + 1) & 15; }
void cdd_command(void) {}

// ---------------------------------------------------------------- 75 Hz drive tick
static void push_sector(u32 lba) {
  int i = fifo_head;
  disc_read_data(lba, fifo[i].data);
  fifo[i].header = msf_header(lba);
  fifo_head = (fifo_head + 1) % FIFO_N;
  if (fifo_count < FIFO_N) fifo_count++;   // a full buffer overwrites the oldest sector
}

static void cdda_push(const s16 *s, int frames) {
  for (int i = 0; i < frames; i++) {
    u32 w = cdda_w % CDDA_RING;
    cdda_ring[w * 2] = s[i * 2];
    cdda_ring[w * 2 + 1] = s[i * 2 + 1];
    cdda_w++;
    if (cdda_w - cdda_r > CDDA_RING) cdda_r = cdda_w - CDDA_RING;
  }
}

int cdda_pull(s16 *out, int frames) {
  int got = 0;
  while (got < frames && cdda_r < cdda_w) {
    u32 r = cdda_r % CDDA_RING;
    out[got * 2] = cdda_ring[r * 2];
    out[got * 2 + 1] = cdda_ring[r * 2 + 1];
    cdda_r++; got++;
  }
  for (int i = got; i < frames; i++) out[i * 2] = out[i * 2 + 1] = 0;
  return got;
}

static void tick(void) {
  static s16 silence[588 * 2];
  if (drive.busy_ticks) drive.busy_ticks--;
  bool audio = false;
  switch (drive.state) {
  case DRV_SEEK_READ:
    if (--drive.seek_ticks <= 0) drive.state = DRV_READ;
    break;
  case DRV_READ:
    if (drive.decode) push_sector(drive.lba);
    drive.lba++;
    if (drive.lba >= drive.end_lba) drive.state = DRV_PAUSE;
    break;
  case DRV_SEEK_PLAY:
    if (--drive.seek_ticks <= 0) drive.state = DRV_PLAY;
    break;
  case DRV_PLAY: {
    s16 buf[588 * 2];
    disc_read_audio(drive.lba, buf);
    cdda_push(buf, 588);
    audio = true;
    drive.lba++;
    if (drive.lba >= drive.end_lba) {
      if (drive.play_mode == 1) { drive.lba = drive.play_start; }
      else { drive.state = DRV_PAUSE; }
    }
    break;
  }
  }
  if (!audio) cdda_push(silence, 588);
  // keep the BIOS status word current
  u16 st = (u16)cd_bios_status();
  mcd.prg_ram[0x5e80] = st >> 8;
  mcd.prg_ram[0x5e81] = (u8)st;
}

void cdc_run(u32 cycles) {
  if (dma_delay) {
    dma_delay -= (int)cycles;
    if (dma_delay <= 0) { dma_delay = 0; mcd.cdc_mode = (mcd.cdc_mode & ~DSR) | EDT; }
  }
  // 12.5 MHz / 75 = 166666.67 cycles per tick; count in thirds
  drive.tick_frac += cycles * 3;
  while (drive.tick_frac >= 500000) { drive.tick_frac -= 500000; tick(); }
}
