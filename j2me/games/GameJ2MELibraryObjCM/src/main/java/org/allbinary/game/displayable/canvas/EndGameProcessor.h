#ifndef ORG_ALLBINARY_GAME_DISPLAYABLE_CANVAS_ENDGAMEPROCESSOR_H
#define ORG_ALLBINARY_GAME_DISPLAYABLE_CANVAS_ENDGAMEPROCESSOR_H
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
// package org.allbinary.game.displayable.canvas

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class EndGameProcessor;
@class Processor;
@class HighScores;
@class HighScoresHelperBase;
@class NullHighScoresSingletonFactory;
@class GameStateFactory;
@class NullPaintable;
@class AllBinaryGameCanvas;
#include "org/allbinary/canvas/Processor.h"
#if __has_include("org/allbinary/game/state/GameStateFactory.h")
#include "org/allbinary/game/state/GameStateFactory.h"
#endif
#if __has_include("org/allbinary/game/displayable/canvas/AllBinaryGameCanvas.h")
#include "org/allbinary/game/displayable/canvas/AllBinaryGameCanvas.h"
#endif

@interface EndGameProcessor : Processor {
@public
    GameStateFactory* gameStateFactory;
    AllBinaryGameCanvas* gameCanvas;
    int64_t WAIT;
}
- (instancetype) init:(AllBinaryGameCanvas*)gameCanvas;
- (void) initFields;
- (void) process;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void EndGameProcessor_staticInit(void);


#endif // ORG_ALLBINARY_GAME_DISPLAYABLE_CANVAS_ENDGAMEPROCESSOR_H
