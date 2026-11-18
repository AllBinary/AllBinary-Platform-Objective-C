#ifndef ORG_ALLBINARY_GAME_SCORE_HIGHSCORESPAINTABLE_H
#define ORG_ALLBINARY_GAME_SCORE_HIGHSCORESPAINTABLE_H
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
@class HighScoresPaintable;
@class Font;
@class Graphics;
@class Anchor;
@class BasicColor;
@class BasicColorFactory;
@class ColorChangeEvent;
@class ColorChangeListener;
@class DisplayInfoSingleton;
@class MyFontProcessor;
@class UpdateMyFontInterface;
@class UpdateMyFontProcessor;
@class Paintable;
@class AllBinaryEventObject;
@class BasicArrayList;
@class NullHighScoresSingletonFactory;
@class HighScores;
@class HighScore;
#if __has_include("org/allbinary/graphics/color/BasicColor.h")
#include "org/allbinary/graphics/color/BasicColor.h"
#endif
#include "org/allbinary/graphics/color/ColorChangeListener.h"
#if __has_include("org/allbinary/graphics/displayable/DisplayInfoSingleton.h")
#include "org/allbinary/graphics/displayable/DisplayInfoSingleton.h"
#endif
#if __has_include("org/allbinary/graphics/font/MyFontProcessor.h")
#include "org/allbinary/graphics/font/MyFontProcessor.h"
#endif
#include "org/allbinary/graphics/font/UpdateMyFontInterface.h"
#include "org/allbinary/graphics/paint/Paintable.h"
#if __has_include("org/allbinary/game/score/HighScores.h")
#include "org/allbinary/game/score/HighScores.h"
#endif

@interface HighScoresPaintable : Paintable <ColorChangeListener, UpdateMyFontInterface> {
@public
    DisplayInfoSingleton* displayInfoSingleton;
    MyFontProcessor* myFontProcessor;
    BasicColor* basicColor;
    HighScores* highScores;
    int32_t anchor;
    int32_t charHeight;
}
- (instancetype) init;
- (void) initFields;
- (void) updateMeasurement:(Graphics*)graphics;
- (void) onEvent:(AllBinaryEventObject*)eventObject;
- (void) paint:(Graphics*)graphics;
- (void) setBasicColorP:(BasicColor*)basicColor;
- (BasicColor*) getBasicColorP;
- (void) setHighScores:(HighScores*)highScores;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void HighScoresPaintable_staticInit(void);

#if __has_include("org/allbinary/graphics/color/BasicColor.h")
#include "org/allbinary/graphics/color/BasicColor.h"
#endif

#endif // ORG_ALLBINARY_GAME_SCORE_HIGHSCORESPAINTABLE_H
