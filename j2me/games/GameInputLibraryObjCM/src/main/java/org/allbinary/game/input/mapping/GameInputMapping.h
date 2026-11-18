#ifndef ORG_ALLBINARY_GAME_INPUT_MAPPING_GAMEINPUTMAPPING_H
#define ORG_ALLBINARY_GAME_INPUT_MAPPING_GAMEINPUTMAPPING_H
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
// package org.allbinary.game.input.mapping

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class GameInputMapping;
@class GameKey;
@class StringUtil;
#if __has_include("org/allbinary/game/input/GameKey.h")
#include "org/allbinary/game/input/GameKey.h"
#endif

@interface GameInputMapping : ABObject {
@public
    const char* name;
    GameKey* gameKey;
}
- (instancetype) init:(const char*)name :(GameKey*)gameKey;
- (void) initFields;
- (void) setGameKey:(GameKey*)gameKey;
- (GameKey*) getGameKey;
- (void) setName:(const char*)name;
- (const char*) getName;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void GameInputMapping_staticInit(void);

#if __has_include("org/allbinary/game/input/GameKey.h")
#include "org/allbinary/game/input/GameKey.h"
#endif

#endif // ORG_ALLBINARY_GAME_INPUT_MAPPING_GAMEINPUTMAPPING_H
