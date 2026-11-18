#ifndef ORG_ALLBINARY_LOGIC_IO_NULLOUTPUTSTREAM_H
#define ORG_ALLBINARY_LOGIC_IO_NULLOUTPUTSTREAM_H
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
// package org.allbinary.logic.io

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class NullOutputStream;
#include "java/io/IOException.h"
#include "java/io/OutputStream.h"

@interface NullOutputStream : OutputStream {
@public
}
- (instancetype) init;
- (void) write:(int32_t)b;
- (void) write:(int8_t*)b :(int32_t)off :(int32_t)len;
- (void) close;
@end

extern NullOutputStream* NullOutputStream_NULL_OUTPUT_STREAM;
// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void NullOutputStream_staticInit(void);


#endif // ORG_ALLBINARY_LOGIC_IO_NULLOUTPUTSTREAM_H
