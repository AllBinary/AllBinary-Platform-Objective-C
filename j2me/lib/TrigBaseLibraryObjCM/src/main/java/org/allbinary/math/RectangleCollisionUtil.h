#ifndef ORG_ALLBINARY_MATH_RECTANGLECOLLISIONUTIL_H
#define ORG_ALLBINARY_MATH_RECTANGLECOLLISIONUTIL_H
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
// package org.allbinary.math

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class RectangleCollisionUtil;
@class JsType;
@class JsMethod;
@class JsConstructor;
// #include "jsinterop/annotations/JsType.h"
// #include "jsinterop/annotations/JsMethod.h"
// #include "jsinterop/annotations/JsConstructor.h"

@interface RectangleCollisionUtil : ABObject {
@public
}
- (instancetype) init;
+ (RectangleCollisionUtil*) getInstance;
- (bool) isCollision:(int32_t)rectX1 :(int32_t)rectY1 :(int32_t)rectX2 :(int32_t)rectY2 :(int32_t)rect2X1 :(int32_t)rect2Y1 :(int32_t)rect2X2 :(int32_t)rect2Y2;
- (bool) isInside:(int32_t)rectX1 :(int32_t)rectY1 :(int32_t)rectX2 :(int32_t)rectY2 :(int32_t)x :(int32_t)y;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void RectangleCollisionUtil_staticInit(void);


#endif // ORG_ALLBINARY_MATH_RECTANGLECOLLISIONUTIL_H
