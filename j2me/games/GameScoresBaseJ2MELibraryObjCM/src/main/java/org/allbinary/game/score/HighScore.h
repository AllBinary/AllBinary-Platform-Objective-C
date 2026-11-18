#ifndef ORG_ALLBINARY_GAME_SCORE_HIGHSCORE_H
#define ORG_ALLBINARY_GAME_SCORE_HIGHSCORE_H
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
// package org.allbinary.game.score

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class HighScore;
@class GameInfo;
@class StringMaker;
@class CommonSeps;
#include "java/io/ByteArrayOutputStream.h"
#include "java/io/DataOutputStream.h"
#if __has_include("org/allbinary/game/GameInfo.h")
#include "org/allbinary/game/GameInfo.h"
#endif
#include "java/lang/Long.h"

@interface HighScore : ABObject {
@public
    int32_t id_;
    const char* name;
    GameInfo* gameInfo;
    int64_t score;
    const char* scoreString;
}
- (instancetype) init:(int32_t)id_ :(const char*)name :(GameInfo*)gameInfo :(int64_t)score;
- (void) initFields;
- (int32_t) getId;
- (const char*) getName;
- (int64_t) getScore;
- (int8_t*) getAsBytes;
- (GameInfo*) getGameInfo;
- (const char*) getScoreString;
- (void) setName:(const char*)name;
- (const char*) toString;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void HighScore_staticInit(void);

#if __has_include("org/allbinary/game/GameInfo.h")
#include "org/allbinary/game/GameInfo.h"
#endif

#endif // ORG_ALLBINARY_GAME_SCORE_HIGHSCORE_H
