#ifndef ORG_ALLBINARY_GAME_SCORE_NOHIGHSCORESFACTORY_H
#define ORG_ALLBINARY_GAME_SCORE_NOHIGHSCORESFACTORY_H
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
@class NoHighScoresFactory;
@class GameInfo;
@class LogUtil;
@class HighScoresBase;
@class HighScores;
@class HighScoresResultsListener;
@class HighScoresHelperBase;
@class HighScoresHelperBaseInterface;
#if __has_include("org/allbinary/logic/communication/log/LogUtil.h")
#include "org/allbinary/logic/communication/log/LogUtil.h"
#endif
#include "org/allbinary/game/score/HighScoresBase.h"
#if __has_include("org/allbinary/game/score/HighScores.h")
#include "org/allbinary/game/score/HighScores.h"
#endif

@interface NoHighScoresFactory : HighScoresBase {
@public
    LogUtil* logUtil;
    HighScores** NO_HIGH_SCORES;
}
- (instancetype) init;
- (void) initFields;
+ (NoHighScoresFactory*) getInstance;
- (void) fetchHighScores:(GameInfo*)gameInfo :(HighScoresResultsListener*)highScoresResultsListener;
- (HighScoresHelperBaseInterface*) createHighScoresHelper;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void NoHighScoresFactory_staticInit(void);


#endif // ORG_ALLBINARY_GAME_SCORE_NOHIGHSCORESFACTORY_H
