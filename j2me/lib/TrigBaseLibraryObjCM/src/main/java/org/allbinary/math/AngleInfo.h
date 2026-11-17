#ifndef ORG_ALLBINARY_MATH_ANGLEINFO_H
#define ORG_ALLBINARY_MATH_ANGLEINFO_H
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
@class AngleInfo;
@class JsType;
@class StringMaker;
@class StringUtil;
@class CommonSeps;
@class JsMethod;
@class JsConstructor;
@class AngleIncrementInfo;
@class AngleIncrementInfoFactory;
@class FrameUtil;
// #include "jsinterop/annotations/JsType.h"
// #include "jsinterop/annotations/JsMethod.h"
// #include "jsinterop/annotations/JsConstructor.h"
#if __has_include("org/allbinary/math/AngleIncrementInfo.h")
#include "org/allbinary/math/AngleIncrementInfo.h"
#endif
#if __has_include("org/allbinary/math/FrameUtil.h")
#include "org/allbinary/math/FrameUtil.h"
#endif

@interface AngleInfo : ABObject {
@public
    AngleIncrementInfo* angleIncrementInfo;
    int16_t angle;
    FrameUtil* frameUtil;
}
- (instancetype) init:(AngleIncrementInfo*)angleIncrementInfo;
- (void) initFields;
+ (AngleInfo*) getInstance:(int16_t)angleIncrement;
- (void) adjustAngle:(int32_t)frame;
- (int16_t) getAngle;
- (void) setAngle:(int16_t)angle;
- (AngleIncrementInfo*) getAngleIncrementInfo;
- (const char*) toString;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void AngleInfo_staticInit(void);


#endif // ORG_ALLBINARY_MATH_ANGLEINFO_H
