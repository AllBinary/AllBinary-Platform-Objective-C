#ifndef ORG_ALLBINARY_LOGIC_IO_BUFFEREDIOUTIL_H
#define ORG_ALLBINARY_LOGIC_IO_BUFFEREDIOUTIL_H
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
@class BufferedIOUtil;
@class AbFile;
@class AbFileNativeUtil;
@class StringUtil;
#include "java/io/BufferedReader.h"
#include "java/io/BufferedWriter.h"
#include "java/io/FileReader.h"
#include "java/io/FileWriter.h"

@interface BufferedIOUtil : ABObject {
@public
}
- (instancetype) init;
+ (void) copy_:(AbFile*)backupFile :(AbFile*)backupFileBak;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void BufferedIOUtil_staticInit(void);


#endif // ORG_ALLBINARY_LOGIC_IO_BUFFEREDIOUTIL_H
