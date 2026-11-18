// Generated Code Do Not Modify
#include "org/allbinary/input/motion/gesture/observer/BasicMotionGesturesHandler.h"
#include "org/allbinary/logic/util/event/AllBinaryEventObject.h"
#include "org/allbinary/logic/util/event/EventListenerInterface.h"
#include "org/allbinary/input/motion/gesture/observer/BaseMotionGestureEventListener.h"
#include "org/allbinary/input/motion/gesture/observer/MotionGestureEvent.h"


static BasicMotionGesturesHandler* BasicMotionGesturesHandler_SINGLETON;

void BasicMotionGesturesHandler_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    BasicMotionGesturesHandler_SINGLETON = [((BasicMotionGesturesHandler*) [BasicMotionGesturesHandler alloc]) init];
}

@implementation BasicMotionGesturesHandler


+ (BasicMotionGesturesHandler*) getInstance {
        return (BasicMotionGesturesHandler_staticInit(), BasicMotionGesturesHandler_SINGLETON);
}


- (instancetype) init {
    self = [super init];
    return self;
}


// throws Exception
- (void) process:(AllBinaryEventObject*)eventObject :(EventListenerInterface*)eventListenerInterface {
        BaseMotionGestureEventListener* baseMotionGestureEventListener = ((BaseMotionGestureEventListener*) eventListenerInterface);
        [baseMotionGestureEventListener onMotionGestureEvent:((MotionGestureEvent*) eventObject)];
}

@end

