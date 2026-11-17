#ifndef ORG_ALLBINARY_MATH_FRAMEUTIL_H
#define ORG_ALLBINARY_MATH_FRAMEUTIL_H
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
@class FrameUtil;
@class JsType;
@class JsMethod;
@class JsConstructor;
@class AngleFactory;
// #include "jsinterop/annotations/JsType.h"
// #include "jsinterop/annotations/JsMethod.h"
// #include "jsinterop/annotations/JsConstructor.h"

@interface FrameUtil : ABObject {
@public
}
- (instancetype) init;
+ (FrameUtil*) getInstance;
- (int32_t) getFrameForAngle:(int16_t)angle :(int32_t)angleIncrement;
- (int32_t) getFrameAngle:(int32_t)frame :(int32_t)angleIncrement;
- (int32_t) adjustAngleToFrameAngle:(int32_t)currentAngle;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void FrameUtil_staticInit(void);


#endif // ORG_ALLBINARY_MATH_FRAMEUTIL_H
