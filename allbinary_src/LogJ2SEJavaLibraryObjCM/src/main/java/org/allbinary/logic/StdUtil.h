#ifndef ORG_ALLBINARY_LOGIC_STDUTIL_H
#define ORG_ALLBINARY_LOGIC_STDUTIL_H
/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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
// package org.allbinary.logic

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class StdUtil;
@class ABHashMap;
@class ABHashtable;
@class ABStack;
@class ABVector;
#if __has_include("org/allbinary/util/ABHashMap.h")
#include "org/allbinary/util/ABHashMap.h"
#endif
#if __has_include("org/allbinary/util/ABHashtable.h")
#include "org/allbinary/util/ABHashtable.h"
#endif
#if __has_include("org/allbinary/util/ABVector.h")
#include "org/allbinary/util/ABVector.h"
#endif

//ActualPlatform
@interface StdUtil : ABObject {
@public
    ABVector* EMPTY_VECTOR;
    ABHashtable* NULL_TABLE;
    ABHashMap* NULL_MAP;
}
- (instancetype) init;
- (void) initFields;
+ (StdUtil*) getInstance;
- (ABStack*) createStack;
- (ABVector*) createVector;
- (ABHashtable*) createHashtable;
- (ABHashMap*) createHashMap;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void StdUtil_staticInit(void);


#endif // ORG_ALLBINARY_LOGIC_STDUTIL_H
