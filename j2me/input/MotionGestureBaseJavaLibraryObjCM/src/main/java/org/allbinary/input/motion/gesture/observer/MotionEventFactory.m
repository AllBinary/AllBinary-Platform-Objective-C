// Generated Code Do Not Modify
#include "org/allbinary/input/motion/gesture/observer/MotionEventFactory.h"
#include "org/allbinary/game/input/Input.h"
#include "org/allbinary/game/input/InputFactory.h"
#include "org/allbinary/input/motion/gesture/MotionGestureInput.h"
#include "org/allbinary/input/motion/gesture/TouchMotionGestureFactory.h"
#include "org/allbinary/logic/util/event/AllBinaryEventObject.h"
#include "org/allbinary/input/motion/gesture/observer/MotionGestureEvent.h"
#if __has_include("org/allbinary/input/motion/gesture/TouchMotionGestureFactory.h")
#include "org/allbinary/input/motion/gesture/TouchMotionGestureFactory.h"
#endif
#if __has_include("org/allbinary/input/motion/gesture/TouchMotionGestureFactory.h")
#include "org/allbinary/input/motion/gesture/TouchMotionGestureFactory.h"
#endif


static int32_t MotionEventFactory_index = 0;

void MotionEventFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation MotionEventFactory

- (void) initFields {
    
    
}


- (instancetype) init:(id)source :(int32_t)id_ {
    self = [super init];
    [self initFields];
        self->source = source;
        self->id_ = id_;
        MotionEventFactory_index = [[TouchMotionGestureFactory getInstance]->LAST_MOTION getId];
    return self;
}


- (AllBinaryEventObject*) getInstance {
        InputFactory* inputFactory = [InputFactory getInstance];
        Input* input = [inputFactory getInstanceById:MotionEventFactory_index++];
        if (input == inputFactory->NO_INPUT) {
            return ((MotionGestureEvent*) [((MotionGestureEvent*) [MotionGestureEvent alloc]) init:self->source :self->id_ :((MotionGestureInput*) [TouchMotionGestureFactory getInstance]->NO_MOTION)]);
        } else {
            return ((MotionGestureEvent*) [((MotionGestureEvent*) [MotionGestureEvent alloc]) init:self->source :self->id_ :((MotionGestureInput*) input)]);
        }
}

@end

