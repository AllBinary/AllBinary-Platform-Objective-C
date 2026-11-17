#ifndef ORG_ALLBINARY_UTIL_ENUMERATIONUTIL_H
#define ORG_ALLBINARY_UTIL_ENUMERATIONUTIL_H
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
// package org.allbinary.util

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class EnumerationUtil;
@class JsType;
@class JsMethod;
@class BasicArrayListD;
@class BasicArrayList;
// #include "jsinterop/annotations/JsType.h"
#include "java/util/Enumeration.h"
// #include "jsinterop/annotations/JsMethod.h"

//ArkTs does not have this.  So this is for the ArkTs build.
@interface EnumerationUtil : ABObject {
@public
}
- (instancetype) init;
+ (EnumerationUtil*) getInstance;
- (bool) hasMoreElements:(Enumeration*)enumeration;
- (id) nextElement:(Enumeration*)enumeration;
- (id*) getAsArray:(Enumeration*)enumeration;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void EnumerationUtil_staticInit(void);


#endif // ORG_ALLBINARY_UTIL_ENUMERATIONUTIL_H
