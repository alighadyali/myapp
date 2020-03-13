#include "../inc/parser.h"

using namespace std;
namespace myapp {
Parser::Parser(Curses& _curses)
    : engine(CAN_IDS::ENGINE),
      timeMachine(CAN_IDS::TIME_MACHINE),
      gyroscope(CAN_IDS::GYROSCOPE),
      gps(CAN_IDS::GPS),
      curses(_curses) {}

Parser::~Parser() {}

void Parser::parse(const canfd_frame& frame) {
  switch (frame.can_id) {
    case CAN_IDS::ENGINE:
      cout << "Got Engine" << endl;
      engine.process(frame);
      curses.updateEngine(engine.get().speed, engine.get().temp,
                          engine.get().rpm);
      break;
    case CAN_IDS::TIME_MACHINE:
      cout << "Got Time Machine" << endl;
      timeMachine.process(frame);
      curses.updateTimeMachine(timeMachine.get().time,
                               timeMachine.get().fluxCap);
      break;
    case CAN_IDS::GYROSCOPE:
      cout << "Got Gyroscope" << endl;
      gyroscope.process(frame);
      curses.updateGyroscope(gyroscope.get().yaw, gyroscope.get().pitch);
      break;
    case CAN_IDS::GPS:
      cout << "Got GPS" << endl;
      gps.process(frame);
      curses.updateGPS(gps.get().lat, gps.get().lon);
      break;
    default:
      std::cerr << "Unexpected CAN ID: 0x" << std::hex << std::uppercase
                << std::setw(3) << std::setfill('0') << frame.can_id
                << std::endl;
      std::cerr.copyfmt(std::ios(nullptr));
      break;
  }
  refresh();
}

}  // namespace myapp