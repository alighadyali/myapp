#include "../inc/parser.h"

using namespace std;
namespace myapp {
Parser::Parser() : engine(CAN_IDS::ENGINE) {}

Parser::~Parser() {}

void Parser::parse(const canfd_frame& frame) {
  switch (frame.can_id) {
    case CAN_IDS::ENGINE:
      cout << "Got Engine" << endl;  // XXX
      engine.process(frame);
      break;

    default:
      break;
  }
}

}  // namespace myapp