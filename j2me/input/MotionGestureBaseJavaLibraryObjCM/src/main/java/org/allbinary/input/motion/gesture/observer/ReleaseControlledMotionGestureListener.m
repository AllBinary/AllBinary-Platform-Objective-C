// Generated Code Do Not Modify
#include "org/allbinary/input/motion/gesture/observer/ReleaseControlledMotionGestureListener.h"
#include "org/allbinary/input/motion/gesture/MotionGestureInput.h"
#include "org/allbinary/input/motion/gesture/TouchMotionGestureFactory.h"
#include "org/allbinary/logic/communication/log/ForcedLogUtil.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/logic/util/event/AllBinaryEventObject.h"
#include "org/allbinary/string/CommonStrings.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/util/BasicArrayListD.h"
#include "org/allbinary/input/motion/gesture/observer/MotionGestureEventListener.h"
#include "org/allbinary/input/motion/gesture/observer/CompleteMotionGestureListenerInterface.h"
#include "org/allbinary/input/motion/gesture/observer/MotionGestureEvent.h"
#if __has_include("org/allbinary/input/motion/gesture/TouchMotionGestureFactory.h")
#include "org/allbinary/input/motion/gesture/TouchMotionGestureFactory.h"
#endif
#if __has_include("org/allbinary/input/motion/gesture/TouchMotionGestureFactory.h")
#include "org/allbinary/input/motion/gesture/TouchMotionGestureFactory.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/string/StringUtil.h")
#include "org/allbinary/logic/string/StringUtil.h"
#endif
#if __has_include("org/allbinary/input/motion/gesture/TouchMotionGestureFactory.h")
#include "org/allbinary/input/motion/gesture/TouchMotionGestureFactory.h"
#endif
#if __has_include("org/allbinary/input/motion/gesture/TouchMotionGestureFactory.h")
#include "org/allbinary/input/motion/gesture/TouchMotionGestureFactory.h"
#endif



void ReleaseControlledMotionGestureListener_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation ReleaseControlledMotionGestureListener

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
    self->commonStrings = [CommonStrings getInstance];
    self->currentMotionGesture = [TouchMotionGestureFactory getInstance]->NO_MOTION;
    self->isMouseGestureOccurring = false;
    self->motionGestureCollection = ((BasicArrayListD*) [((BasicArrayListD*) [BasicArrayListD alloc]) init]);
    
}


- (instancetype) init:(CompleteMotionGestureListenerInterface*)signed_ {
    self = [super init];
    [self initFields];
        [self->logUtil putF:self->commonStrings->START :self :self->commonStrings->CONSTRUCTOR];
        self->signed_ = signed_;
    return self;
}


- (void) onEvent:(AllBinaryEventObject*)eventObject {
        [ForcedLogUtil log:self->commonStrings->NOT_IMPLEMENTED :self];
}


- (void) onUpMotionGestureEvent:(MotionGestureEvent*)ev {
        [self onMotionGestureEvent:ev];
}


- (void) onDownMotionGestureEvent:(MotionGestureEvent*)ev {
        [self onMotionGestureEvent:ev];
}


- (void) onLeftMotionGestureEvent:(MotionGestureEvent*)ev {
        [self onMotionGestureEvent:ev];
}


- (void) onRightMotionGestureEvent:(MotionGestureEvent*)ev {
        [self onMotionGestureEvent:ev];
}


- (void) onDiagonalDownRightMotionGestureEvent:(MotionGestureEvent*)ev {
        [self onMotionGestureEvent:ev];
}


- (void) onDiagonalDownLeftMotionGestureEvent:(MotionGestureEvent*)ev {
        [self onMotionGestureEvent:ev];
}


- (void) onDiagonalUpRightMotionGestureEvent:(MotionGestureEvent*)ev {
        [self onMotionGestureEvent:ev];
}


- (void) onDiagonalUpLeftMotionGestureEvent:(MotionGestureEvent*)ev {
        [self onMotionGestureEvent:ev];
}


- (void) onPressedMotionGestureEvent:(MotionGestureEvent*)ev {
        self->isMouseGestureOccurring = true;
        self->currentMotionGesture = [TouchMotionGestureFactory getInstance]->NO_MOTION;
        [self onMotionGestureEvent:ev];
}


- (void) onScrolledMotionGestureEvent:(MotionGestureEvent*)motionGestureEvent {
}


- (void) released:(MotionGestureEvent*)ev {
        JAVA_TRY {
            if (self->isMouseGestureOccurring == false) {
                return;
            }
            self->isMouseGestureOccurring = false;
            [((id<CompleteMotionGestureListenerInterface>) self->signed_) onMotionGestureCompleted:self->motionGestureCollection];
            [self->motionGestureCollection clear];
        } JAVA_CATCH(Exception, e) {
            [self->logUtil put:[[[((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]) append:self->commonStrings->EXCEPTION_LABEL] append:[[StringUtil getInstance] toString:[ev getMotionGesture]]] toString] :self :"release" :e];
        } JAVA_END_TRY;
}


- (void) onMotionGestureEvent:(MotionGestureEvent*)ev {
        if (self->isMouseGestureOccurring == false) {
            return;
        }
        MotionGestureInput* motionGestureInput = [ev getMotionGesture];
        if (motionGestureInput == [TouchMotionGestureFactory getInstance]->PRESSED) {
            [self onPressedMotionGestureEvent:ev];
        } else if (motionGestureInput == [TouchMotionGestureFactory getInstance]->RELEASED) {
            [self released:ev];
        } else {
            if (self->currentMotionGesture != motionGestureInput) {
                self->currentMotionGesture = motionGestureInput;
                [self->motionGestureCollection add:[ev getMotionGesture]];
            }
        }
}

@end

