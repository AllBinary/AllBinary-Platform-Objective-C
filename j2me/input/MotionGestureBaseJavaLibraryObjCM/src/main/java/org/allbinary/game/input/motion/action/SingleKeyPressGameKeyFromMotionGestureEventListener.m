// Generated Code Do Not Modify
#include "org/allbinary/game/input/motion/action/SingleKeyPressGameKeyFromMotionGestureEventListener.h"
#include "org/allbinary/game/input/CompleteMotionGestureInputEvent.h"
#include "org/allbinary/game/input/event/GameKeyEvent.h"
#include "org/allbinary/game/input/event/PressGameKeyEventHandler.h"
#include "org/allbinary/logic/communication/log/ForcedLogUtil.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/logic/util/event/AllBinaryEventObject.h"
#include "org/allbinary/logic/util/event/EventStrings.h"
#include "org/allbinary/string/CommonStrings.h"
#include "org/allbinary/game/input/motion/action/GameKeyCompleteMotionGestureInputEvent.h"
#if __has_include("org/allbinary/logic/util/event/EventStrings.h")
#include "org/allbinary/logic/util/event/EventStrings.h"
#endif
#if __has_include("org/allbinary/game/input/event/PressGameKeyEventHandler.h")
#include "org/allbinary/game/input/event/PressGameKeyEventHandler.h"
#endif



void SingleKeyPressGameKeyFromMotionGestureEventListener_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation SingleKeyPressGameKeyFromMotionGestureEventListener

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


- (void) onEvent:(AllBinaryEventObject*)eventObject {
        [ForcedLogUtil log:[EventStrings getInstance]->PERFORMANCE_MESSAGE :self];
}


- (void) onCompleteMotionGestureInputEvent:(CompleteMotionGestureInputEvent*)completeMotionGestureInputEvent {
        JAVA_TRY {
            GameKeyCompleteMotionGestureInputEvent* gameKeyCompleteMotionGestureInputEvent = ((GameKeyCompleteMotionGestureInputEvent*) completeMotionGestureInputEvent);
            GameKeyEvent* gameKeyEvent = [gameKeyCompleteMotionGestureInputEvent getGameKeyEvent];
            [[PressGameKeyEventHandler getInstance] fireEvent:gameKeyEvent];
        } JAVA_CATCH(Exception, e) {
            CommonStrings* commonStrings = [CommonStrings getInstance];
            [self->logUtil put:commonStrings->EXCEPTION :self :"onCompleteMotionGestureInputEvent" :e];
        } JAVA_END_TRY;
}

@end

