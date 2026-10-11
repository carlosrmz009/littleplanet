// YM2612 through ymfm, with its timers and busy flag driven by the emulated clock.
#include "../third_party/ymfm/ymfm_opn.h"
#include <cstdint>
#include <vector>

extern "C" {
#include "fm.h"
}

namespace {

class Intf : public ymfm::ymfm_interface {
public:
  uint64_t now = 0;              // chip input clocks
  int64_t timer_end[2] = {-1, -1};
  uint64_t busy_end = 0;
  void ymfm_set_timer(uint32_t t, int32_t dur) override { timer_end[t] = dur < 0 ? -1 : (int64_t)(now + (uint64_t)dur); }
  void ymfm_set_busy_end(uint32_t clocks) override { busy_end = now + clocks; }
  bool ymfm_is_busy() override { return now < busy_end; }
  void advance(uint64_t clocks) {
    uint64_t target = now + clocks;
    for (;;) {
      int t = -1;
      uint64_t when = target;
      for (int i = 0; i < 2; i++)
        if (timer_end[i] >= 0 && (uint64_t)timer_end[i] <= when) { when = (uint64_t)timer_end[i]; t = i; }
      if (t < 0) break;
      now = when;
      timer_end[t] = -1;
      m_engine->engine_timer_expired(t);
    }
    now = target;
  }
};

Intf intf;
ymfm::ym2612 chip(intf);

}

extern "C" {

void fm_init(void) { chip.reset(); intf.now = 0; intf.timer_end[0] = intf.timer_end[1] = -1; intf.busy_end = 0; }
void fm_reset(void) { chip.reset(); }
void fm_chip_write(int port, uint8_t v) { chip.write((uint32_t)port, v); }
uint8_t fm_chip_read(void) { return chip.read_status(); }

// one output sample = 144 input clocks
void fm_generate(int32_t *lr) {
  ymfm::ym2612::output_data out;
  chip.generate(&out, 1);
  intf.advance(144);
  lr[0] = out.data[0];
  lr[1] = out.data[1];
}

}

extern "C" {
#include "state.h"

void fm_serialize(Ser *s) {
  std::vector<uint8_t> buf;
  uint32_t n = 0;
  if (!s->load) {
    ymfm::ymfm_saved_state st(buf, true);
    chip.save_restore(st);
    n = (uint32_t)buf.size();
  }
  SER(s, n);
  if (s->load) buf.resize(n);
  ser_bytes(s, buf.data(), n);
  if (s->load && !s->fail) {
    ymfm::ymfm_saved_state st(buf, false);
    chip.save_restore(st);
  }
  SER(s, intf.now); SER(s, intf.timer_end); SER(s, intf.busy_end);
}

}
