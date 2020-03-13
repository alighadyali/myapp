#ifndef PARSER_H
#define PARSER_H

#include <linux/can.h>
#include <linux/can/raw.h>
#include <stdint.h>
#include <stdio.h>
#include <iomanip>
#include <iostream>
#include "curses.h"
#include "engine.h"
#include "gps.h"
#include "gyroscope.h"
#include "timeMachine.h"

enum CAN_IDS {
  ENGINE = 0XDE,
  TIME_MACHINE = 0XAD,
  GYROSCOPE = 0XBE,
  GPS = 0XEF
};

namespace myapp {

class Parser {
 public:
  Parser(Curses& _curses);

  ~Parser();

  void parse(const canfd_frame& frame);
  const TimeMachineFrame& get() const;

 private:
  Engine engine;
  TimeMachine timeMachine;
  Gyroscope gyroscope;
  Gps gps;
  Curses& curses;
};

}  // namespace myapp

#endif  // PARSER_H