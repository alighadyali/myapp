#include "../inc/engine.h"
using namespace std;

namespace myapp {
Engine::Engine(const int16_t& can_id) : engineFrame{can_id, 0, 0, 0} {}
Engine::~Engine() {}

EngineFrame& Engine::getEngineFrame() { return engineFrame; }

void Engine::process(const canfd_frame& frame) {
  //   int16_t data = be16toh(*(int16_t*)(frame.data + 0));
  int16_t data1 = be16toh(*(int16_t*)(frame.data + 2));
  //   cout << "data" << data << endl;
  //   cout << "data1" << data1 << endl;
  //   int16_t data3 = __bswap_16(data1);
  //   cout << "data3" << data3 << endl;
  // int32_t data = be32toh(*(int32_t*)(frame.data));
  // cout << "data " << data << endl;
  union {
    uint32_t num;
    uint8_t bytes[4];
  } data;

  data.num = le32toh(*(uint32_t*)frame.data);
  cout << "swapped " << hex << data.num << endl;
  //   cout << hex << data.bytes[0] << endl;
  //   cout << hex << data.bytes[1] << endl;
  //   cout << hex << data.bytes[2] << endl;
  //   cout << hex << data.bytes[3] << endl;
  //   printf("%X %X %X %X \n", data.bytes[0], data.bytes[1], data.bytes[2],

  //  data.bytes[3]);
  cout << hex << " " << data.bytes[0] << " " << data.bytes[1] << " "
       << data.bytes[2] << " " << data.bytes[3] << endl;
  //   engineFrame.rpm = 0xFFFF & swapped << 8;
  //   engineFrame.speed = (0xFF & swapped);
  //   cout << "speed" << engineFrame.speed << endl;
  engineFrame.speed = data.bytes[0];
  engineFrame.temp = data.bytes[1];
  engineFrame.rpm = (data.bytes[3] << 8) | data.bytes[2];

  cout << dec << "speed= " << (int)engineFrame.speed
       << "temp= " << (int)engineFrame.temp << "rpm= " << (int)engineFrame.rpm
       << endl;
}

}  // namespace myapp