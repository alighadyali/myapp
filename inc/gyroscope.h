#ifndef GYROSCOPE_H_
#define GYROSCOPE_H_

#include <byteswap.h>
#include <linux/can.h>
#include <linux/can/raw.h>
#include <iomanip>
#include <iostream>

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

  const GyroscopeFrame& get() const;

 private:
  GyroscopeFrame gyroscopeFrame;
};

}  // namespace myapp
#endif  // GYROSCOPE_H_