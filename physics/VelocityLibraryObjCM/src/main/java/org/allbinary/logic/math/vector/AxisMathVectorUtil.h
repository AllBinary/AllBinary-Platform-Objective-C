#ifndef ORG_ALLBINARY_LOGIC_MATH_VECTOR_AXISMATHVECTORUTIL_H
#define ORG_ALLBINARY_LOGIC_MATH_VECTOR_AXISMATHVECTORUTIL_H
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
// package org.allbinary.logic.math.vector

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class AxisMathVectorUtil;
@class NoDecimalTrigTable;
#if __has_include("org/allbinary/math/NoDecimalTrigTable.h")
#include "org/allbinary/math/NoDecimalTrigTable.h"
#endif

@interface AxisMathVectorUtil : ABObject {
@public
    NoDecimalTrigTable* noDecimalTrigTable;
}
- (instancetype) init;
- (void) initFields;
+ (AxisMathVectorUtil*) getInstance;
- (int64_t) calculateX:(int64_t)magnitude :(int32_t)angle;
- (int64_t) calculateY:(int64_t)magnitude :(int32_t)angle;
- (int64_t) calculateZ:(int64_t)magnitude :(int32_t)otherAngle;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void AxisMathVectorUtil_staticInit(void);


#endif // ORG_ALLBINARY_LOGIC_MATH_VECTOR_AXISMATHVECTORUTIL_H
