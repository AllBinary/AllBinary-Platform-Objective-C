#ifndef ORG_ALLBINARY_GAME_PAINT_ABOUTPAINTABLE_H
#define ORG_ALLBINARY_GAME_PAINT_ABOUTPAINTABLE_H
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
// package org.allbinary.game.paint

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class AboutPaintable;
@class Font;
@class Graphics;
@class Anchor;
@class CanvasStrings;
@class DisplayInfoSingleton;
@class MyFontProcessor;
@class UpdateMyFontInterface;
@class UpdateMyFontProcessor;
@class Paintable;
#if __has_include("org/allbinary/graphics/displayable/DisplayInfoSingleton.h")
#include "org/allbinary/graphics/displayable/DisplayInfoSingleton.h"
#endif
#if __has_include("org/allbinary/graphics/font/MyFontProcessor.h")
#include "org/allbinary/graphics/font/MyFontProcessor.h"
#endif
#include "org/allbinary/graphics/font/UpdateMyFontInterface.h"
#include "org/allbinary/graphics/paint/Paintable.h"

//J2SEForJ2ME
@interface AboutPaintable : Paintable <UpdateMyFontInterface> {
@public
    DisplayInfoSingleton* displayInfoSingleton;
    const char* ABOUT;
    const char** info;
    const char** developers;
    Paintable** paintableArray;
    MyFontProcessor* myFontProcessor;
    int32_t charHeight;
    int32_t aboutBeginWidth;
    int32_t* infoBeginWidth;
    int32_t* developersBeginWidth;
    int32_t anchor;
}
- (instancetype) init:(const char**)info :(const char**)developers;
- (void) initFields;
+ (AboutPaintable*) getInstance:(const char**)info :(const char**)developers;
- (void) updateMeasurement:(Graphics*)graphics;
- (Paintable**) getPaintableArrayInstance;
- (void) paint:(Graphics*)graphics;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void AboutPaintable_staticInit(void);


#endif // ORG_ALLBINARY_GAME_PAINT_ABOUTPAINTABLE_H
