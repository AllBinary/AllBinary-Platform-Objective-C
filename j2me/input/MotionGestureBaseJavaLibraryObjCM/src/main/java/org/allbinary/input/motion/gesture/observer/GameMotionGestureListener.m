// Generated Code Do Not Modify
#include "org/allbinary/input/motion/gesture/observer/GameMotionGestureListener.h"
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



void GameMotionGestureListener_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation GameMotionGestureListener

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
    self->commonStrings = [CommonStrings getInstance];
    self->motionGestureCollection = [((BasicArrayListD*) [BasicArrayListD alloc]) init];
    self->touchGestureCollection = [((BasicArrayListD*) [BasicArrayListD alloc]) init];
    
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
        [self->touchGestureCollection add:[ev getMotionGesture]];
}


- (void) released:(MotionGestureEvent*)ev {
        JAVA_TRY {
            [self->touchGestureCollection add:[ev getMotionGesture]];
            [self->signed_ onMotionGestureCompleted:self->touchGestureCollection];
            [self->touchGestureCollection clear];
        } JAVA_CATCH(Exception, e) {
            StringMaker* stringBuffer = [((StringMaker*) [StringMaker alloc]) init];
            [stringBuffer append:self->commonStrings->EXCEPTION_LABEL];
            [stringBuffer append:[[StringUtil getInstance] toString:[ev getMotionGesture]]];
            [self->logUtil put:[stringBuffer toString] :self :"release" :e];
        } JAVA_END_TRY;
}


- (void) onScrolledMotionGestureEvent:(MotionGestureEvent*)motionGestureEvent {
}


- (void) onMotionGestureEvent:(MotionGestureEvent*)ev {
        JAVA_TRY {
            MotionGestureInput* motionGestureInput = [ev getMotionGesture];
            if (motionGestureInput == [TouchMotionGestureFactory getInstance]->PRESSED) {
                [self onPressedMotionGestureEvent:ev];
            } else if (motionGestureInput == [TouchMotionGestureFactory getInstance]->RELEASED) {
                [self released:ev];
            } else {
                [self->motionGestureCollection add:motionGestureInput];
                [self->signed_ onMotionGestureCompleted:self->motionGestureCollection];
                [self->motionGestureCollection clear];
                [self->touchGestureCollection clear];
            }
        } JAVA_CATCH(Exception, e) {
            StringMaker* stringBuffer = [((StringMaker*) [StringMaker alloc]) init];
            [stringBuffer append:self->commonStrings->EXCEPTION_LABEL];
            [stringBuffer append:[[StringUtil getInstance] toString:[ev getMotionGesture]]];
            [self->logUtil put:[stringBuffer toString] :self :"onMotionGestureEvent" :e];
        } JAVA_END_TRY;
}

@end

