// Generated Code Do Not Modify
#include "org/allbinary/input/TouchJ2ME.h"
#include "org/allbinary/input/motion/AllMotionRecognizer.h"
#include "org/allbinary/input/motion/gesture/observer/BasicMotionGesturesHandler.h"
#include "org/allbinary/input/motion/gesture/observer/GameMotionGestureListener.h"
#include "org/allbinary/input/motion/gesture/observer/MotionGestureReceiveInterfaceFactory.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/string/CommonStrings.h"
#if __has_include("org/allbinary/input/MotionGestureRecognizer.h")
#include "org/allbinary/input/MotionGestureRecognizer.h"
#endif
#if __has_include("org/allbinary/input/motion/MotionGestureRecognizer.h")
#include "org/allbinary/input/motion/MotionGestureRecognizer.h"
#endif
#if __has_include("org/allbinary/input/motion/gesture/observer/MotionGestureRecognizer.h")
#include "org/allbinary/input/motion/gesture/observer/MotionGestureRecognizer.h"
#endif
#if __has_include("org/allbinary/input/motion/gesture/observer/MotionGestureRecognizer.h")
#include "org/allbinary/input/motion/gesture/observer/MotionGestureRecognizer.h"
#endif
#if __has_include("org/allbinary/input/motion/gesture/observer/MotionGestureRecognizer.h")
#include "org/allbinary/input/motion/gesture/observer/MotionGestureRecognizer.h"
#endif
#if __has_include("org/allbinary/logic/communication/log/MotionGestureRecognizer.h")
#include "org/allbinary/logic/communication/log/MotionGestureRecognizer.h"
#endif
#if __has_include("org/allbinary/string/MotionGestureRecognizer.h")
#include "org/allbinary/string/MotionGestureRecognizer.h"
#endif



void TouchJ2ME_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation TouchJ2ME

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
    self->DEVICE_ID = 0;
    self->motionRecognizer = [((AllMotionRecognizer*) [AllMotionRecognizer alloc]) init];
}


- (instancetype) init {
    self = [super init];
    [self initFields];
        BasicMotionGesturesHandler* motionGesturesHandler = [[self->motionRecognizer getMotionGestureRecognizer] getMotionGesturesHandler];
        [motionGesturesHandler addListenerInterface:[((GameMotionGestureListener*) [GameMotionGestureListener alloc]) init:[MotionGestureReceiveInterfaceFactory getInstance]]];
    return self;
}


- (void) pointerDragged:(int32_t)x :(int32_t)y {
        JAVA_TRY {
            [self->motionRecognizer processDraggedMotionEvent:x :y :self->DEVICE_ID :0];
        } JAVA_CATCH(Exception, e) {
            CommonStrings* commonStrings = [CommonStrings getInstance];
            [self->logUtil put:commonStrings->EXCEPTION :self :"pointerDragged" :e];
        } JAVA_END_TRY;
}


- (void) pointerPressed:(int32_t)x :(int32_t)y {
        JAVA_TRY {
            [self->motionRecognizer processStartMotionEvent:x :y :self->DEVICE_ID :0];
        } JAVA_CATCH(Exception, e) {
            CommonStrings* commonStrings = [CommonStrings getInstance];
            [self->logUtil put:commonStrings->EXCEPTION :self :"pointerPressed" :e];
        } JAVA_END_TRY;
}


- (void) pointerReleased:(int32_t)x :(int32_t)y {
        JAVA_TRY {
            [self->motionRecognizer processEndMotionEvent:x :y :self->DEVICE_ID :0];
        } JAVA_CATCH(Exception, e) {
            CommonStrings* commonStrings = [CommonStrings getInstance];
            [self->logUtil put:commonStrings->EXCEPTION :self :"pointerReleased" :e];
        } JAVA_END_TRY;
}

@end

