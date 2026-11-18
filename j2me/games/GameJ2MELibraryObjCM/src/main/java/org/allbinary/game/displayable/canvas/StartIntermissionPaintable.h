#ifndef ORG_ALLBINARY_GAME_DISPLAYABLE_CANVAS_STARTINTERMISSIONPAINTABLE_H
#define ORG_ALLBINARY_GAME_DISPLAYABLE_CANVAS_STARTINTERMISSIONPAINTABLE_H
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
@class StartIntermissionPaintable;
@class Font;
@class Graphics;
@class Anchor;
@class BasicColor;
@class BasicColorFactory;
@class BasicColorSetUtil;
@class DisplayInfoSingleton;
@class FontDebugFactory;
@class MyFontProcessor;
@class UpdateMyFontInterface;
@class UpdateMyFontProcessor;
@class InitUpdatePaintable;
@class NullUtil;
@class StringMaker;
@class StringUtil;
@class AllBinaryGameCanvas;
#if __has_include("javax/microedition/lcdui/Font.h")
#include "javax/microedition/lcdui/Font.h"
#endif
#if __has_include("org/allbinary/graphics/color/BasicColor.h")
#include "org/allbinary/graphics/color/BasicColor.h"
#endif
#if __has_include("org/allbinary/graphics/color/BasicColorSetUtil.h")
#include "org/allbinary/graphics/color/BasicColorSetUtil.h"
#endif
#if __has_include("org/allbinary/graphics/font/FontDebugFactory.h")
#include "org/allbinary/graphics/font/FontDebugFactory.h"
#endif
#if __has_include("org/allbinary/graphics/font/MyFontProcessor.h")
#include "org/allbinary/graphics/font/MyFontProcessor.h"
#endif
#include "org/allbinary/graphics/font/UpdateMyFontInterface.h"
#include "org/allbinary/graphics/paint/InitUpdatePaintable.h"
#if __has_include("org/allbinary/game/displayable/canvas/AllBinaryGameCanvas.h")
#include "org/allbinary/game/displayable/canvas/AllBinaryGameCanvas.h"
#endif

@interface StartIntermissionPaintable : InitUpdatePaintable <UpdateMyFontInterface> {
@public
    FontDebugFactory* fontDebugFactory;
    BasicColorSetUtil* basicSetColorUtil;
    AllBinaryGameCanvas* gameCanvas;
    const char** stringArray;
    int32_t fontSize;
    Font* font;
    int32_t* lastWidth;
    MyFontProcessor* updateMyFontProcessor;
    MyFontProcessor* myFontProcessor;
    BasicColor* basicColor;
    int32_t color;
    int32_t* lineYOffsetArray;
    bool hasChanged;
    int32_t anchor;
    int32_t fontHeightP;
    const char* BEGIN_LEVEL;
    const char* EMPTY_STRING;
}
- (instancetype) init:(AllBinaryGameCanvas*)gameCanvas :(const char**)stringArray :(BasicColor*)basicColor :(Font*)font;
- (void) initFields;
- (void) updateMeasurement:(Graphics*)graphics;
- (void) paint:(Graphics*)graphics;
- (void) update;
- (void) setBasicColorP:(BasicColor*)basicColor;
- (BasicColor*) getBasicColorP;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void StartIntermissionPaintable_staticInit(void);

#if __has_include("org/allbinary/graphics/color/BasicColor.h")
#include "org/allbinary/graphics/color/BasicColor.h"
#endif

#endif // ORG_ALLBINARY_GAME_DISPLAYABLE_CANVAS_STARTINTERMISSIONPAINTABLE_H
