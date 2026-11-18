#ifndef ORG_ALLBINARY_GRAPHICS_DRAW_CANVASDRAWLINESTRING_H
#define ORG_ALLBINARY_GRAPHICS_DRAW_CANVASDRAWLINESTRING_H
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
// package org.allbinary.graphics.draw

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class CanvasDrawLineString;
@class Font;
@class Graphics;
@class MyFontProcessor;
@class UpdateMyFontInterface;
@class UpdateMyFontProcessor;
@class DrawStringUtil;
#if __has_include("org/allbinary/graphics/font/MyFontProcessor.h")
#include "org/allbinary/graphics/font/MyFontProcessor.h"
#endif
#include "org/allbinary/graphics/font/UpdateMyFontInterface.h"
#if __has_include("org/allbinary/graphics/draw/DrawStringUtil.h")
#include "org/allbinary/graphics/draw/DrawStringUtil.h"
#endif

@interface CanvasDrawLineString : ABObject <UpdateMyFontInterface> {
@public
    DrawStringUtil* drawStringUtil;
    MyFontProcessor* myFontProcessor;
    int32_t x;
    int32_t y;
    int32_t fontHeight;
}
- (instancetype) init:(int32_t)x :(int32_t)y;
- (void) initFields;
- (void) updateMeasurement:(Graphics*)graphics;
- (void) paint:(Graphics*)graphics :(const char*)string :(int32_t)line;
@end

extern CanvasDrawLineString* CanvasDrawLineString_NULL_CANVAS_DRAW_LINE_STRING;
// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void CanvasDrawLineString_staticInit(void);


#endif // ORG_ALLBINARY_GRAPHICS_DRAW_CANVASDRAWLINESTRING_H
