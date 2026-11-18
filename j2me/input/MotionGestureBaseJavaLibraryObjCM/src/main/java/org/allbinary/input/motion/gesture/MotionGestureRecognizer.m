// Generated Code Do Not Modify
#include "org/allbinary/input/motion/gesture/MotionGestureRecognizer.h"
#include "org/allbinary/graphics/GPoint.h"
#include "org/allbinary/graphics/Line.h"
#include "org/allbinary/graphics/PointFactory.h"
#include "org/allbinary/input/motion/gesture/configuration/MotionGestureConfiguration.h"
#include "org/allbinary/input/motion/gesture/configuration/MotionGestureConfigurationFactory.h"
#include "org/allbinary/input/motion/gesture/observer/BasicMotionGesturesHandler.h"
#include "org/allbinary/input/motion/gesture/observer/MotionEventCircularPool.h"
#include "org/allbinary/input/motion/gesture/observer/MotionGestureEvent.h"
#include "org/allbinary/input/motion/gesture/observer/MovedMotionGesturesHandler.h"
#include "org/allbinary/input/motion/gesture/observer/ScrolledMotionGesturesHandler.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/logic/math/J2SEMath.h"
#include "org/allbinary/logic/util/event/handler/BasicEventHandler.h"
#include "org/allbinary/string/CommonStrings.h"
#include "org/allbinary/input/motion/gesture/TouchMotionGestureFactory.h"
#include "org/allbinary/input/motion/gesture/MotionGestureInput.h"



void MotionGestureRecognizer_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation MotionGestureRecognizer

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
    self->j2seMath = [J2SEMath getInstance];
    self->origin = [PointFactory getInstance]->ZERO_ZERO;
    self->previous = self->origin;
    self->intermediate = self->origin;
    self->line = [((Line*) [Line alloc]) init:self->origin :self->origin];
    
    
    
    
}


- (instancetype) init:(int32_t)id_ {
    self = [super init];
    [self initFields];
        self->motionEventCircularPool = [MotionEventCircularPool createPool:id_];
        BasicEventHandler* motionGesturesHandler = [((BasicEventHandler*) [BasicEventHandler alloc]) init];
        BasicEventHandler* movedMotionGesturesHandler = motionGesturesHandler;
        BasicEventHandler* scrolledMotionGesturesHandler = motionGesturesHandler;
        JAVA_TRY {
            motionGesturesHandler = [BasicMotionGesturesHandler getInstance];
            movedMotionGesturesHandler = [MovedMotionGesturesHandler getInstance];
            scrolledMotionGesturesHandler = [ScrolledMotionGesturesHandler getInstance];
        } JAVA_CATCH(Exception, e) {
            CommonStrings* commonStrings = [CommonStrings getInstance];
            [self->logUtil put:commonStrings->EXCEPTION :self :commonStrings->CONSTRUCTOR :e];
        } JAVA_END_TRY;
        self->motionGesturesHandler = ((BasicMotionGesturesHandler*) motionGesturesHandler);
        self->movedMotionGesturesHandler = movedMotionGesturesHandler;
        self->scrolledMotionGesturesHandler = scrolledMotionGesturesHandler;
    return self;
}


// throws Exception
- (bool) processPressedMotionEvent:(GPoint*)current :(int32_t)deviceId :(int32_t)button {
        self->intermediate = self->origin;
        self->previous = self->origin;
        MotionGestureEvent* event = [self->motionEventCircularPool getInstance:[TouchMotionGestureFactory getInstance]->PRESSED];
        [event setPreviousPoint:self->previous];
        [event setCurrentPoint:current];
        [self->motionGesturesHandler fireEvent:event];
        return true;
}


// throws Exception
- (bool) processReleasedMotionEvent:(GPoint*)current :(int32_t)deviceId :(int32_t)button {
        MotionGestureEvent* event = [self->motionEventCircularPool getInstance:[TouchMotionGestureFactory getInstance]->RELEASED];
        [event setPreviousPoint:self->previous];
        [event setCurrentPoint:current];
        [self->motionGesturesHandler fireEvent:event];
        return true;
}


// throws Exception
- (void) processDraggedMotionEvent:(GPoint*)current :(int32_t)deviceId :(int32_t)buttonMask {
        if (self->previous == self->origin || self->intermediate == self->origin) {
            self->previous = current;
            self->intermediate = current;
            return;
        }
        [self->line setP1:self->previous];
        [self->line setP2:current];
        int32_t minimumMotionGesture = [[MotionGestureConfigurationFactory getInstance] getMinimumMotionGesture];
        if ([self->j2seMath abs:((float) [self->line getDeltaX])] < ((float) minimumMotionGesture) && [self->j2seMath abs:((float) [self->line getDeltaY])] < ((float) minimumMotionGesture)) {
            self->intermediate = current;
            return;
        }
        double gradient = [self->line getGradient];
        double absGradient = ((double) [self->j2seMath abs:((float) gradient)]);
        MotionGestureConfiguration* conf = [MotionGestureConfigurationFactory getInstance];
        TouchMotionGestureFactory* touchMotionGestureFactory = [TouchMotionGestureFactory getInstance];
        MotionGestureInput* newMotionGesture = touchMotionGestureFactory->NO_MOTION;
        double diagonalToleranceHigher = 12.0;
        double diagonalToleranceLower = 12.0;
        if ([conf isDiagonalMotionGestureAllowed]) {
            diagonalToleranceHigher = ((double) (90 - [conf getDiagonalTolerance]));
            diagonalToleranceLower = ((double) [conf getDiagonalTolerance]);
        }
        if (absGradient > tan(((diagonalToleranceHigher) * 3.14159265358979323846 / 180.0))) {
            if ([self->line getDeltaY] > 0.0) {
                newMotionGesture = touchMotionGestureFactory->UP;
            } else {
                newMotionGesture = touchMotionGestureFactory->DOWN;
            }
        } else {
            if (absGradient < tan(((diagonalToleranceLower) * 3.14159265358979323846 / 180.0))) {
                if ([self->line getDeltaX] > 0.0) {
                    newMotionGesture = touchMotionGestureFactory->LEFT;
                } else {
                    newMotionGesture = touchMotionGestureFactory->RIGHT;
                }
            } else {
                if (gradient > 0.0) {
                    if ([self->line getDeltaX] > 0.0) {
                        newMotionGesture = touchMotionGestureFactory->DIAGONAL_UP_LEFT;
                    } else {
                        newMotionGesture = touchMotionGestureFactory->DIAGONAL_DOWN_RIGHT;
                    }
                } else {
                    if ([self->line getDeltaX] > 0.0) {
                        newMotionGesture = touchMotionGestureFactory->DIAGONAL_DOWN_LEFT;
                    } else {
                        newMotionGesture = touchMotionGestureFactory->DIAGONAL_UP_RIGHT;
                    }
                }
            }
        }
        self->previous = current;
        self->intermediate = current;
        MotionGestureEvent* event = [self->motionEventCircularPool getInstance:newMotionGesture];
        [event setPreviousPoint:self->previous];
        [event setCurrentPoint:current];
        [self->motionGesturesHandler fireEvent:event];
        return;
}


// throws Exception
- (bool) processMovedMotionEvent:(GPoint*)current :(int32_t)deviceId :(int32_t)button {
        MotionGestureEvent* event = [self->motionEventCircularPool getInstance:[TouchMotionGestureFactory getInstance]->NO_MOTION];
        [event setPreviousPoint:self->previous];
        [event setCurrentPoint:current];
        [self->movedMotionGesturesHandler fireEvent:event];
        return true;
}


// throws Exception
- (bool) processScrolledMotionEvent:(GPoint*)current :(int32_t)deviceId :(int32_t)button {
        TouchMotionGestureFactory* touchMotionGestureFactory = [TouchMotionGestureFactory getInstance];
        MotionGestureInput* newMotionGesture = touchMotionGestureFactory->NO_MOTION;
        if (button > 0) {
            newMotionGesture = touchMotionGestureFactory->SCROLL_UP;
        } else if (button < 0) {
            newMotionGesture = touchMotionGestureFactory->SCROLL_DOWN;
        }
        MotionGestureEvent* event = [self->motionEventCircularPool getInstance:newMotionGesture];
        [event setPreviousPoint:self->previous];
        [event setCurrentPoint:current];
        [self->scrolledMotionGesturesHandler fireEvent:event];
        return true;
}


- (BasicMotionGesturesHandler*) getMotionGesturesHandler {
        return self->motionGesturesHandler;
}

@end

