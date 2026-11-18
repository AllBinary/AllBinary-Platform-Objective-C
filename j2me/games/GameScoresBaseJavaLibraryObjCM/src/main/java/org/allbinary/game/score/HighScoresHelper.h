#ifndef ORG_ALLBINARY_GAME_SCORE_HIGHSCORESHELPER_H
#define ORG_ALLBINARY_GAME_SCORE_HIGHSCORESHELPER_H
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
@class HighScoresHelper;
@class CircularIndexUtil;
@class HighScoresHelperBase;
@class HighScores;
#if __has_include("org/allbinary/util/CircularIndexUtil.h")
#include "org/allbinary/util/CircularIndexUtil.h"
#endif
#include "org/allbinary/game/score/HighScoresHelperBase.h"

@interface HighScoresHelper : HighScoresHelperBase {
@public
    CircularIndexUtil* circularIndexUtil;
    int32_t lastIndex;
}
- (instancetype) init;
- (void) initFields;
- (void) setHighScoresArray:(HighScores**)highScoresArrayP;
- (HighScores*) getNextHighScores;
- (bool) isAnyHighScores;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void HighScoresHelper_staticInit(void);


#endif // ORG_ALLBINARY_GAME_SCORE_HIGHSCORESHELPER_H
