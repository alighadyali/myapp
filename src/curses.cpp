#include "../inc/curses.h"
using namespace std;

namespace myapp {
Curses::Curses() : row(0), column(0), screen(nullptr) {}

Curses::~Curses() {}

void Curses::init() {
  FILE* f = fopen("/dev/tty", "r+");
  screen = newterm(NULL, f, f);
  set_term(screen);
  raw();
  keypad(stdscr, TRUE);
  getmaxyx(stdscr, row, column); /* get the number of rows and columns */
  // printw("row=%d col=%d", row, column);
  printw("%30s","VEHICLE DASHBOARD");
  mvprintw(ENGINE_Y, 0, "%15s", "ENGINE:");
  mvprintw(TIME_MACHINE_Y, 0, "%15s", "TIME MACHINE:");
  mvprintw(GYROSCOPE_Y, 0, "%15s", "GYROSCOPE:");
  mvprintw(GPS_Y, 0, "%15s", "GPS:");
  // updateEngine(88, 24, 1500);
  // updateTimeMachine(-1729491887, 1200000000);
  // updateGPS(45, -145);
  // updateGyroscope(22, 12);
  mvprintw(row - 1, 0, "\n");

  refresh(); /* Print it on to the real screen */
  // getch();
}

void Curses::updateGPS(const float& lat, const float& lon) {
  mvprintw(GPS_Y, START_X, "%6s %08.3f", "LAT:", lat);
  mvprintw(GPS_Y + 1, START_X, "%6s %08.3f", "LON:", lon);
}

void Curses::updateEngine(const uint8_t& speed, const uint8_t& temp,
                          const uint16_t& rpm) {
  mvprintw(ENGINE_Y, START_X, "%6s %4d", "SPEED:", speed);
  mvprintw(ENGINE_Y + 1, START_X, "%6s %4d", "TEMP:", temp);
  mvprintw(ENGINE_Y + 2, START_X, "%6s %4d", "RPM:", rpm);
}

void Curses::updateTimeMachine(const int32_t& _time, const int32_t& fluxCap) {
  time_t rawtime = static_cast<time_t>(_time);
  struct tm* info;
  char buffer[80];
  info = localtime(&rawtime);
  strftime(buffer, sizeof(buffer), "%Y-%m-%d %H:%M %p", info);
  mvprintw(TIME_MACHINE_Y, START_X, "%6s %s", "TIME:", buffer);
  mvprintw(TIME_MACHINE_Y + 1, START_X, "%6s %d", "FLUX:", fluxCap);
}

void Curses::updateGyroscope(const float& yaw, const float& pitch) {
  mvprintw(GYROSCOPE_Y, START_X, "%6s %06.3f", "YAW:", yaw);
  mvprintw(GYROSCOPE_Y + 1, START_X, "%6s %06.3f", "PITCH:", pitch);
}

void Curses::close() {
  endwin();
  delscreen(screen);
}
}  // namespace myapp
