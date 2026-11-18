#ifndef ORG_ALLBINARY_GAME_INPUT_GAMEINPUT_H
#define ORG_ALLBINARY_GAME_INPUT_GAMEINPUT_H
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
@class GameInput;
@class Features;
@class InputFeatureFactory;
@class GameKeyEvent;
@class LogUtil;
@class CommonStrings;
@class BasicArrayList;
#if __has_include("org/allbinary/logic/communication/log/LogUtil.h")
#include "org/allbinary/logic/communication/log/LogUtil.h"
#endif
#if __has_include("org/allbinary/string/CommonStrings.h")
#include "org/allbinary/string/CommonStrings.h"
#endif
#if __has_include("org/allbinary/util/BasicArrayList.h")
#include "org/allbinary/util/BasicArrayList.h"
#endif

@interface GameInput : ABObject {
@public
    LogUtil* logUtil;
    CommonStrings* commonStrings;
    BasicArrayList* gameKeyEventList;
    BasicArrayList* removalGameKeyEventList;
    bool isRemoveDuplicateKeyPresses;
}
- (instancetype) init:(BasicArrayList*)gameKeyEventList :(BasicArrayList*)removalGameKeyEventList;
- (void) initFields;
- (void) add:(GameKeyEvent*)gameKeyEvent;
- (void) addForRemoval:(GameKeyEvent*)gameKeyEvent;
- (bool) isForRemoval:(GameKeyEvent*)gameKeyEvent;
- (void) clear;
- (void) removeNonAIInputGameKeyEvents;
- (void) update;
- (BasicArrayList*) getRemovalGameKeyEventList;
- (BasicArrayList*) getGameKeyEventList;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void GameInput_staticInit(void);

#if __has_include("org/allbinary/util/BasicArrayList.h")
#include "org/allbinary/util/BasicArrayList.h"
#endif

#endif // ORG_ALLBINARY_GAME_INPUT_GAMEINPUT_H
