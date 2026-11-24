// Generated Code Do Not Modify
#include "org/allbinary/game/input/CompleteMotionGestureInputEvent.h"
#include "org/allbinary/input/motion/gesture/MotionGestureInput.h"
#include "org/allbinary/input/motion/gesture/TouchMotionGestureFactory.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/string/CommonStrings.h"
#include "org/allbinary/game/input/CompleteMotionGestureInputInterface.h"
#if __has_include("org/allbinary/logic/string/StringUtil.h")
#include "org/allbinary/logic/string/StringUtil.h"
#endif
#if __has_include("org/allbinary/input/motion/gesture/TouchMotionGestureFactory.h")
#include "org/allbinary/input/motion/gesture/TouchMotionGestureFactory.h"
#endif



void CompleteMotionGestureInputEvent_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation CompleteMotionGestureInputEvent

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
    self->name = [StringUtil getInstance]->EMPTY_STRING;
    self->motionGestureInput = [TouchMotionGestureFactory getInstance]->NO_MOTION;
}


- (instancetype) init:(const char*)name :(MotionGestureInput*)motionGestureInput {
        self = [super init:motionGestureInput];
        [self initFields];
        [self setName:name];
        JAVA_TRY {
            [self setMotionGestureInput:motionGestureInput];
        } JAVA_CATCH(Exception, e) {
            CommonStrings* commonStrings = [CommonStrings getInstance];
            [self->logUtil put:commonStrings->EXCEPTION :self :"InputToGameKeyEventAction" :e];
        } JAVA_END_TRY;
    return self;
}


- (void) setName:(const char*)name {
        self->name = name;
}


- (const char*) getName {
        return self->name;
}


- (void) setMotionGestureInput:(MotionGestureInput*)motionGestureInput {
        self->motionGestureInput = motionGestureInput;
}


- (MotionGestureInput*) getMotionGestureInput {
        return self->motionGestureInput;
}

@end

