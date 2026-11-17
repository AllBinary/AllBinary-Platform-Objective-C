#ifndef ORG_ALLBINARY_UTIL_BASICARRAYLISTUTIL_H
#define ORG_ALLBINARY_UTIL_BASICARRAYLISTUTIL_H
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
@class BasicArrayListUtil;
@class JsType;
@class MyRandomFactory;
@class StringMaker;
@class CommonLabels;
@class CommonPhoneStrings;
@class JsMethod;
@class JsProperty;
@class BasicArrayList;
@class ImmutableBasicArrayList;
@class BasicArrayListD;
// #include "jsinterop/annotations/JsType.h"
#if __has_include("org/allbinary/game/rand/MyRandomFactory.h")
#include "org/allbinary/game/rand/MyRandomFactory.h"
#endif
// #include "jsinterop/annotations/JsMethod.h"
// #include "jsinterop/annotations/JsProperty.h"
#include "java/lang/System.h"
#if __has_include("org/allbinary/util/BasicArrayList.h")
#include "org/allbinary/util/BasicArrayList.h"
#endif

@interface BasicArrayListUtil : ABObject {
@public
    BasicArrayList*** NULL_ARRAY_OF_ARRAY;
    MyRandomFactory* myRandomFactory;
    BasicArrayList* immutableInstance;
}
- (instancetype) init;
- (void) initFields;
+ (BasicArrayListUtil*) getInstance;
- (id) getRandom:(BasicArrayList*)list;
- (int32_t) getRandomIndex:(BasicArrayList*)list;
- (void) reverse:(BasicArrayList*)list;
- (const char*) log:(BasicArrayList*)list;
- (BasicArrayList*) getImmutableInstance;
+ (void) main:(const char**)args;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void BasicArrayListUtil_staticInit(void);


#endif // ORG_ALLBINARY_UTIL_BASICARRAYLISTUTIL_H
