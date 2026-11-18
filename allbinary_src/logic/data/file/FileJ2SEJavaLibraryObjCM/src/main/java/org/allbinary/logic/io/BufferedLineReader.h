#ifndef ORG_ALLBINARY_LOGIC_IO_BUFFEREDLINEREADER_H
#define ORG_ALLBINARY_LOGIC_IO_BUFFEREDLINEREADER_H
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
// package org.allbinary.logic.io

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class BufferedLineReader;
@class AbFile;
@class AbFileNativeUtil;
#include "java/io/BufferedReader.h"
#include "java/io/FileReader.h"

@interface BufferedLineReader : ABObject {
@public
    BufferedReader* tmpIn;
}
- (instancetype) init:(AbFile*)file;
- (void) initFields;
- (void) readUpToLines:(int64_t)readAheadIndex;
- (const char*) readLine;
- (bool) ready;
- (int64_t) getSize;
- (int32_t) getCurrent;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void BufferedLineReader_staticInit(void);


#endif // ORG_ALLBINARY_LOGIC_IO_BUFFEREDLINEREADER_H
