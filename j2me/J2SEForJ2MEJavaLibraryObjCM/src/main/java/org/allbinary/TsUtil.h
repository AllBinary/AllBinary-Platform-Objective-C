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
@class Displayable;
@class Form;
@class InvalidRecordIDException;
@class RecordStore;
@class RecordStoreException;
@class RecordStoreNotOpenException;
@class NullUtil;
#include "java/lang/System.h"
#include "java/lang/Float.h"
#include "java/lang/Double.h"

//J2SE
@interface TsUtil : ABObject {
@public
}
- (instancetype) init;
+ (TsUtil*) getInstance;
- (double) longBitsToDouble:(int64_t)bits;
- (float) intBitsToFloat:(int32_t)bits;
- (int32_t) hashCode:(id)anyType;
- (void) waitFor:(id)any :(int64_t)timeoutMillis;
- (int8_t*) getRecord:(id)anyType :(int32_t)recordId;
- (int32_t) compareTo:(const char*)a :(const char*)b;
- (bool) equalIgnoreCase:(const char*)a :(const char*)b;
- (bool) equalsNotstring:(id)anyType :(id)object2;
- (ClassLoader*) getClassClassLoader:(id)anyType;
- (int32_t) toNumberFromChar:(uint16_t)value;
- (int32_t) toNumber:(int32_t)value;
- (int8_t*) getByteArray:(const char*)string;
- (bool) isItemListener:(Displayable*)owner;
- (void) gc;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void TsUtil_staticInit(void);


#endif // ORG_ALLBINARY_TSUTIL_H
