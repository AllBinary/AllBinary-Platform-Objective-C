// Generated Code Do Not Modify
#include "org/allbinary/input/motion/gesture/observer/ScrolledMotionGesturesHandler.h"
#include "org/allbinary/logic/util/event/AllBinaryEventObject.h"
#include "org/allbinary/logic/util/event/EventListenerInterface.h"
#include "org/allbinary/input/motion/gesture/observer/BaseMotionGestureEventListener.h"
#include "org/allbinary/input/motion/gesture/observer/MotionGestureEvent.h"


static ScrolledMotionGesturesHandler* ScrolledMotionGesturesHandler_SINGLETON;

void ScrolledMotionGesturesHandler_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    ScrolledMotionGesturesHandler_SINGLETON = [((ScrolledMotionGesturesHandler*) [ScrolledMotionGesturesHandler alloc]) init];
}

@implementation ScrolledMotionGesturesHandler


+ (ScrolledMotionGesturesHandler*) getInstance {
        return (ScrolledMotionGesturesHandler_staticInit(), ScrolledMotionGesturesHandler_SINGLETON);
}


- (instancetype) init {
    self = [super init];
    return self;
}


// throws Exception
- (void) process:(AllBinaryEventObject*)eventObject :(EventListenerInterface*)eventListenerInterface {
        BaseMotionGestureEventListener* baseMotionGestureEventListener = ((BaseMotionGestureEventListener*) eventListenerInterface);
        [baseMotionGestureEventListener onScrolledMotionGestureEvent:((MotionGestureEvent*) eventObject)];
}

@end

