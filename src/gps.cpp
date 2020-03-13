#include "../inc/gps.h"
using namespace std;

namespace myapp {
Gps::Gps(const int16_t& can_id) : gpsFrame{can_id, 0.0, 0.0} {}

Gps::~Gps() {}

void Gps::process(const canfd_frame& frame) {
  union {
    uint64_t num;
    float bytes[2];
  } data;

  data.num = le64toh(*(uint64_t*)frame.data);
  cout << "0x" << hex << uppercase << setw(16) << setfill('0') << data.num
       << endl;

  gpsFrame.lat = data.bytes[0];
  gpsFrame.lon = data.bytes[1];

  cout << "lat= " << gpsFrame.lat << " lon= " << gpsFrame.lon << endl;
}

const GpsFrame& Gps::get() const { return gpsFrame; }

}  // namespace myapp
