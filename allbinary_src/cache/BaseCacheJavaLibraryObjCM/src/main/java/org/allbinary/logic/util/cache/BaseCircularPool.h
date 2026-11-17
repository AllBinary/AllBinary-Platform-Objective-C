#ifndef ORG_ALLBINARY_LOGIC_UTIL_CACHE_BASECIRCULARPOOL_H
#define ORG_ALLBINARY_LOGIC_UTIL_CACHE_BASECIRCULARPOOL_H
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
// package org.allbinary.logic.util.cache

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class BaseCircularPool;
@class JsType;
@class NullUtil;
@class CircularIndexUtil;
@class JsMethod;
@class JsProperty;
@class AllBinaryObjectFactoryInterface;
// #include "jsinterop/annotations/JsType.h"
#if __has_include("org/allbinary/util/CircularIndexUtil.h")
#include "org/allbinary/util/CircularIndexUtil.h"
#endif
// #include "jsinterop/annotations/JsMethod.h"
// #include "jsinterop/annotations/JsProperty.h"

@interface BaseCircularPool : ABObject {
@public
    CircularIndexUtil* circularIndexUtil;
    id* OBJECT_ARRAY;
}
- (instancetype) init;
- (void) initFields;
- (id) getNextInstance;
- (void) init_:(AllBinaryObjectFactoryInterface*)allBinaryObjectFactoryInterface;
- (id) getInstance:(int32_t)index;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void BaseCircularPool_staticInit(void);


#endif // ORG_ALLBINARY_LOGIC_UTIL_CACHE_BASECIRCULARPOOL_H
