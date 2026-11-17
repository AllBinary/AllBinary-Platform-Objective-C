#ifndef ORG_ALLBINARY_GRAPHICS_GPOINT_H
#define ORG_ALLBINARY_GRAPHICS_GPOINT_H
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
// package org.allbinary.graphics

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class GPoint;
@class JsType;
@class JsMethod;
@class JsConstructor;
@class StringMaker;
@class PositionStrings;
@class CommonSeps;
// #include "jsinterop/annotations/JsType.h"
// #include "jsinterop/annotations/JsMethod.h"
// #include "jsinterop/annotations/JsConstructor.h"

@interface GPoint : ABObject {
@public
    int32_t x;
    int32_t y;
    int32_t z;
}
- (instancetype) init:(int32_t)x :(int32_t)y :(int32_t)z;
- (void) initFields;
+ (GPoint*) getInstance:(GPoint*)point;
- (int32_t) getX;
- (int32_t) getY;
- (int32_t) getZ;
- (int32_t) getRawX;
- (int32_t) getRawY;
- (int32_t) getRawZ;
- (const char*) toString;
+ (const char*) toStringStatic:(int32_t)x :(int32_t)y :(int32_t)z;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void GPoint_staticInit(void);


#endif // ORG_ALLBINARY_GRAPHICS_GPOINT_H
