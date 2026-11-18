#ifndef ORG_ALLBINARY_GRAPHICS_DRAW_DRAWVERTICALSTRINGUTIL_H
#define ORG_ALLBINARY_GRAPHICS_DRAW_DRAWVERTICALSTRINGUTIL_H
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
@class DrawVerticalStringUtil;
@class Font;
@class Graphics;
@class AndroidUtil;
@class J2MEUtil;
@class Anchor;
@class OpenGLFeatureUtil;
@class NullUtil;
@class PreLogUtil;
@class StringMaker;
@class StringUtil;

@interface DrawVerticalStringUtil : ABObject {
@public
    const char* EMPTY_STRING;
    int32_t anchor;
    int32_t charHeight;
    int32_t offsetY;
    int32_t* offsetXArray;
}
- (instancetype) init;
- (void) initFields;
+ (DrawVerticalStringUtil*) getInstance;
- (void) updateMeasurement:(Graphics*)graphics :(const char*)string;
- (void) paintVerticle:(Graphics*)graphics :(const char*)string :(int32_t)x :(int32_t)y :(int32_t)anchor;
- (void) drawCenterString:(Graphics*)graphics :(const char*)string :(int32_t)offset :(int32_t)length :(int32_t)x :(int32_t)y;
- (void) drawCenterStrings:(Graphics*)graphics :(const char**)stringArray :(int32_t)maxWidth :(int32_t)x :(int32_t)y;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void DrawVerticalStringUtil_staticInit(void);


#endif // ORG_ALLBINARY_GRAPHICS_DRAW_DRAWVERTICALSTRINGUTIL_H
