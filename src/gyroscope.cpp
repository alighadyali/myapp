#include "../inc/gyroscope.h"
using namespace std;

namespace myapp {
Gyroscope::Gyroscope(const int16_t& can_id)
    : gyroscopeFrame{can_id, 0.0, 0.0} {}

Gyroscope::~Gyroscope() {}

const GyroscopeFrame& Gyroscope::get() const { return gyroscopeFrame; }

void Gyroscope::process(const canfd_frame& frame) {
  union {
    uint64_t num;
    float bytes[2];
  } data;

  data.num = le64toh(*(uint64_t*)frame.data);
  cout << "0x" << hex << uppercase << setw(16) << setfill('0') << data.num
       << endl;

  gyroscopeFrame.yaw = data.bytes[0];
  gyroscopeFrame.pitch = data.bytes[1];

  cout << dec << "yaw= " << gyroscopeFrame.yaw
       << " pitch= " << gyroscopeFrame.pitch << endl;
}
}  // namespace myapp

//