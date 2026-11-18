#ifndef ORG_ALLBINARY_GAME_SCORE_HIGHSCORESHELPERBASE_H
#define ORG_ALLBINARY_GAME_SCORE_HIGHSCORESHELPERBASE_H
/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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
@class HighScoresHelperBase;
@class LogUtil;
@class StringMaker;
@class CommonStrings;
@class HighScoresHelperBaseInterface;
@class LastFetchHighScoresFactory;
@class HighScores;
@class NullHighScoresSingletonFactory;
#if __has_include("org/allbinary/logic/communication/log/LogUtil.h")
#include "org/allbinary/logic/communication/log/LogUtil.h"
#endif
#include "org/allbinary/game/score/HighScoresHelperBaseInterface.h"
#if __has_include("org/allbinary/game/score/HighScores.h")
#include "org/allbinary/game/score/HighScores.h"
#endif

@interface HighScoresHelperBase : ABObject <HighScoresHelperBaseInterface> {
@public
    LogUtil* logUtil;
    HighScores** highScoresArrayP;
}
- (instancetype) init;
- (void) initFields;
- (void) setHighScoresArray:(HighScores**)highScoresArrayP;
- (HighScores*) getNextHighScores;
- (bool) isAnyHighScores;
- (void) setSelectedHighScores:(HighScores*)selectedHighScores;
- (HighScores*) getSelectedHighScores;
- (HighScores**) getHighScoresArray;
- (void) selectHighScores;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void HighScoresHelperBase_staticInit(void);


#endif // ORG_ALLBINARY_GAME_SCORE_HIGHSCORESHELPERBASE_H
