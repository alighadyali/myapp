#ifndef GPS_H_
#define GPS_H_

#include <byteswap.h>
#include <linux/can.h>
#include <linux/can/raw.h>
#include <iostream>
#include <iomanip>

namespace myapp {

struct GpsFrame {
  int16_t can_id;
  float lat;
  float lon;
};
class Gps {
 public:
  Gps(const int16_t& can_id);
  ~Gps();

  void process(const canfd_frame& frame);

 private:
  GpsFrame gpsFrame;
};

}  // namespace myapp
#endif  // GPS_H_