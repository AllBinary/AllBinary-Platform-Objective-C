#ifndef ORG_ALLBINARY_GAME_INPUT_PLAYERGAMEINPUT_H
#define ORG_ALLBINARY_GAME_INPUT_PLAYERGAMEINPUT_H
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
// package org.allbinary.game.input

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class PlayerGameInput;
@class GameKeyEvent;
@class GameKeyEventListenerInterface;
@class ForcedLogUtil;
@class PreLogUtil;
@class StringMaker;
@class AllBinaryEventObject;
@class EventStrings;
@class CommonLabels;
@class BasicArrayList;
@class GameInput;
@class GameInputStrings;
#include "org/allbinary/game/input/event/GameKeyEventListenerInterface.h"
#include "java/lang/Integer.h"
#include "org/allbinary/game/input/GameInput.h"
#if __has_include("org/allbinary/game/input/GameInputStrings.h")
#include "org/allbinary/game/input/GameInputStrings.h"
#endif

@interface PlayerGameInput : GameInput <GameKeyEventListenerInterface> {
@public
    GameInputStrings* gameInputStrings;
    int32_t playerInputId;
}
- (instancetype) init:(BasicArrayList*)gameKeyEventList :(BasicArrayList*)removalGameKeyEventList :(int32_t)playerInputId;
- (void) initFields;
- (void) onPressGameKeyEvent:(GameKeyEvent*)gameKeyEvent;
- (void) onDownGameKeyEvent:(GameKeyEvent*)gameKeyEvent;
- (void) onDownKeyEvent:(GameKeyEvent*)gameKeyEvent;
- (void) onDownKey:(int32_t)gameKeyEvent;
- (void) onUpGameKeyEvent:(GameKeyEvent*)gameKeyEvent;
- (void) onUpKeyEvent:(int32_t)gameKeyEvent;
- (void) onEvent:(AllBinaryEventObject*)eventObject;
- (int32_t) getPlayerInputId;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void PlayerGameInput_staticInit(void);


#endif // ORG_ALLBINARY_GAME_INPUT_PLAYERGAMEINPUT_H
