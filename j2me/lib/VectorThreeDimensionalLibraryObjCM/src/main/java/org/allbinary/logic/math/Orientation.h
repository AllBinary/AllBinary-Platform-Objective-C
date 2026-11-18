#ifndef ORG_ALLBINARY_LOGIC_MATH_ORIENTATION_H
#define ORG_ALLBINARY_LOGIC_MATH_ORIENTATION_H
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
// package org.allbinary.logic.math

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class Orientation;
@class StringMaker;
@class BasicDecimal;
#if __has_include("org/allbinary/logic/math/BasicDecimal.h")
#include "org/allbinary/logic/math/BasicDecimal.h"
#endif

@interface Orientation : ABObject {
@public
    BasicDecimal* yaw;
    BasicDecimal* pitch;
    BasicDecimal* roll;
}
- (instancetype) init:(int32_t)yaw :(int32_t)pitch :(int32_t)roll;
- (void) initFields;
+ (Orientation*) getInstance:(int32_t)yaw :(int32_t)pitch :(int32_t)roll;
- (const char*) toString;
@end

extern Orientation* Orientation_NONE;
// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void Orientation_staticInit(void);


#endif // ORG_ALLBINARY_LOGIC_MATH_ORIENTATION_H
