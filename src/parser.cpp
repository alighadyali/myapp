#include "../inc/parser.h"

using namespace std;
namespace myapp {
Parser::Parser()
    : engine(CAN_IDS::ENGINE),
      timeMachine(CAN_IDS::TIME_MACHINE),
      gyroscope(CAN_IDS::GYROSCOPE),
      gps(CAN_IDS::GPS) {}

Parser::~Parser() {}

void Parser::parse(const canfd_frame& frame) {
  switch (frame.can_id) {
    case CAN_IDS::ENGINE:
      cout << "Got Engine" << endl;
      engine.process(frame);
      break;
    case CAN_IDS::TIME_MACHINE:
      cout << "Got Time Machine" << endl;
      timeMachine.process(frame);
      break;
    case CAN_IDS::GYROSCOPE:
      cout << "Got Gyroscope" << endl;
      gyroscope.process(frame);
      break;
    case CAN_IDS::GPS:
      cout << "Got GPS" << endl;
      gps.process(frame);
      break;
    default:
      std::cerr << "Unexpected CAN ID: 0x" << std::hex << std::uppercase
                << std::setw(3) << std::setfill('0') << frame.can_id
                << std::endl;
      std::cerr.copyfmt(std::ios(nullptr));
      break;
  }
}

}  // namespace myapp