#include "version.h"
#include "disc.h"

const DiscVersion disc_versions[] = {
  {"Sonic the Hedgehog CD (Japan)", "TODO", 'J', true},
  {NULL, NULL, 0, false},
};

void disc_id(char hex[41]) {
  u8 sec[2048];
  Sha1 s;
  sha1_init(&s);
  disc_read_data(16, sec);
  u32 n = sec[80] | sec[81] << 8 | sec[82] << 16 | (u32)sec[83] << 24;
  for (u32 i = 0; i < n; i++) { disc_read_data(i, sec); sha1_update(&s, sec, 2048); }
  sha1_final(&s, hex);
}

const DiscVersion *disc_version(const char *hex) {
  for (const DiscVersion *v = disc_versions; v->name; v++) if (!strcmp(v->sha1, hex)) return v;
  return NULL;
}
