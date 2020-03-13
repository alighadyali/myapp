#ifndef CURSES_H_
#define CURSES_H_

#include <ncurses.h>
#include <time.h>
#include <iostream>

#ifdef _cplusplus
extern "C" {
#endif

namespace myapp {

class Curses {
 public:
  Curses(/* args */);
  ~Curses();

  void init();

  void updateGPS(const float& lat, const float& lon);

  void updateEngine(const uint8_t& speed, const uint8_t& temp,
                    const uint16_t& rpm);

  void updateTimeMachine(const int32_t& _time, const int32_t& fluxCap);

  void updateGyroscope(const float& yaw, const float& pitch);

  void close();

 private:
  int row;
  int column;
  SCREEN* screen;
  static const int ENGINE_Y = 2;
  static const int TIME_MACHINE_Y = ENGINE_Y + 4;
  static const int GYROSCOPE_Y = ENGINE_Y + 7;
  static const int GPS_Y = ENGINE_Y + 10;
  static const int START_X = 18;
};

}  // namespace myapp

#ifdef _cplusplus
}
#endif

#endif  // CURSES_H_