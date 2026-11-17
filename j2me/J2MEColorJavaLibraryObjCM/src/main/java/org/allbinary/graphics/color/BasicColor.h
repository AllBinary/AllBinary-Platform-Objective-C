#ifndef ORG_ALLBINARY_GRAPHICS_COLOR_BASICCOLOR_H
#define ORG_ALLBINARY_GRAPHICS_COLOR_BASICCOLOR_H
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
@class BasicColor;
@class JsType;
@class StringMaker;
@class JsMethod;
@class JsConstructor;
@class JsProperty;
@class BasicColorUtil;
// #include "jsinterop/annotations/JsType.h"
// #include "jsinterop/annotations/JsMethod.h"
// #include "jsinterop/annotations/JsConstructor.h"
// #include "jsinterop/annotations/JsProperty.h"

@interface BasicColor : ABObject {
@public
    const char* name;
    int32_t value;
    float redComponent;
    float greenComponent;
    float blueComponent;
    float alphaComponent;
    int16_t red;
    int16_t green;
    int16_t blue;
    int16_t alpha;
}
- (instancetype) init:(int32_t)alphaValue :(int32_t)value :(const char*)name;
- (void) initFields;
- (int32_t) intValue;
- (int32_t) toInt;
- (const char*) toString;
- (const char*) getName;
- (float) getRedComponent;
- (float) getGreenComponent;
- (float) getBlueComponent;
- (float) getAlphaComponent;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void BasicColor_staticInit(void);


#endif // ORG_ALLBINARY_GRAPHICS_COLOR_BASICCOLOR_H
