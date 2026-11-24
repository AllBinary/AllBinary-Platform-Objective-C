// Generated Code Do Not Modify
#include "org/allbinary/input/motion/gesture/observer/MovedMotionGesturesHandler.h"
#include "org/allbinary/logic/util/event/AllBinaryEventObject.h"
#include "org/allbinary/logic/util/event/EventListenerInterface.h"
#include "org/allbinary/input/motion/gesture/observer/BaseMotionGestureEventListener.h"
#include "org/allbinary/input/motion/gesture/observer/MotionGestureEvent.h"


static MovedMotionGesturesHandler* MovedMotionGesturesHandler_SINGLETON;

void MovedMotionGesturesHandler_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    MovedMotionGesturesHandler_SINGLETON = ((MovedMotionGesturesHandler*) [((MovedMotionGesturesHandler*) [MovedMotionGesturesHandler alloc]) init]);
}

@implementation MovedMotionGesturesHandler


+ (MovedMotionGesturesHandler*) getInstance {
        return (MovedMotionGesturesHandler_staticInit(), MovedMotionGesturesHandler_SINGLETON);
}


- (instancetype) init {
    self = [super init];
    return self;
}


// throws Exception
- (void) process:(AllBinaryEventObject*)eventObject :(EventListenerInterface*)eventListenerInterface {
        BaseMotionGestureEventListener* baseMotionGestureEventListener = ((BaseMotionGestureEventListener*) eventListenerInterface);
        [((id<BaseMotionGestureEventListener>) baseMotionGestureEventListener) onMotionGestureEvent:((MotionGestureEvent*) eventObject)];
}

@end

