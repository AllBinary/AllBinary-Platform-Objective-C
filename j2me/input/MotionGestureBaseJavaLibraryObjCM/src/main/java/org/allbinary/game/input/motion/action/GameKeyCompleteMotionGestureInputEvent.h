#ifndef ORG_ALLBINARY_GAME_INPUT_MOTION_ACTION_GAMEKEYCOMPLETEMOTIONGESTUREINPUTEVENT_H
#define ORG_ALLBINARY_GAME_INPUT_MOTION_ACTION_GAMEKEYCOMPLETEMOTIONGESTUREINPUTEVENT_H
/*
 *
 * AllBinary Open License Version 1
 * Copyright (c) 2011 AllBinary
 * 
 * By agreeing to this license you and any business entity you represent are
 * legally bound to the AllBinary Open License Version 1 legal agreement.
 * 
 * You may obtain the AllBinary Open License Version 1 legal agreement from
 * AllBinary or the root directory of AllBinary's AllBinary Platform repository.
 * 
 * Created By: Travis Berthelot
 *  
 */
// Generated Code Do Not Modify
// package org.allbinary.game.input.motion.action

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class GameKeyCompleteMotionGestureInputEvent;
@class CompleteMotionGestureInputEvent;
@class GameKey;
@class GameKeyEventSourceInterface;
@class GameKeyEvent;
@class GameKeyEventFactory;
@class InputToGameKeyMapping;
@class MotionGestureInput;
@class CommonStrings;
@class GameKeyCompleteMotionGestureInputEventFactory;
#include "org/allbinary/game/input/CompleteMotionGestureInputEvent.h"
#if __has_include("org/allbinary/game/input/GameKey.h")
#include "org/allbinary/game/input/GameKey.h"
#endif
#include "org/allbinary/game/input/GameKeyEventSourceInterface.h"
#if __has_include("org/allbinary/game/input/event/GameKeyEvent.h")
#include "org/allbinary/game/input/event/GameKeyEvent.h"
#endif
#if __has_include("org/allbinary/game/input/event/GameKeyEventFactory.h")
#include "org/allbinary/game/input/event/GameKeyEventFactory.h"
#endif
#if __has_include("org/allbinary/game/input/mapping/InputToGameKeyMapping.h")
#include "org/allbinary/game/input/mapping/InputToGameKeyMapping.h"
#endif

@interface GameKeyCompleteMotionGestureInputEvent : CompleteMotionGestureInputEvent <GameKeyEventSourceInterface> {
@public
    GameKeyEventFactory* gameKeyEventFactory;
    int32_t SOURCE_ID;
    GameKey* gameKey;
    GameKeyEvent* gameKeyEvent;
    InputToGameKeyMapping* inputToGameKeyMapping;
}
- (instancetype) init:(const char*)name :(MotionGestureInput*)motionGestureInput :(InputToGameKeyMapping*)inputToGameKeyMapping;
- (void) initFields;
- (int32_t) getSourceId;
- (void) update;
- (void) setGameKeyEvent:(GameKeyEvent*)gameKeyEvent;
- (GameKeyEvent*) getGameKeyEvent;
- (void) setGameKey:(GameKey*)gameKey;
- (GameKey*) getGameKey;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void GameKeyCompleteMotionGestureInputEvent_staticInit(void);

#if __has_include("org/allbinary/game/input/GameKey.h")
#include "org/allbinary/game/input/GameKey.h"
#endif
#if __has_include("org/allbinary/game/input/event/GameKeyEvent.h")
#include "org/allbinary/game/input/event/GameKeyEvent.h"
#endif

#endif // ORG_ALLBINARY_GAME_INPUT_MOTION_ACTION_GAMEKEYCOMPLETEMOTIONGESTUREINPUTEVENT_H
