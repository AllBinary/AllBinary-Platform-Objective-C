// Generated Code Do Not Modify
#include "org/allbinary/input/motion/gesture/observer/MotionEventCircularPool.h"
#include "org/allbinary/game/input/InputFactory.h"
#include "org/allbinary/input/motion/gesture/MotionGestureInput.h"
#include "org/allbinary/input/motion/gesture/TouchMotionGestureFactory.h"
#include "org/allbinary/logic/util/event/AllBinaryEventCircularPool.h"
#include "org/allbinary/input/motion/gesture/observer/MotionEventFactory.h"
#include "org/allbinary/input/motion/gesture/observer/MotionGestureEvent.h"



void MotionEventCircularPool_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation MotionEventCircularPool

- (void) initFields {
    self->MIN = [[TouchMotionGestureFactory getInstance]->LAST_MOTION getId];
    self->eventPool = [((AllBinaryEventCircularPool*) [AllBinaryEventCircularPool alloc]) init:([InputFactory getInstance]->MAX - 1) - self->MIN];
}


+ (MotionEventCircularPool*) createPool:(int32_t)id_ {
        return [((MotionEventCircularPool*) [MotionEventCircularPool alloc]) init:id_];
}


- (instancetype) init:(int32_t)id_ {
    self = [super init];
    [self initFields];
        [self->eventPool initAllBinaryEventCircularPool:[((MotionEventFactory*) [MotionEventFactory alloc]) init:self->eventPool :id_]];
    return self;
}


// throws Exception
// synchronized
- (MotionGestureEvent*) getInstance:(MotionGestureInput*)motionGestureInput {
        return ((MotionGestureEvent*) [self->eventPool getInstance:[motionGestureInput getId] - self->MIN]);
}

@end

