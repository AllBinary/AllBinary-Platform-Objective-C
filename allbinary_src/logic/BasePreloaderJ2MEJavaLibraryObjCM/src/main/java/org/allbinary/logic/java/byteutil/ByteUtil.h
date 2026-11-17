#ifndef ORG_ALLBINARY_LOGIC_JAVA_BYTEUTIL_BYTEUTIL_H
#define ORG_ALLBINARY_LOGIC_JAVA_BYTEUTIL_BYTEUTIL_H
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
// package org.allbinary.logic.java.byteutil

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class ByteUtil;

@interface ByteUtil : ABObject {
@public
}
- (instancetype) init;
+ (ByteUtil*) getInstance;
- (int8_t*) xor:(int8_t*)array :(int8_t)mask;
- (int8_t*) not:(int8_t*)array;
- (int8_t*) xorByte:(int8_t*)array :(int32_t)index;
- (bool) compare:(int8_t*)newByteArray :(int8_t*)oldByteArray;
- (bool) compareWithStats:(int8_t*)newByteArray :(int32_t)newSize :(int8_t*)oldByteArray :(int32_t*)stats;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void ByteUtil_staticInit(void);


#endif // ORG_ALLBINARY_LOGIC_JAVA_BYTEUTIL_BYTEUTIL_H
