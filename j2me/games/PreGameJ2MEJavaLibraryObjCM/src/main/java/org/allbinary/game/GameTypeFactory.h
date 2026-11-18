#ifndef ORG_ALLBINARY_GAME_GAMETYPEFACTORY_H
#define ORG_ALLBINARY_GAME_GAMETYPEFACTORY_H
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
// package org.allbinary.game

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class GameTypeFactory;
@class StringUtil;
@class GameType;
#if __has_include("org/allbinary/game/GameType.h")
#include "org/allbinary/game/GameType.h"
#endif

@interface GameTypeFactory : ABObject {
@public
    GameType** NULL_GAME_TYPE_ARRAY;
    GameType* NONE;
    GameType* SINGLE_PLAYER;
    GameType* MULTI_PLAYER;
    GameType* BOT;
}
- (instancetype) init;
- (void) initFields;
+ (GameTypeFactory*) getInstance;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void GameTypeFactory_staticInit(void);


#endif // ORG_ALLBINARY_GAME_GAMETYPEFACTORY_H
