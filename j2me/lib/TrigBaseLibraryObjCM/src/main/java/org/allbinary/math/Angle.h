#ifndef ORG_ALLBINARY_MATH_ANGLE_H
#define ORG_ALLBINARY_MATH_ANGLE_H
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
@class Angle;
@class JsType;
@class JsMethod;
@class JsConstructor;
// #include "jsinterop/annotations/JsType.h"
// #include "jsinterop/annotations/JsMethod.h"
// #include "jsinterop/annotations/JsConstructor.h"

@interface Angle : ABObject {
@public
    int16_t value;
}
- (instancetype) init:(int16_t)angle;
- (void) initFields;
- (int16_t) getValue;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void Angle_staticInit(void);


#endif // ORG_ALLBINARY_MATH_ANGLE_H
