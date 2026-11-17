#ifndef ORG_ALLBINARY_UTIL_BASICARRAYLIST_H
#define ORG_ALLBINARY_UTIL_BASICARRAYLIST_H
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
@class BasicArrayList;
@class JsType;
@class StringMaker;
@class CommonLabels;
@class CommonSeps;
@class JsMethod;
@class JsConstructor;
@class JsProperty;
@class ArrayUtil;
@class BasicArrayListS;
// #include "jsinterop/annotations/JsType.h"
// #include "jsinterop/annotations/JsMethod.h"
// #include "jsinterop/annotations/JsConstructor.h"
// #include "jsinterop/annotations/JsProperty.h"
#include "java/lang/System.h"
#if __has_include("org/allbinary/util/ArrayUtil.h")
#include "org/allbinary/util/ArrayUtil.h"
#endif

//This is a very fast and simple resizable list.
@interface BasicArrayList : ABObject {
@public
    ArrayUtil* arrayUtil;
    id* objectArray;
    int32_t currentIndex;
}
- (instancetype) init:(id*)objectArray;
- (void) initFields;
- (void) addAt:(int32_t)index :(id)element;
- (bool) add:(id)anyType;
- (id) removeAt:(int32_t)index;
- (bool) remove:(id)anyType;
- (bool) removeAll2:(BasicArrayList*)list;
- (bool) addAll2:(BasicArrayList*)list;
- (bool) addAllList:(BasicArrayList*)list;
- (bool) addAll:(id*)newObjectArray;
- (void) ensureCapacity:(int32_t)minSize;
- (void) trimToSize;
- (int32_t) indexOf:(id)anyType;
- (int32_t) lastIndexOf:(id)anyType;
- (id) get:(int32_t)index;
- (id) set:(int32_t)index :(id)element;
- (void) clear;
- (int32_t) size;
- (bool) isEmpty;
- (bool) contains:(id)anyType;
- (id*) toArray;
- (id*) toArrayType:(id*)objectArray;
- (id) clone;
- (const char*) toString;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void BasicArrayList_staticInit(void);


#endif // ORG_ALLBINARY_UTIL_BASICARRAYLIST_H
