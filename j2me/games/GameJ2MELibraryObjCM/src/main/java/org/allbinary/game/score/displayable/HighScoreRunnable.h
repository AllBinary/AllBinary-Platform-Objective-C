#ifndef ORG_ALLBINARY_GAME_SCORE_DISPLAYABLE_HIGHSCORERUNNABLE_H
#define ORG_ALLBINARY_GAME_SCORE_DISPLAYABLE_HIGHSCORERUNNABLE_H
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
// package org.allbinary.game.score.displayable

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class HighScoreRunnable;
@class J2MEUtil;
@class ABSystemWrapper;
@class LogUtil;
@class StringMaker;
@class CommonStrings;
@class ARunnable;
@class HighScoresCanvas;
#include "org/allbinary/thread/ARunnable.h"
#if __has_include("org/allbinary/game/score/displayable/HighScoresCanvas.h")
#include "org/allbinary/game/score/displayable/HighScoresCanvas.h"
#endif

@interface HighScoreRunnable : ARunnable {
@public
    HighScoresCanvas* highScoresCanvas;
}
- (instancetype) init:(HighScoresCanvas*)highScoresCanvas;
- (void) initFields;
- (void) run;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void HighScoreRunnable_staticInit(void);


#endif // ORG_ALLBINARY_GAME_SCORE_DISPLAYABLE_HIGHSCORERUNNABLE_H
