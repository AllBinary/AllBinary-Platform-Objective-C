#ifndef ORG_ALLBINARY_MATH_NAMEDANGLE_H
#define ORG_ALLBINARY_MATH_NAMEDANGLE_H
/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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
@class NamedAngle;
@class JsType;
@class JsProperty;
@class JsConstructor;
@class Angle;
// #include "jsinterop/annotations/JsType.h"
// #include "jsinterop/annotations/JsProperty.h"
// #include "jsinterop/annotations/JsConstructor.h"
#include "org/allbinary/math/Angle.h"

@interface NamedAngle : Angle {
@public
    const char* name;
}
- (instancetype) init:(int16_t)angle :(const char*)name;
- (void) initFields;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void NamedAngle_staticInit(void);


#endif // ORG_ALLBINARY_MATH_NAMEDANGLE_H
