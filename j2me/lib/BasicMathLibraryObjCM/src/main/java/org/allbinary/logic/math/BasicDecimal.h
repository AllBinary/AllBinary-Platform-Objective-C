#ifndef ORG_ALLBINARY_LOGIC_MATH_BASICDECIMAL_H
#define ORG_ALLBINARY_LOGIC_MATH_BASICDECIMAL_H
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
@class BasicDecimal;
@class ScaleFactorFactory;
#include "java/lang/Long.h"

@interface BasicDecimal : ABObject {
@public
    int64_t units;
    int32_t scaled;
    int32_t factor;
    int32_t factorValue;
}
- (instancetype) init:(int64_t)units;
- (void) initFields;
+ (BasicDecimal*) createBigDecimal:(BasicDecimal*)bigDecimal;
- (void) setint:(int32_t)value;
- (void) setlong:(int64_t)value;
- (void) set:(BasicDecimal*)bigDecimal;
- (void) addint:(int32_t)value;
- (void) addlong:(int64_t)value;
- (void) add:(BasicDecimal*)bigDecimal;
- (void) subtractint:(int32_t)value;
- (void) subtractlong:(int64_t)value;
- (void) subtract:(BasicDecimal*)bigDecimal;
- (void) multiplyint:(int32_t)value;
- (void) multiplylong:(int64_t)value;
- (void) multiply:(BasicDecimal*)bigDecimal;
- (void) divideint:(int32_t)value;
- (void) dividelong:(int64_t)value;
- (void) divide:(BasicDecimal*)bigDecimal;
- (int64_t) getUnscaled;
- (void) updateScaled;
- (int32_t) getScaled;
- (const char*) toString;
- (int32_t) getScaledFactor;
- (int32_t) getScaledFactorValue;
@end

extern BasicDecimal* BasicDecimal_ZERO_BIGDECIMAL;
// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void BasicDecimal_staticInit(void);


#endif // ORG_ALLBINARY_LOGIC_MATH_BASICDECIMAL_H
