// Generated Code Do Not Modify
#include "org/allbinary/input/motion/gesture/MirrorMotionGestureEventUtil.h"
#include "org/allbinary/graphics/GPoint.h"
#include "org/allbinary/graphics/PointFactory.h"
#include "org/allbinary/input/motion/gesture/observer/MotionEventCircularPool.h"
#include "org/allbinary/input/motion/gesture/observer/MotionGestureEvent.h"
#if __has_include("org/allbinary/graphics/GPoint.h")
#include "org/allbinary/graphics/GPoint.h"
#endif
#if __has_include("org/allbinary/graphics/GPoint.h")
#include "org/allbinary/graphics/GPoint.h"
#endif
#if __has_include("org/allbinary/graphics/GPoint.h")
#include "org/allbinary/graphics/GPoint.h"
#endif
#if __has_include("org/allbinary/graphics/GPoint.h")
#include "org/allbinary/graphics/GPoint.h"
#endif


static MirrorMotionGestureEventUtil* MirrorMotionGestureEventUtil_instance;

void MirrorMotionGestureEventUtil_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    MirrorMotionGestureEventUtil_instance = ((MirrorMotionGestureEventUtil*) [((MirrorMotionGestureEventUtil*) [MirrorMotionGestureEventUtil alloc]) init]);
}

@implementation MirrorMotionGestureEventUtil

- (void) initFields {
    
}


- (instancetype) init {
    self = [super init];
    [self initFields];
        self->motionEventCircularPool = [MotionEventCircularPool createPool:(Integer_staticInit(), Integer_MAX_VALUE)];
    return self;
}


// throws Exception
- (MotionGestureEvent*) mirrorVerticle:(MotionGestureEvent*)motionGestureEvent :(int32_t)halfWidth {
        MotionGestureEvent* event = [self->motionEventCircularPool getInstance:[motionGestureEvent getMotionGesture]];
        int32_t previousNewX = [self getNewX:[[motionGestureEvent getPreviousPoint] getX] :halfWidth];
        int32_t currentNewX = [self getNewX:[[motionGestureEvent getCurrentPoint] getX] :halfWidth];
        PointFactory* pointFactory = [PointFactory getInstance];
        GPoint* mirroredPreviousPoint = [pointFactory createXY:previousNewX :[[motionGestureEvent getPreviousPoint] getY]];
        GPoint* mirroredCurrentPoint = [pointFactory createXY:currentNewX :[[motionGestureEvent getCurrentPoint] getY]];
        [event setPreviousPoint:mirroredPreviousPoint];
        [event setCurrentPoint:mirroredCurrentPoint];
        return event;
}


- (int32_t) getNewX:(int32_t)x :(int32_t)halfWidth {
        int32_t newX = 0;
        if (x > halfWidth) {
            newX = halfWidth - (x - halfWidth);
        } else {
            newX = halfWidth + (halfWidth - x);
        }
        return newX;
}


+ (MirrorMotionGestureEventUtil*) getInstance {
        return (MirrorMotionGestureEventUtil_staticInit(), MirrorMotionGestureEventUtil_instance);
}

@end

