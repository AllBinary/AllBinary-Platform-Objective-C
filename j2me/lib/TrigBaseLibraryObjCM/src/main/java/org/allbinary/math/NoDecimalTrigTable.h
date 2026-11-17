#ifndef ORG_ALLBINARY_MATH_NODECIMALTRIGTABLE_H
#define ORG_ALLBINARY_MATH_NODECIMALTRIGTABLE_H
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
@class NoDecimalTrigTable;
@class JsType;
@class PreLogUtil;
@class MathUtil;
@class StringMaker;
@class CommonLabels;
@class CommonSeps;
@class JsMethod;
@class JsConstructor;
@class JsProperty;
@class AngleFactory;
@class PositionStrings;
@class Angle;
// #include "jsinterop/annotations/JsType.h"
#if __has_include("org/allbinary/logic/math/MathUtil.h")
#include "org/allbinary/logic/math/MathUtil.h"
#endif
// #include "jsinterop/annotations/JsMethod.h"
// #include "jsinterop/annotations/JsConstructor.h"
// #include "jsinterop/annotations/JsProperty.h"
#include "java/lang/Integer.h"

@interface NoDecimalTrigTable : ABObject {
@public
    MathUtil* mathUtil;
    int64_t* noDecimalSin;
    int64_t* noDecimalCos;
    int64_t* noDecimalTan;
    int32_t SCALE;
}
- (instancetype) init;
- (void) initFields;
+ (NoDecimalTrigTable*) getInstance;
- (int64_t) sin:(int32_t)angle;
- (int64_t) cos:(int32_t)angle;
- (int64_t) tan:(int32_t)angle;
- (int16_t) antiTan:(int32_t)dx :(int32_t)dy;
- (int16_t) antiTanDebug:(int32_t)screenX :(int32_t)screenY :(int32_t)targetX :(int32_t)targetY;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void NoDecimalTrigTable_staticInit(void);


#endif // ORG_ALLBINARY_MATH_NODECIMALTRIGTABLE_H
