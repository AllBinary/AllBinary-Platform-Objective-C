#ifndef ORG_ALLBINARY_MATH_ANGLEFACTORY_H
#define ORG_ALLBINARY_MATH_ANGLEFACTORY_H
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
@class AngleFactory;
@class JsType;
@class LogUtil;
@class StringMaker;
@class CommonPhoneStrings;
@class CommonSeps;
@class CommonStrings;
@class JsMethod;
@class JsConstructor;
@class JsProperty;
@class Angle;
@class NamedAngle;
@class FrameUtil;
// #include "jsinterop/annotations/JsType.h"
#if __has_include("org/allbinary/logic/communication/log/LogUtil.h")
#include "org/allbinary/logic/communication/log/LogUtil.h"
#endif
// #include "jsinterop/annotations/JsMethod.h"
// #include "jsinterop/annotations/JsConstructor.h"
// #include "jsinterop/annotations/JsProperty.h"
#if __has_include("org/allbinary/math/Angle.h")
#include "org/allbinary/math/Angle.h"
#endif
#if __has_include("org/allbinary/math/NamedAngle.h")
#include "org/allbinary/math/NamedAngle.h"
#endif
#if __has_include("org/allbinary/math/FrameUtil.h")
#include "org/allbinary/math/FrameUtil.h"
#endif

@interface AngleFactory : ABObject {
@public
    LogUtil* logUtil;
    int16_t TOTAL_ANGLE;
    int16_t QUARTER_TOTAL_ANGLE;
    Angle** angleArray;
    int16_t NEGATIVE_ONE;
    NamedAngle* NOT_ANGLE;
    NamedAngle* DOWN;
    NamedAngle* UP;
    NamedAngle* LEFT;
    NamedAngle* RIGHT;
    FrameUtil* frameUtil;
}
- (instancetype) init;
- (void) initFields;
+ (AngleFactory*) getInstance;
- (Angle*) getAt:(int32_t)index;
- (Angle*) getClosestDirection:(int32_t)angle;
- (Angle*) getGeneralDirection;
+ (void) main:(const char**)args;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void AngleFactory_staticInit(void);


#endif // ORG_ALLBINARY_MATH_ANGLEFACTORY_H
