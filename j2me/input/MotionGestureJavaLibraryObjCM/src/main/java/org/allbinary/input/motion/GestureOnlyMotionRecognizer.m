// Generated Code Do Not Modify
#include "org/allbinary/input/motion/GestureOnlyMotionRecognizer.h"
#include "org/allbinary/graphics/CustomGPoint.h"
#include "org/allbinary/graphics/GPointCircularPool.h"
#include "org/allbinary/input/motion/gesture/MotionGestureRecognizer.h"
#include "org/allbinary/input/motion/MotionRecognizer.h"


static int32_t GestureOnlyMotionRecognizer_index = 0;
static GPointCircularPool* GestureOnlyMotionRecognizer_pointCircularPool;

void GestureOnlyMotionRecognizer_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    GestureOnlyMotionRecognizer_pointCircularPool = ((GPointCircularPool*) [((GPointCircularPool*) [GPointCircularPool alloc]) init:40]);
}

@implementation GestureOnlyMotionRecognizer

- (void) initFields {
    
    
}


- (instancetype) init {
    self = [super init];
    [self initFields];
        self->id_ = GestureOnlyMotionRecognizer_index++;
        self->motionGestureRecognizer = ((MotionGestureRecognizer*) [((MotionGestureRecognizer*) [MotionGestureRecognizer alloc]) init:self->id_]);
    return self;
}


// throws Exception
- (void) processStartMotionEvent:(int32_t)x :(int32_t)y :(int32_t)deviceId :(int32_t)modifiers {
        CustomGPoint* point = ((CustomGPoint*) [(GestureOnlyMotionRecognizer_staticInit(), GestureOnlyMotionRecognizer_pointCircularPool) getNextInstance]);
        [point setX:x];
        [point setY:y];
        [self->motionGestureRecognizer processPressedMotionEvent:point :deviceId :modifiers];
}


// throws Exception
- (void) processEndMotionEvent:(int32_t)x :(int32_t)y :(int32_t)deviceId :(int32_t)modifiers {
        CustomGPoint* point = ((CustomGPoint*) [(GestureOnlyMotionRecognizer_staticInit(), GestureOnlyMotionRecognizer_pointCircularPool) getNextInstance]);
        [point setX:x];
        [point setY:y];
        [self->motionGestureRecognizer processReleasedMotionEvent:point :deviceId :modifiers];
}


// throws Exception
- (void) processDraggedMotionEvent:(int32_t)x :(int32_t)y :(int32_t)deviceId :(int32_t)modifiers {
        CustomGPoint* point = ((CustomGPoint*) [(GestureOnlyMotionRecognizer_staticInit(), GestureOnlyMotionRecognizer_pointCircularPool) getNextInstance]);
        [point setX:x];
        [point setY:y];
        [self->motionGestureRecognizer processDraggedMotionEvent:point :deviceId :modifiers];
}

@end

