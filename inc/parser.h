#ifndef PARSER_H
#define PARSER_H

#include <linux/can.h>
#include <linux/can/raw.h>
#include <stdint.h>
#include <stdio.h>
#include <iostream>
#include "engine.h"
#include "timeMachine.h"
#include "gyroscope.h"
#include "gps.h"
#include <iomanip>

enum CAN_IDS {
  ENGINE = 0XDE,
  TIME_MACHINE = 0XAD,
  GYROSCOPE = 0XBE,
  GPS = 0XEF
};

namespace myapp {

class Parser {
 public:
  Parser();

  ~Parser();

  void parse(const canfd_frame& frame);
  void test();

 private:
  Engine engine;
  TimeMachine timeMachine;
  Gyroscope gyroscope;
  Gps gps;
};

}  // namespace myapp

#endif  // PARSER_H