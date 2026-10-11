#pragma once
#include "types.h"

// Known Sonic CD discs. The id is the SHA-1 of the ISO 9660 volume (data track user data),
// so it's the same whatever image format the disc was dumped to.
typedef struct { const char *name, *sha1; char region; bool matching; } DiscVersion;

extern const DiscVersion disc_versions[];
void disc_id(char hex[41]);
const DiscVersion *disc_version(const char *hex);
