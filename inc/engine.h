#ifndef ENGINE_H
#define ENGINE_H

#include <iostream>
#include <linux/can.h>
#include <linux/can/raw.h>
#include <byteswap.h>
#include <iomanip>

namespace myapp {

struct EngineFrame {
  int16_t can_id;
  uint8_t speed;
  uint8_t temp;
  uint16_t rpm;
};

class Engine {
 public:
  Engine(const int16_t& can_id);
  ~Engine();
  void process(const canfd_frame& frame);

  EngineFrame& getEngineFrame();

 private:
  EngineFrame engineFrame;
  static const uint8_t LENGTH = 4;
};
}  // namespace myapp

#endif  // ENGINE_H