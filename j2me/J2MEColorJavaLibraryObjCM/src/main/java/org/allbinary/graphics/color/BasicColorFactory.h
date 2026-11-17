#ifndef ORG_ALLBINARY_GRAPHICS_COLOR_BASICCOLORFACTORY_H
#define ORG_ALLBINARY_GRAPHICS_COLOR_BASICCOLORFACTORY_H
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
// package org.allbinary.graphics.color

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class BasicColorFactory;
@class JsType;
@class StringUtil;
@class JsMethod;
@class JsProperty;
@class BasicColor;
@class BasicColorUtil;
// #include "jsinterop/annotations/JsType.h"
// #include "jsinterop/annotations/JsMethod.h"
// #include "jsinterop/annotations/JsProperty.h"
#if __has_include("org/allbinary/graphics/color/BasicColor.h")
#include "org/allbinary/graphics/color/BasicColor.h"
#endif

@interface BasicColorFactory : ABObject {
@public
    BasicColor* NULL_COLOR;
    BasicColor* TAN;
    BasicColor* SKIN_PINK;
    BasicColor* RED;
    BasicColor* LIGHT_RED;
    BasicColor* DARK_GREEN;
    BasicColor* GREEN;
    BasicColor* LIGHT_GREEN;
    BasicColor* PURPLE;
    BasicColor* BLUE;
    BasicColor* LIGHT_BLUE;
    BasicColor* VERY_LIGHT_BLUE;
    BasicColor* PUCE;
    BasicColor* AQUA;
    BasicColor* YELLOW;
    BasicColor* PINK;
    BasicColor* BLACK;
    BasicColor* GREY;
    BasicColor* LIGHT_GREY;
    BasicColor* DARK_GREY;
    BasicColor* ORANGE;
    BasicColor* BROWN;
    BasicColor* WHITE;
    BasicColor* TRANSPARENT_COLOR;
    BasicColor* TRANSPARENT_GREY;
    BasicColor* TRANSPARENT_BLACK;
    BasicColor* TRANSPARENT_RED;
    BasicColor* CLEAR_COLOR;
    BasicColor* BORDER_COLOR;
}
- (instancetype) init;
- (void) initFields;
+ (BasicColorFactory*) getInstance;
- (BasicColor*) createInstance:(int32_t)value;
- (BasicColor*) createInstanceA:(int32_t)alphaValue :(int32_t)value;
- (BasicColor*) createInstanceAN:(int32_t)alphaValue :(int32_t)value :(const char*)name;
- (BasicColor*) createInstanceARGB:(int32_t)alphaValue :(int32_t)r :(int32_t)g :(int32_t)b :(const char*)name;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void BasicColorFactory_staticInit(void);


#endif // ORG_ALLBINARY_GRAPHICS_COLOR_BASICCOLORFACTORY_H
