#ifndef ORG_ALLBINARY_TSUTIL_H
#define ORG_ALLBINARY_TSUTIL_H
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
// package org.allbinary

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class TsUtil;
#include "java/lang/Float.h"
#include "java/lang/Double.h"

//TempBase
@interface TsUtil : ABObject {
@public
}
- (instancetype) init;
+ (TsUtil*) getInstance;
- (double) longBitsToDouble:(int64_t)bits;
- (float) intBitsToFloat:(int32_t)bits;
- (int32_t) hashCode:(id)anyType;
- (void) waitFor:(id)any :(int64_t)timeoutMillis;
- (int32_t) compareTo:(const char*)a :(const char*)b;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void TsUtil_staticInit(void);


#endif // ORG_ALLBINARY_TSUTIL_H
