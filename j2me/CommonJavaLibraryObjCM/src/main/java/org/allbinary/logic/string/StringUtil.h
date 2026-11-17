#ifndef ORG_ALLBINARY_LOGIC_STRING_STRINGUTIL_H
#define ORG_ALLBINARY_LOGIC_STRING_STRINGUTIL_H
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
// package org.allbinary.logic.string

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class StringUtil;
@class JsType;
@class JsMethod;
@class JsConstructor;
@class JsProperty;
// #include "jsinterop/annotations/JsType.h"
// #include "jsinterop/annotations/JsMethod.h"
// #include "jsinterop/annotations/JsConstructor.h"
// #include "jsinterop/annotations/JsProperty.h"

@interface StringUtil : ABObject {
@public
    const char* INIT_STRING;
    const char* NULL_STRING;
    const char* EMPTY_STRING;
    const char** ONE_EMPTY_STRING_ARRAY;
    const char*** ONE_EMPTY_STRING_ARRAY_OF_ARRAYS;
    const char** stringArray;
}
- (instancetype) init;
- (void) initFields;
+ (StringUtil*) getInstance;
- (const char*) getNonNull:(const char*)string;
- (const char**) getArrayInstance;
- (int32_t) count:(const char*)string :(uint16_t)aChar;
- (const char*) toString:(id)anyType;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void StringUtil_staticInit(void);


#endif // ORG_ALLBINARY_LOGIC_STRING_STRINGUTIL_H
