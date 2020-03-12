#ifndef TIME_MACHINE_H
#define TIME_MACHINE_H

#include <byteswap.h>
#include <linux/can.h>
#include <linux/can/raw.h>
#include <iomanip>
#include <iostream>

namespace myapp {

struct TimeMachineFrame {
  int16_t can_id;
  time_t time;
  uint32_t fluxCap;
};

class TimeMachine {
 public:
  TimeMachine(const int16_t& can_id);

  ~TimeMachine();

  void process(const canfd_frame& frame);

 private:
  TimeMachineFrame timeMachineFrame;
};
}  // namespace myapp

#endif  // TIME_MACHINE_H