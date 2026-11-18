#ifndef ORG_ALLBINARY_GAME_INPUT_GAMEINPUTPROCESSORCOMPOSITE_H
#define ORG_ALLBINARY_GAME_INPUT_GAMEINPUTPROCESSORCOMPOSITE_H
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
@class GameInputProcessorComposite;
@class LogUtil;
@class StringMaker;
@class BasicArrayList;
@class BasicArrayListD;
@class PlayerGameInput;
@class GameInputProcessorInterface;
// #include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/game/input/PlayerGameInput.h"
#if __has_include("org/allbinary/game/input/GameInputProcessorInterface.h")
#include "org/allbinary/game/input/GameInputProcessorInterface.h"
#endif

@interface GameInputProcessorComposite : PlayerGameInput {
@public
    const char* name;
    GameInputProcessorInterface* gameInputProcessorInterface;
    const char* NAME_LABEL;
}
- (instancetype) init:(const char*)name :(GameInputProcessorInterface*)gameInputProcessorInterface;
- (void) initFields;
- (void) update;
- (const char*) toString;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void GameInputProcessorComposite_staticInit(void);


#endif // ORG_ALLBINARY_GAME_INPUT_GAMEINPUTPROCESSORCOMPOSITE_H
