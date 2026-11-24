// Generated Code Do Not Modify
#include "org/allbinary/input/motion/gesture/observer/MotionGestureEvent.h"
#include "org/allbinary/graphics/GPoint.h"
#include "org/allbinary/graphics/PointFactory.h"
#include "org/allbinary/input/motion/gesture/MotionGestureInput.h"
#include "org/allbinary/input/motion/gesture/TouchMotionGestureFactory.h"
#include "org/allbinary/TsUtil.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/string/CommonLabels.h"
#if __has_include("org/allbinary/input/motion/gesture/TouchMotionGestureFactory.h")
#include "org/allbinary/input/motion/gesture/TouchMotionGestureFactory.h"
#endif
#if __has_include("org/allbinary/graphics/PointFactory.h")
#include "org/allbinary/graphics/PointFactory.h"
#endif
#if __has_include("org/allbinary/graphics/PointFactory.h")
#include "org/allbinary/graphics/PointFactory.h"
#endif
#if __has_include("org/allbinary/TsUtil.h")
#include "org/allbinary/TsUtil.h"
#endif


static const char* MotionGestureEvent_PREVIOUS = " Previous: ";
static const char* MotionGestureEvent_HASHCODE = " hashcode: ";

void MotionGestureEvent_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation MotionGestureEvent

- (void) initFields {
    self->motionGesture = [TouchMotionGestureFactory getInstance]->NO_MOTION;
    
    self->previousPoint = [PointFactory getInstance]->ZERO_ZERO;
    self->currentPoint = [PointFactory getInstance]->ZERO_ZERO;
    self->commonLabels = [CommonLabels getInstance];
}


- (instancetype) init:(id)source :(int32_t)id_ :(MotionGestureInput*)motionGesture {
        self = [super init:source];
        [self initFields];
        self->id_ = id_;
        [self setMotionGesture:motionGesture];
    return self;
}


- (MotionGestureInput*) getMotionGesture {
        return self->motionGesture;
}


- (void) setMotionGesture:(MotionGestureInput*)motionGesture {
        self->motionGesture = motionGesture;
}


- (GPoint*) getPreviousPoint {
        return self->previousPoint;
}


- (void) setPreviousPoint:(GPoint*)previousPoint {
        self->previousPoint = previousPoint;
}


- (GPoint*) getCurrentPoint {
        return self->currentPoint;
}


- (void) setCurrentPoint:(GPoint*)currentPoint {
        self->currentPoint = currentPoint;
}


- (const char*) toString {
        StringMaker* stringBuffer = ((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]);
        StringUtil* stringUtil = [StringUtil getInstance];
        [stringBuffer append:[stringUtil toString:self->motionGesture]];
        [stringBuffer append:self->commonLabels->CURRENT];
        [stringBuffer append:[stringUtil toString:self->currentPoint]];
        [stringBuffer append:MotionGestureEvent_PREVIOUS];
        [stringBuffer append:[stringUtil toString:self->previousPoint]];
        [stringBuffer append:MotionGestureEvent_HASHCODE];
        [stringBuffer appendint:[[TsUtil getInstance] hashCode:self]];
        return [stringBuffer toString];
}


- (int32_t) getId {
        return self->id_;
}

@end

