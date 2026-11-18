// Generated Code Do Not Modify
#include "org/allbinary/game/input/motion/action/GameKeyCompleteMotionGestureInputEvent.h"
#include "org/allbinary/game/input/GameKey.h"
#include "org/allbinary/game/input/event/GameKeyEvent.h"
#include "org/allbinary/game/input/event/GameKeyEventFactory.h"
#include "org/allbinary/game/input/mapping/InputToGameKeyMapping.h"
#include "org/allbinary/input/motion/gesture/MotionGestureInput.h"
#include "org/allbinary/string/CommonStrings.h"
#include "org/allbinary/game/input/motion/action/GameKeyCompleteMotionGestureInputEventFactory.h"



void GameKeyCompleteMotionGestureInputEvent_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation GameKeyCompleteMotionGestureInputEvent

- (void) initFields {
    self->gameKeyEventFactory = [GameKeyEventFactory getInstance];
    self->SOURCE_ID = self->gameKeyEventFactory->MOTION_GESTURE_SOURCE_ID;
    self->gameKey = (GameKey_staticInit(), GameKey_NULL_GAME_KEY);
    self->gameKeyEvent = (GameKeyEvent_staticInit(), GameKeyEvent_NONE);
    
}


- (instancetype) init:(const char*)name :(MotionGestureInput*)motionGestureInput :(InputToGameKeyMapping*)inputToGameKeyMapping {
        self = [super init:name :motionGestureInput];
        [self initFields];
        self->inputToGameKeyMapping = inputToGameKeyMapping;
        [[GameKeyCompleteMotionGestureInputEventFactory getInstance] add:self];
        [self update];
    return self;
}


- (int32_t) getSourceId {
        return self->SOURCE_ID;
}


- (void) update {
        JAVA_TRY {
            [self setGameKey:[self->inputToGameKeyMapping getInstance:[[self getMotionGestureInput] getId]]];
            [self setGameKeyEvent:[self->gameKeyEventFactory getInstanceForInput:self :[self getGameKey]]];
        } JAVA_CATCH(Exception, e) {
            CommonStrings* commonStrings = [CommonStrings getInstance];
            [self->logUtil put:commonStrings->EXCEPTION :self :commonStrings->UPDATE :e];
        } JAVA_END_TRY;
}


- (void) setGameKeyEvent:(GameKeyEvent*)gameKeyEvent {
        self->gameKeyEvent = gameKeyEvent;
}


- (GameKeyEvent*) getGameKeyEvent {
        return self->gameKeyEvent;
}


- (void) setGameKey:(GameKey*)gameKey {
        self->gameKey = gameKey;
}


- (GameKey*) getGameKey {
        return self->gameKey;
}

@end

