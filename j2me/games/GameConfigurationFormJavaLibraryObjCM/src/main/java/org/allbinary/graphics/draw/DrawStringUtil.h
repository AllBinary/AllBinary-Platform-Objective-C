#ifndef ORG_ALLBINARY_GRAPHICS_DRAW_DRAWSTRINGUTIL_H
#define ORG_ALLBINARY_GRAPHICS_DRAW_DRAWSTRINGUTIL_H
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
@class DrawStringUtil;
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
// #include "javax/microedition/lcdui/Font.h"
// #include "org/allbinary/AndroidUtil.h"
// #include "org/allbinary/J2MEUtil.h"
// #include "org/allbinary/graphics/opengles/OpenGLFeatureUtil.h"
// #include "org/allbinary/logic/NullUtil.h"

@interface DrawStringUtil : ABObject {
@public
    const char* EMPTY_STRING;
    int32_t anchor;
}
- (instancetype) init;
- (void) initFields;
+ (DrawStringUtil*) getInstance;
- (void) drawCenterString:(Graphics*)graphics :(const char*)string :(int32_t)offset :(int32_t)length :(int32_t)x :(int32_t)y;
- (void) drawCenterStrings:(Graphics*)graphics :(const char**)stringArray :(int32_t)maxWidth :(int32_t)charHeight :(int32_t)x :(int32_t)y;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void DrawStringUtil_staticInit(void);


#endif // ORG_ALLBINARY_GRAPHICS_DRAW_DRAWSTRINGUTIL_H
