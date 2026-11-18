#ifndef ORG_ALLBINARY_GAME_INPUT_GAMEKEYFACTORY_H
#define ORG_ALLBINARY_GAME_INPUT_GAMEKEYFACTORY_H
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
@class GameKeyFactory;
@class Canvas;
@class NullUtil;
@class CommonPhoneStrings;
@class GameKey;
@class InputFactory;
#if __has_include("org/allbinary/game/input/GameKey.h")
#include "org/allbinary/game/input/GameKey.h"
#endif

@interface GameKeyFactory : ABObject {
@public
    GameKey* NONE;
    GameKey* UP;
    GameKey* DOWN;
    GameKey* LEFT;
    GameKey* RIGHT;
    GameKey* KEY_POUND;
    GameKey* KEY_STAR;
    GameKey* KEY_NUM0;
    GameKey* KEY_NUM1;
    GameKey* KEY_NUM2;
    GameKey* KEY_NUM3;
    GameKey* KEY_NUM4;
    GameKey* KEY_NUM5;
    GameKey* KEY_NUM6;
    GameKey* KEY_NUM7;
    GameKey* KEY_NUM8;
    GameKey* KEY_NUM9;
    GameKey* GAME_A;
    GameKey* GAME_B;
    GameKey* GAME_C;
    GameKey* GAME_D;
    GameKey* FIRE;
    GameKey* LEVEL_DOWN;
    GameKey* LEVEL_UP;
}
- (instancetype) init;
- (void) initFields;
+ (GameKeyFactory*) getInstance;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void GameKeyFactory_staticInit(void);


#endif // ORG_ALLBINARY_GAME_INPUT_GAMEKEYFACTORY_H
