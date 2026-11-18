#ifndef ORG_ALLBINARY_GAME_SCORE_HIGHSCORES_H
#define ORG_ALLBINARY_GAME_SCORE_HIGHSCORES_H
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
@class HighScores;
@class StringMaker;
@class CommonLabels;
@class CommonSeps;
@class BasicArrayList;
@class BasicArrayListD;
@class HighScoresInterface;
@class HighScore;
#if __has_include("org/allbinary/util/BasicArrayList.h")
#include "org/allbinary/util/BasicArrayList.h"
#endif
#include "org/allbinary/game/score/HighScoresInterface.h"

@interface HighScores : ABObject <HighScoresInterface> {
@public
    BasicArrayList* orderedHighScoresList;
    const char* name;
    const char* heading;
    const char* columnOneHeading;
    const char* columnTwoHeading;
}
- (instancetype) init:(const char*)name :(const char*)heading :(const char*)columnTwoHeading;
- (void) initFields;
- (void) setList:(BasicArrayList*)orderedHighScoresList;
- (BasicArrayList*) getList;
- (const char*) getName;
- (int32_t) getTotal;
- (void) addHighScore:(HighScore*)newHighScore;
- (const char*) getHeading;
- (const char*) getColumnOneHeading;
- (const char*) getColumnTwoHeading;
- (bool) isBestScore:(HighScore*)newHighScore;
- (const char*) toString;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void HighScores_staticInit(void);

#if __has_include("org/allbinary/util/BasicArrayList.h")
#include "org/allbinary/util/BasicArrayList.h"
#endif

#endif // ORG_ALLBINARY_GAME_SCORE_HIGHSCORES_H
