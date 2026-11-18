#ifndef ORG_ALLBINARY_GAME_SCORE_HIGHSCORESCANVASINPUTPROCESSOR_H
#define ORG_ALLBINARY_GAME_SCORE_HIGHSCORESCANVASINPUTPROCESSOR_H
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
@class HighScoresCanvasInputProcessor;
@class Graphics;
@class PlayerGameInput;
@class GameKeyEvent;
@class HighScoresCanvas;
@class BasicArrayList;
@class BasicArrayListD;
#include "org/allbinary/game/input/PlayerGameInput.h"
#if __has_include("org/allbinary/game/score/displayable/HighScoresCanvas.h")
#include "org/allbinary/game/score/displayable/HighScoresCanvas.h"
#endif
// #include "org/allbinary/util/BasicArrayList.h"

@interface HighScoresCanvasInputProcessor : PlayerGameInput {
@public
    HighScoresCanvas* highScoresCanvas;
}
- (instancetype) init:(HighScoresCanvas*)highScoresCanvas;
- (void) initFields;
- (void) open;
- (void) close;
- (void) onPressGameKeyEvent:(GameKeyEvent*)gameKeyEvent;
- (void) onDownGameKeyEvent:(GameKeyEvent*)gameKeyEvent;
- (void) onUpGameKeyEvent:(GameKeyEvent*)gameKeyEvent;
- (void) paint:(Graphics*)graphics;
- (HighScoresCanvas*) getHighScoresCanvas;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void HighScoresCanvasInputProcessor_staticInit(void);

#if __has_include("org/allbinary/game/score/displayable/HighScoresCanvas.h")
#include "org/allbinary/game/score/displayable/HighScoresCanvas.h"
#endif

#endif // ORG_ALLBINARY_GAME_SCORE_HIGHSCORESCANVASINPUTPROCESSOR_H
