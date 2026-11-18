// Generated Code Do Not Modify
#include "org/allbinary/input/motion/gesture/MotionGestureInput.h"
#include "org/allbinary/game/input/InputFactory.h"



void MotionGestureInput_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation MotionGestureInput


- (instancetype) init:(int32_t)id_ :(const char*)name {
        self = [super init:id_ :name];
        InputFactory* inputFactory = [InputFactory getInstance];
        [inputFactory add:[self getId] :self];
    return self;
}

@end

