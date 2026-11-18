// Generated Code Do Not Modify
#include "org/allbinary/game/input/motion/action/NoCompleteMotionGestureInputEventListener.h"
#include "org/allbinary/game/input/CompleteMotionGestureInputEvent.h"
#include "org/allbinary/logic/communication/log/ForcedLogUtil.h"
#include "org/allbinary/logic/util/event/AllBinaryEventObject.h"
#include "org/allbinary/logic/util/event/EventStrings.h"


static NoCompleteMotionGestureInputEventListener* NoCompleteMotionGestureInputEventListener_instance;

void NoCompleteMotionGestureInputEventListener_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    NoCompleteMotionGestureInputEventListener_instance = [((NoCompleteMotionGestureInputEventListener*) [NoCompleteMotionGestureInputEventListener alloc]) init];
}

@implementation NoCompleteMotionGestureInputEventListener


- (instancetype) init {
    self = [super init];
    return self;
}


- (void) onEvent:(AllBinaryEventObject*)eventObject {
        [ForcedLogUtil log:[EventStrings getInstance]->PERFORMANCE_MESSAGE :self];
}


- (void) onCompleteMotionGestureInputEvent:(CompleteMotionGestureInputEvent*)completeMotionGestureInputEvent {
}


+ (NoCompleteMotionGestureInputEventListener*) getInstance {
        return (NoCompleteMotionGestureInputEventListener_staticInit(), NoCompleteMotionGestureInputEventListener_instance);
}

@end

