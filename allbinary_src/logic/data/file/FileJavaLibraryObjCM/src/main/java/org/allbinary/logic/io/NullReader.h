#ifndef ORG_ALLBINARY_LOGIC_IO_NULLREADER_H
#define ORG_ALLBINARY_LOGIC_IO_NULLREADER_H
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
@class NullReader;
#include "java/io/IOException.h"
#include "java/io/Reader.h"

@interface NullReader : Reader {
@public
}
- (instancetype) init;
- (int32_t) read;
- (int32_t) read:(uint16_t*)cbuf :(int32_t)off :(int32_t)len;
- (bool) ready;
- (int64_t) skip:(int64_t)n;
- (void) close;
@end

extern NullReader* NullReader_NULL_READER;
// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void NullReader_staticInit(void);


#endif // ORG_ALLBINARY_LOGIC_IO_NULLREADER_H
