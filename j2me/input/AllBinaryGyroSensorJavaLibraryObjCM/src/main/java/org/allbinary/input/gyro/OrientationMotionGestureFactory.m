// Generated Code Do Not Modify
#include "org/allbinary/input/gyro/OrientationMotionGestureFactory.h"
#include "org/allbinary/game/input/InputFactory.h"
#include "org/allbinary/input/motion/gesture/MotionGestureInput.h"
#include "org/allbinary/logic/NullUtil.h"
#if __has_include("org/allbinary/logic/NullUtil.h")
#include "org/allbinary/logic/NullUtil.h"
#endif
#if __has_include("org/allbinary/logic/NullUtil.h")
#include "org/allbinary/logic/NullUtil.h"
#endif
#if __has_include("org/allbinary/game/input/InputFactory.h")
#include "org/allbinary/game/input/InputFactory.h"
#endif


static id OrientationMotionGestureFactory_instance;

void OrientationMotionGestureFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    OrientationMotionGestureFactory_instance = [NullUtil getInstance]->NULL_OBJECT;
}

@implementation OrientationMotionGestureFactory

- (void) initFields {
    
    
    
    
    
    
}


+ (OrientationMotionGestureFactory*) getInstance {
        if ((OrientationMotionGestureFactory_staticInit(), OrientationMotionGestureFactory_instance) == [NullUtil getInstance]->NULL_OBJECT) {
            OrientationMotionGestureFactory_instance = ((OrientationMotionGestureFactory*) [((OrientationMotionGestureFactory*) [OrientationMotionGestureFactory alloc]) init]);
        }
        return ((OrientationMotionGestureFactory*) (OrientationMotionGestureFactory_staticInit(), OrientationMotionGestureFactory_instance));
}


- (instancetype) init {
    self = [super init];
    [self initFields];
        int32_t MAX = [InputFactory getInstance]->MAX;
        self->LEFT = ((MotionGestureInput*) [((MotionGestureInput*) [MotionGestureInput alloc]) init:MAX - 20 :"Left Orient"]);
        self->RIGHT = ((MotionGestureInput*) [((MotionGestureInput*) [MotionGestureInput alloc]) init:MAX - 21 :"Right Orient"]);
        self->UP = ((MotionGestureInput*) [((MotionGestureInput*) [MotionGestureInput alloc]) init:MAX - 22 :"Up Orient"]);
        self->DOWN = ((MotionGestureInput*) [((MotionGestureInput*) [MotionGestureInput alloc]) init:MAX - 23 :"Down Orient"]);
        self->ROLL_LEFT = ((MotionGestureInput*) [((MotionGestureInput*) [MotionGestureInput alloc]) init:MAX - 24 :"Roll Left"]);
        self->ROLL_RIGHT = ((MotionGestureInput*) [((MotionGestureInput*) [MotionGestureInput alloc]) init:MAX - 25 :"Roll Right"]);
    return self;
}

@end

