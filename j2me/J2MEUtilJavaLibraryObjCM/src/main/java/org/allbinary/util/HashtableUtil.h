#ifndef ORG_ALLBINARY_UTIL_HASHTABLEUTIL_H
#define ORG_ALLBINARY_UTIL_HASHTABLEUTIL_H
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
@class HashtableUtil;
@class JsType;
@class EnumerationUtil;
@class ABHashtable;
@class BasicArrayListS;
@class BasicArrayList;
#include "java/util/Enumeration.h"
// #include "jsinterop/annotations/JsType.h"
#if __has_include("org/allbinary/util/EnumerationUtil.h")
#include "org/allbinary/util/EnumerationUtil.h"
#endif

@interface HashtableUtil : ABObject {
@public
    EnumerationUtil* enumerationUtil;
}
- (instancetype) init;
- (void) initFields;
+ (HashtableUtil*) getInstance;
- (void) putAll:(ABHashtable*)fromHashtable :(ABHashtable*)hashtable;
- (id*) getKeysAsArray:(ABHashtable*)hashtable;
- (BasicArrayList*) getKeysAsList:(ABHashtable*)hashtable;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void HashtableUtil_staticInit(void);


#endif // ORG_ALLBINARY_UTIL_HASHTABLEUTIL_H
