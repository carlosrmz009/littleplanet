#include "state.h"

void ser_bytes(Ser *s, void *p, size_t n) {
  if (s->load) {
    if (s->pos + n > s->cap) { s->fail = true; memset(p, 0, n); return; }
    memcpy(p, s->buf + s->pos, n);
  } else {
    if (s->pos + n > s->cap) {
      size_t c = s->cap ? s->cap * 2 : 1 << 20;
      while (c < s->pos + n) c *= 2;
      s->buf = realloc(s->buf, c);
      s->cap = c;
    }
    memcpy(s->buf + s->pos, p, n);
  }
  s->pos += n;
}
