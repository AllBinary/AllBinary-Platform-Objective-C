#ifndef ORG_ALLBINARY_GRAPHICS_PAINT_SIMPLETEXTPAINTABLE_H
#define ORG_ALLBINARY_GRAPHICS_PAINT_SIMPLETEXTPAINTABLE_H
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
// package org.allbinary.graphics.paint

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class SimpleTextPaintable;
@class Font;
@class Graphics;
@class Anchor;
@class BasicColor;
@class DisplayInfoSingleton;
@class MyFontProcessor;
@class UpdateMyFontInterface;
@class UpdateMyFontProcessor;
@class Paintable;
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

@interface SimpleTextPaintable : Paintable <UpdateMyFontInterface> {
@public
    DisplayInfoSingleton* displayInfoSingleton;
    MyFontProcessor* updateMyFontProcessor;
    MyFontProcessor* myFontProcessor;
    const char* text;
    BasicColor* basicColor;
    int32_t topScoresWidth;
    int32_t fontHeight;
    int32_t anchor;
}
- (instancetype) init:(const char*)text :(BasicColor*)basicColor;
- (void) initFields;
- (void) updateMeasurement:(Graphics*)graphics;
- (void) paint:(Graphics*)graphics;
- (void) setBasicColorP:(BasicColor*)basicColor;
- (BasicColor*) getBasicColorP;
- (void) setText:(const char*)text;
- (const char*) getText;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void SimpleTextPaintable_staticInit(void);


#endif // ORG_ALLBINARY_GRAPHICS_PAINT_SIMPLETEXTPAINTABLE_H
