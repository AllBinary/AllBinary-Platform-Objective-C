#ifndef ORG_ALLBINARY_UTIL_ARRAYUTIL_H
#define ORG_ALLBINARY_UTIL_ARRAYUTIL_H
// Generated Code Do Not Modify
// package org.allbinary.util

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class ArrayUtil;
@class JsType;
@class MathUtil;
@class StringMaker;
@class StringUtil;
@class CommonSeps;
@class JsMethod;
// #include "jsinterop/annotations/JsType.h"
#if __has_include("org/allbinary/logic/math/MathUtil.h")
#include "org/allbinary/logic/math/MathUtil.h"
#endif
// #include "jsinterop/annotations/JsMethod.h"
#include "java/lang/System.h"

@interface ArrayUtil : ABObject {
@public
    MathUtil* mathUtil;
}
- (instancetype) init;
- (void) initFields;
+ (ArrayUtil*) getInstance;
- (id*) copyOf:(id*)original :(int32_t)newLength;
- (id*) copyOfType:(id*)original :(int32_t)newLength :(const char*)newType;
- (int8_t*) copyOfbyte:(int8_t*)original :(int32_t)newLength;
- (int16_t*) copyOfshort:(int16_t*)original :(int32_t)newLength;
- (int32_t*) copyOfint:(int32_t*)original :(int32_t)newLength;
- (int64_t*) copyOflong:(int64_t*)original :(int32_t)newLength;
- (uint16_t*) copyOfchar:(uint16_t*)original :(int32_t)newLength;
- (float*) copyOffloat:(float*)original :(int32_t)newLength;
- (double*) copyOfdouble:(double*)original :(int32_t)newLength;
- (bool*) copyOfboolean:(bool*)original :(int32_t)newLength;
- (void) reverse:(int32_t*)intArray;
- (void) flip:(int32_t*)intArray :(int32_t)width :(int32_t)height;
- (const char*) toStringFromTwoDimensionaArray:(int32_t**)twoDimensionalIntArray;
- (const char*) toStringFromObjectArray:(id*)objectArray;
- (const char*) toStringFromByteArray:(int8_t*)byteArray;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void ArrayUtil_staticInit(void);


#endif // ORG_ALLBINARY_UTIL_ARRAYUTIL_H
