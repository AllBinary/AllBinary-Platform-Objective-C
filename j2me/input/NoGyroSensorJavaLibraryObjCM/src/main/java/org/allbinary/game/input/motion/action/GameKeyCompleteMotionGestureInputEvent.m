// Generated Code Do Not Modify
#include "org/allbinary/game/input/motion/action/GameKeyCompleteMotionGestureInputEvent.h"
#include "org/allbinary/game/input/GameKey.h"
#include "org/allbinary/game/input/event/GameKeyEvent.h"
#include "org/allbinary/game/input/mapping/InputToGameKeyMapping.h"
#include "org/allbinary/input/motion/gesture/MotionGestureInput.h"



void GameKeyCompleteMotionGestureInputEvent_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation GameKeyCompleteMotionGestureInputEvent

- (void) initFields {
    self->gameKey = (GameKey_staticInit(), GameKey_NULL_GAME_KEY);
    self->gameKeyEvent = (GameKeyEvent_staticInit(), GameKeyEvent_NONE);
}


- (instancetype) init:(const char*)name :(MotionGestureInput*)motionGestureInput :(InputToGameKeyMapping*)inputToGameKeyMapping {
        self = [super init:name :motionGestureInput];
        [self initFields];
    return self;
}


- (int32_t) getSourceId {
        return 0;
}


- (void) update {
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

