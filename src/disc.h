#pragma once
#include "types.h"

// A CD image: cue/bin (single or split), cue with wav/flac/mp3/ogg audio, iso, ccd/img/sub, chd.
// LBA 0 is track 1 index 01 (MSF 00:02:00).
enum { TRK_AUDIO, TRK_MODE1, TRK_MODE2 };

typedef struct {
  int ntracks;
  struct { u8 type; u32 start; } trk[100];   // start = index 01
  u32 leadout;
} DiscToc;

bool disc_open(const char *path, char *err, int errlen);
void disc_close(void);
bool disc_is_open(void);
const DiscToc *disc_toc(void);
bool disc_read_data(u32 lba, u8 *buf);       // 2048 bytes of user data
bool disc_read_audio(u32 lba, s16 *buf);     // 588 stereo frames, little-endian host order

FILE *u8fopen(const char *path, const char *mode);

typedef struct { u32 h[5]; u64 len; u8 buf[64]; } Sha1;
void sha1_init(Sha1 *s);
void sha1_update(Sha1 *s, const void *data, size_t n);
void sha1_final(Sha1 *s, char hex[41]);

// ISO 9660 on the data track
typedef struct { char name[32]; u32 lba, size; } IsoFile;
int iso_list(IsoFile *out, int max);          // root directory, names without ";1"
bool iso_find(const char *name, IsoFile *out);
