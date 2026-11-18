// Generated Code Do Not Modify
#include "org/allbinary/game/input/motion/action/GameKeyFromMotionGestureEventListener.h"
#include "org/allbinary/game/input/CompleteMotionGestureInputEvent.h"
#include "org/allbinary/game/input/event/DownGameKeyEventHandler.h"
#include "org/allbinary/game/input/event/GameKeyEvent.h"
#include "org/allbinary/game/input/event/UpGameKeyEventHandler.h"
#include "org/allbinary/logic/communication/log/ForcedLogUtil.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/logic/util/event/AllBinaryEventObject.h"
#include "org/allbinary/logic/util/event/EventStrings.h"
#include "org/allbinary/string/CommonStrings.h"
#include "org/allbinary/game/input/motion/action/GameKeyCompleteMotionGestureInputEvent.h"



void GameKeyFromMotionGestureEventListener_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation GameKeyFromMotionGestureEventListener

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
    self->previousGameKeyEvent = (GameKeyEvent_staticInit(), GameKeyEvent_NONE);
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
            if (gameKeyEvent != self->previousGameKeyEvent) {
                if (self->previousGameKeyEvent != (GameKeyEvent_staticInit(), GameKeyEvent_NONE)) {
                    [[UpGameKeyEventHandler getInstance] fireEvent:self->previousGameKeyEvent];
                }
                self->previousGameKeyEvent = gameKeyEvent;
                if (gameKeyEvent != nil && gameKeyEvent != (GameKeyEvent_staticInit(), GameKeyEvent_NONE)) {
                    [[DownGameKeyEventHandler getInstance] fireEvent:gameKeyEvent];
                }
            }
        } JAVA_CATCH(Exception, e) {
            CommonStrings* commonStrings = [CommonStrings getInstance];
            [self->logUtil put:commonStrings->EXCEPTION :self :"onCompleteMotionGestureInputEvent" :e];
        } JAVA_END_TRY;
}

@end

