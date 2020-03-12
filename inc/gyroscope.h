#ifndef GYROSCOPE_H_
#define GYROSCOPE_H_

#include <byteswap.h>
#include <linux/can.h>
#include <linux/can/raw.h>
#include <iostream>
#include <iomanip>

namespace myapp {

struct GyroscopeFrame {
  int16_t can_id;
  float yaw;
  float pitch;
};

class Gyroscope {
 public:
  Gyroscope(const int16_t& can_id);
  ~Gyroscope();

  void process(const canfd_frame& frame);

 private:
  GyroscopeFrame gyroscopeFrame;
};

}  // namespace myapp
#endif  // GYROSCOPE_H_