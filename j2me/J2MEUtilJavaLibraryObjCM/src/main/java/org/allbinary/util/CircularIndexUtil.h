#ifndef ORG_ALLBINARY_UTIL_CIRCULARINDEXUTIL_H
#define ORG_ALLBINARY_UTIL_CIRCULARINDEXUTIL_H
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
// package org.allbinary.util

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class CircularIndexUtil;
@class JsType;
@class StringMaker;
@class CommonLabels;
@class JsMethod;
@class JsConstructor;
@class JsProperty;
// #include "jsinterop/annotations/JsType.h"
// #include "jsinterop/annotations/JsMethod.h"
// #include "jsinterop/annotations/JsConstructor.h"
// #include "jsinterop/annotations/JsProperty.h"

@interface CircularIndexUtil : ABObject {
@public
    int32_t index;
    int32_t lastIndex;
    int32_t size;
}
- (instancetype) init:(int32_t)index :(int32_t)size;
- (void) initFields;
- (int32_t) next;
- (int32_t) previous;
- (void) setIndex:(int32_t)index;
- (int32_t) getIndex;
+ (CircularIndexUtil*) createInstance:(int32_t)max;
+ (CircularIndexUtil*) createInstanceAt:(int32_t)index :(int32_t)max;
- (void) setSize:(int32_t)size;
- (int32_t) getSize;
- (const char*) toString;
@end

extern CircularIndexUtil* CircularIndexUtil_NULL_CIRCULAR_INDEX_UTIL;
// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void CircularIndexUtil_staticInit(void);


#endif // ORG_ALLBINARY_UTIL_CIRCULARINDEXUTIL_H
