#include "../inc/engine.h"
using namespace std;

namespace myapp {
Engine::Engine(const int16_t& can_id) : engineFrame{can_id, 0, 0, 0} {}
Engine::~Engine() {}

const EngineFrame& Engine::get() const { return engineFrame; }

void Engine::process(const canfd_frame& frame) {
  union {
    uint32_t num;
    uint8_t bytes[4];
  } data;

  data.num = le32toh(*(uint32_t*)frame.data);
  cout << "0x" << hex << uppercase << setw(16) << setfill('0') << data.num
       << endl;

  engineFrame.speed = data.bytes[0];
  engineFrame.temp = data.bytes[1];
  engineFrame.rpm = static_cast<int16_t>((data.bytes[3] << 8) | data.bytes[2]);

  cout << dec << "speed= " << (int)engineFrame.speed
       << "temp= " << (int)engineFrame.temp << " rpm= " << (int)engineFrame.rpm
       << endl;
}

}  // namespace myapp