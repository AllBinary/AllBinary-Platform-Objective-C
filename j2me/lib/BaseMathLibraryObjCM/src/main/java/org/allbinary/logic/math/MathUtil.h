#ifndef ORG_ALLBINARY_LOGIC_MATH_MATHUTIL_H
#define ORG_ALLBINARY_LOGIC_MATH_MATHUTIL_H
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
@class MathUtil;
@class JsType;
// #include "jsinterop/annotations/JsType.h"

@interface MathUtil : ABObject {
@public
    int32_t ACCURACY;
}
- (instancetype) init;
- (void) initFields;
+ (MathUtil*) getInstance;
- (int32_t) getTotalDigits:(int32_t)digits;
- (int32_t) sqrt:(int32_t)value;
- (double) sqrtd:(int32_t)x;
- (int32_t) abs:(int32_t)value;
- (int64_t) abslong:(int64_t)value;
- (int32_t) min:(int32_t)value :(int32_t)value2;
- (int32_t) max:(int32_t)value :(int32_t)value2;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void MathUtil_staticInit(void);


#endif // ORG_ALLBINARY_LOGIC_MATH_MATHUTIL_H
