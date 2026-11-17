#ifndef ORG_ALLBINARY_MATH_ANGLEINCREMENTINFO_H
#define ORG_ALLBINARY_MATH_ANGLEINCREMENTINFO_H
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
@class AngleIncrementInfo;
@class JsType;
@class SmallIntegerSingletonFactory;
@class StringMaker;
@class JsProperty;
@class JsMethod;
@class JsConstructor;
@class AngleFactory;
@class FrameUtil;
// #include "jsinterop/annotations/JsType.h"
// #include "jsinterop/annotations/JsProperty.h"
// #include "jsinterop/annotations/JsMethod.h"
// #include "jsinterop/annotations/JsConstructor.h"
#include "java/lang/Integer.h"
#if __has_include("org/allbinary/math/FrameUtil.h")
#include "org/allbinary/math/FrameUtil.h"
#endif

@interface AngleIncrementInfo : ABObject {
@public
    int16_t angleIncrement;
    int32_t DOWN_FRAME;
    int32_t UP_FRAME;
    int32_t LEFT_FRAME;
    int32_t RIGHT_FRAME;
    FrameUtil* frameUtil;
}
- (instancetype) init:(int16_t)angleIncrement;
- (void) initFields;
- (int32_t) getFrameAngle:(int32_t)frame;
- (int16_t) getAngleIncrement;
- (const char*) toString;
- (int32_t) getClosestGeneralDirection:(int16_t)angle;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void AngleIncrementInfo_staticInit(void);


#endif // ORG_ALLBINARY_MATH_ANGLEINCREMENTINFO_H
