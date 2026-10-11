#pragma once
#include "types.h"

// CD drive + CD-ROM decoder (LC8951) + the gate array's data transfer path.
// The drive is driven at a high level by the HLE BIOS; the transfer registers
// ($FF8004/$FF8008/$FF800A, $A12004/$A12008) behave like the hardware.

enum { DRV_STOP, DRV_READ, DRV_PLAY, DRV_PAUSE, DRV_SEEK_READ, DRV_SEEK_PLAY };

typedef struct {
  int state;
  u32 lba;            // head position (next sector)
  u32 end_lba;        // reading: stop after this sector; playing: end of the track
  int play_mode;      // 0 once (stop at end), 1 repeat track, 2 to end of disc
  u32 play_start;
  int seek_ticks;     // 75 Hz ticks left before data/audio starts
  bool decode;        // CDC decoder writing sectors into its buffer
  bool toc_ready;
  int busy_ticks;     // DRVINIT etc.
  u32 tick_frac;
  int track;          // current track (1-based) while playing
} CdDrive;

extern CdDrive drive;

void cdc_init(void);
void cdc_run(u32 sub_cycles);
u16 cdc_host_read(int sub);          // $A12008 (main) / $FF8008 (sub)
void cdc_mode_w(u8 v);               // $FF8004 high byte (DD)
void cdc_dma_addr_w(u16 v);
u16 cdc_reg_read(void);
void cdc_reg_write(u8 v);
void cdd_command(void);

// used by the HLE BIOS
void cd_read(u32 lba, u32 count);    // count 0 = until stopped
void cd_play(int track, int mode);
void cd_stop(void);
void cd_pause(bool on);
void cd_seek(u32 lba);
void cdc_stop(void);
bool cdc_stat(void);                 // a sector is waiting in the buffer
bool cdc_read(u32 *header);          // start transferring the oldest sector
void cdc_trn(u8 *dst, u8 *header);   // copy the current sector (CDCTRN)
void cdc_ack(void);
void cd_drvinit(void);
int cd_bios_status(void);

// CD-DA samples for the mixer: 588 stereo frames per 75 Hz tick
int cdda_pull(s16 *out, int frames);
