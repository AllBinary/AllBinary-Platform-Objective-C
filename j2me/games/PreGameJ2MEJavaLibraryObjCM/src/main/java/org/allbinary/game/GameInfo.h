#ifndef ORG_ALLBINARY_GAME_GAMEINFO_H
#define ORG_ALLBINARY_GAME_GAMEINFO_H
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
@class GameInfo;
@class LogUtil;
@class StringMaker;
@class StringUtil;
@class CommonSeps;
@class StdUtil;
@class CommonLabels;
@class ABHashtable;
@class GameTypeFactory;
@class GameMode;
@class PlayerTypesFactory;
@class GameInfoData;
@class GameType;
@class PlayerType;
#if __has_include("org/allbinary/logic/communication/log/LogUtil.h")
#include "org/allbinary/logic/communication/log/LogUtil.h"
#endif
#include "java/lang/Integer.h"
#if __has_include("org/allbinary/game/GameMode.h")
#include "org/allbinary/game/GameMode.h"
#endif
#if __has_include("org/allbinary/game/GameInfoData.h")
#include "org/allbinary/game/GameInfoData.h"
#endif
#if __has_include("org/allbinary/game/GameType.h")
#include "org/allbinary/game/GameType.h"
#endif
#if __has_include("org/allbinary/game/PlayerType.h")
#include "org/allbinary/game/PlayerType.h"
#endif

@interface GameInfo : ABObject {
@public
    LogUtil* logUtil;
    GameInfoData* gameInfoData;
    GameType* gameType;
    GameMode* gameMode;
    PlayerType* playerType;
    int32_t highestLevel;
    int32_t currentLevel;
    const char* NEW_LEVEL;
    const char* SET_CURRENT_LEVEL;
    const char* NEXT_GAME_LEVEL;
}
- (instancetype) init:(GameType*)gameType :(GameMode*)gameMode :(PlayerType*)playerType :(int32_t)highestLevel :(int32_t)currentLevel;
- (void) initFields;
- (GameType*) getGameType;
- (GameMode*) getGameMode;
- (PlayerType*) getPlayerType;
- (int32_t) getHighestLevel;
- (void) setHighestLevel:(int32_t)highestLevel;
- (int32_t) getCurrentLevel;
- (void) setCurrentLevel:(int32_t)currentLevel;
- (void) nextGameLevel;
- (void) previousGameLevel;
- (bool) isLastLevel;
- (ABHashtable*) toHashtable;
- (const char*) toString;
@end

extern GameInfo* GameInfo_NONE;
extern const char* GameInfo_LEVEL_NAME;
// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void GameInfo_staticInit(void);

#if __has_include("org/allbinary/util/ABHashtable.h")
#include "org/allbinary/util/ABHashtable.h"
#endif

#endif // ORG_ALLBINARY_GAME_GAMEINFO_H
