#include "../inc/timeMachine.h"
using namespace std;
namespace myapp {

TimeMachine::TimeMachine(const int16_t& can_id)
    : timeMachineFrame{can_id, 0, 0} {}

TimeMachine::~TimeMachine() {}

const TimeMachineFrame& TimeMachine::get() const { return timeMachineFrame; }

void TimeMachine::process(const canfd_frame& frame) {
  union {
    int64_t num;
    int32_t bytes[2];
  } data;

  data.num = le64toh(*(int64_t*)frame.data);
  cout << "0x" << hex << uppercase << setw(16) << setfill('0') << data.num
       << endl;

  timeMachineFrame.fluxCap = static_cast<uint32_t>(data.bytes[1]);
  timeMachineFrame.time = static_cast<int32_t>(data.bytes[0]);

  cout << dec << "fluxCap= " << timeMachineFrame.fluxCap
       << " time= " << timeMachineFrame.time << endl;
}
}  // namespace myapp