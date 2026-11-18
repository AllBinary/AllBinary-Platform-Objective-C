#ifndef ORG_ALLBINARY_GAME_SCORE_HIGHSCORESCANVASLEVELCHANGEINPUTPROCESSOR_H
#define ORG_ALLBINARY_GAME_SCORE_HIGHSCORESCANVASLEVELCHANGEINPUTPROCESSOR_H
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
@class HighScoresCanvasLevelChangeInputProcessor;
@class Canvas;
@class Font;
@class Graphics;
@class GameKeyEventHandler;
@class GameKeyEventUtil;
@class HighScoresCanvas;
@class Anchor;
@class DisplayInfoSingleton;
@class MyFontProcessor;
@class UpdateMyFontInterface;
@class UpdateMyFontProcessor;
@class BasicArrayList;
@class HighScoresCanvasInputProcessor;
#if __has_include("org/allbinary/graphics/displayable/DisplayInfoSingleton.h")
#include "org/allbinary/graphics/displayable/DisplayInfoSingleton.h"
#endif
#if __has_include("org/allbinary/graphics/font/MyFontProcessor.h")
#include "org/allbinary/graphics/font/MyFontProcessor.h"
#endif
#include "org/allbinary/graphics/font/UpdateMyFontInterface.h"
#include "org/allbinary/game/score/HighScoresCanvasInputProcessor.h"

@interface HighScoresCanvasLevelChangeInputProcessor : HighScoresCanvasInputProcessor <UpdateMyFontInterface> {
@public
    DisplayInfoSingleton* displayInfoSingleton;
    const char* INSTRUCTIONS;
    MyFontProcessor* myFontProcessor;
    int32_t anchor;
    int32_t fontHeight;
}
- (instancetype) init:(HighScoresCanvas*)highScoresCanvas;
- (void) initFields;
- (void) updateMeasurement:(Graphics*)graphics;
- (void) open;
- (void) close;
- (void) update;
- (void) paint:(Graphics*)graphics;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void HighScoresCanvasLevelChangeInputProcessor_staticInit(void);


#endif // ORG_ALLBINARY_GAME_SCORE_HIGHSCORESCANVASLEVELCHANGEINPUTPROCESSOR_H
