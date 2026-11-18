#ifndef ORG_ALLBINARY_GAME_PAINT_HELP_HELPPAINTABLE_H
#define ORG_ALLBINARY_GAME_PAINT_HELP_HELPPAINTABLE_H
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
// package org.allbinary.game.paint.help

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class HelpPaintable;
@class Font;
@class Graphics;
@class Anchor;
@class BasicColor;
@class DisplayInfoSingleton;
@class MyFontProcessor;
@class UpdateMyFontInterface;
@class UpdateMyFontProcessor;
@class Paintable;
@class NullUtil;
@class StringUtil;
#if __has_include("org/allbinary/graphics/color/BasicColor.h")
#include "org/allbinary/graphics/color/BasicColor.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/DisplayInfoSingleton.h")
#include "org/allbinary/graphics/displayable/DisplayInfoSingleton.h"
#endif
#if __has_include("org/allbinary/graphics/font/MyFontProcessor.h")
#include "org/allbinary/graphics/font/MyFontProcessor.h"
#endif
#include "org/allbinary/graphics/font/UpdateMyFontInterface.h"
#include "org/allbinary/graphics/paint/Paintable.h"

@interface HelpPaintable : Paintable <UpdateMyFontInterface> {
@public
    DisplayInfoSingleton* displayInfo;
    MyFontProcessor* updateMyFontProcessor;
    MyFontProcessor* myFontProcessor;
    int32_t anchor;
    const char* title;
    const char** inputInfo;
    BasicColor* basicColor;
    int32_t titleBeginWidth;
    int32_t* beginWidthArray;
    int32_t charHeight;
}
- (instancetype) init:(const char*)title :(BasicColor*)backgroundBasicColor :(BasicColor*)basicColor;
- (void) initFields;
- (void) updateMeasurement:(Graphics*)graphics;
- (void) setInputInfoP:(const char**)inputInfo;
- (void) paint:(Graphics*)graphics;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void HelpPaintable_staticInit(void);


#endif // ORG_ALLBINARY_GAME_PAINT_HELP_HELPPAINTABLE_H
