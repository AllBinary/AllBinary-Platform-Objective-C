// Generated Code Do Not Modify
#include "org/allbinary/input/motion/gesture/TrackballMotionGestureFactory.h"
#include "org/allbinary/game/input/InputFactory.h"
#include "org/allbinary/logic/NullUtil.h"
#include "org/allbinary/input/motion/gesture/MotionGestureInput.h"
#if __has_include("org/allbinary/logic/NullUtil.h")
#include "org/allbinary/logic/NullUtil.h"
#endif
#if __has_include("org/allbinary/logic/NullUtil.h")
#include "org/allbinary/logic/NullUtil.h"
#endif
#if __has_include("org/allbinary/game/input/InputFactory.h")
#include "org/allbinary/game/input/InputFactory.h"
#endif


static id TrackballMotionGestureFactory_instance;

void TrackballMotionGestureFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    TrackballMotionGestureFactory_instance = [NullUtil getInstance]->NULL_OBJECT;
}

@implementation TrackballMotionGestureFactory

- (void) initFields {
    
    
    
    
}


+ (TrackballMotionGestureFactory*) getInstance {
        if ((TrackballMotionGestureFactory_staticInit(), TrackballMotionGestureFactory_instance) == [NullUtil getInstance]->NULL_OBJECT) {
            TrackballMotionGestureFactory_instance = ((TrackballMotionGestureFactory*) [((TrackballMotionGestureFactory*) [TrackballMotionGestureFactory alloc]) init]);
        }
        return ((TrackballMotionGestureFactory*) (TrackballMotionGestureFactory_staticInit(), TrackballMotionGestureFactory_instance));
}


- (instancetype) init {
    self = [super init];
    [self initFields];
        int32_t MAX = [InputFactory getInstance]->MAX;
        self->LEFT = ((MotionGestureInput*) [((MotionGestureInput*) [MotionGestureInput alloc]) init:MAX - 26 :"L Trackball"]);
        self->RIGHT = ((MotionGestureInput*) [((MotionGestureInput*) [MotionGestureInput alloc]) init:MAX - 27 :"R Trackball"]);
        self->UP = ((MotionGestureInput*) [((MotionGestureInput*) [MotionGestureInput alloc]) init:MAX - 28 :"Up Trackball"]);
        self->DOWN = ((MotionGestureInput*) [((MotionGestureInput*) [MotionGestureInput alloc]) init:MAX - 29 :"D Trackball"]);
    return self;
}

@end

