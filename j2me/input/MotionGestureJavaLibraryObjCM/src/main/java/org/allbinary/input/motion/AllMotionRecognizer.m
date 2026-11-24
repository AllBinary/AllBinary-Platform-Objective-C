// Generated Code Do Not Modify
#include "org/allbinary/input/motion/AllMotionRecognizer.h"
#include "org/allbinary/graphics/CustomGPoint.h"
#include "org/allbinary/graphics/GPointCircularPool.h"
#include "org/allbinary/input/motion/button/TouchButtonRecognizer.h"
#include "org/allbinary/input/motion/gesture/MotionGestureRecognizer.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/input/motion/MotionRecognizer.h"


static int32_t AllMotionRecognizer_index = 0;
static GPointCircularPool* AllMotionRecognizer_pointCircularPool;

void AllMotionRecognizer_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    AllMotionRecognizer_pointCircularPool = ((GPointCircularPool*) [((GPointCircularPool*) [GPointCircularPool alloc]) init:40]);
}

@implementation AllMotionRecognizer

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
    
    self->touchButtonProcessing = false;
    
    
    self->lastX = 0;
    self->lastY = 0;
}


- (instancetype) init {
    self = [super init];
    [self initFields];
        self->id_ = AllMotionRecognizer_index++;
        self->motionGestureRecognizer = ((MotionGestureRecognizer*) [((MotionGestureRecognizer*) [MotionGestureRecognizer alloc]) init:self->id_]);
        self->touchButtonRecognizer = ((TouchButtonRecognizer*) [((TouchButtonRecognizer*) [TouchButtonRecognizer alloc]) init]);
    return self;
}


// throws Exception
- (void) processStartMotionEvent:(int32_t)x :(int32_t)y :(int32_t)deviceId :(int32_t)modifiers {
        if ([self->touchButtonRecognizer pressTouchButtonInput:x :y :deviceId]) {
            self->touchButtonProcessing = true;
        }
        if (!self->touchButtonProcessing) {
            CustomGPoint* point = ((CustomGPoint*) [(AllMotionRecognizer_staticInit(), AllMotionRecognizer_pointCircularPool) getNextInstance]);
            [point setX:x];
            [point setY:y];
            [self->motionGestureRecognizer processPressedMotionEvent:point :deviceId :modifiers];
        }
}


// throws Exception
- (void) processEndMotionEvent:(int32_t)x :(int32_t)y :(int32_t)deviceId :(int32_t)modifiers {
        if ([self->touchButtonRecognizer releaseTouchButtonInput:x :y :deviceId]) {
        }
        if (!self->touchButtonProcessing) {
            CustomGPoint* point = ((CustomGPoint*) [(AllMotionRecognizer_staticInit(), AllMotionRecognizer_pointCircularPool) getNextInstance]);
            [point setX:x];
            [point setY:y];
            [self->motionGestureRecognizer processReleasedMotionEvent:point :deviceId :modifiers];
        }
        if (self->touchButtonProcessing) {
            self->touchButtonProcessing = false;
        }
}


// throws Exception
- (void) processDraggedMotionEvent:(int32_t)x :(int32_t)y :(int32_t)deviceId :(int32_t)modifiers {
        if (self->touchButtonProcessing) {
            [self->touchButtonRecognizer pressTouchButtonInput:x :y :deviceId];
        }
        if (!self->touchButtonProcessing) {
            CustomGPoint* point = ((CustomGPoint*) [(AllMotionRecognizer_staticInit(), AllMotionRecognizer_pointCircularPool) getNextInstance]);
            [point setX:x];
            [point setY:y];
            [self->motionGestureRecognizer processDraggedMotionEvent:point :deviceId :modifiers];
        }
}


// throws Exception
- (void) processMovedMotionEvent:(int32_t)x :(int32_t)y :(int32_t)deviceId :(int32_t)modifiers {
        if (x != self->lastX || y != self->lastY) {
            self->lastX = x;
            self->lastY = y;
            CustomGPoint* point = ((CustomGPoint*) [(AllMotionRecognizer_staticInit(), AllMotionRecognizer_pointCircularPool) getNextInstance]);
            [point setX:x];
            [point setY:y];
            [self->motionGestureRecognizer processMovedMotionEvent:point :deviceId :modifiers];
        }
}


// throws Exception
- (void) processScrolledMotionEvent:(int32_t)x :(int32_t)y :(int32_t)deviceId :(int32_t)modifiers {
        CustomGPoint* point = ((CustomGPoint*) [(AllMotionRecognizer_staticInit(), AllMotionRecognizer_pointCircularPool) getNextInstance]);
        [point setX:x];
        [point setY:y];
        [self->motionGestureRecognizer processScrolledMotionEvent:point :deviceId :modifiers];
}


- (MotionGestureRecognizer*) getMotionGestureRecognizer {
        return self->motionGestureRecognizer;
}

@end

