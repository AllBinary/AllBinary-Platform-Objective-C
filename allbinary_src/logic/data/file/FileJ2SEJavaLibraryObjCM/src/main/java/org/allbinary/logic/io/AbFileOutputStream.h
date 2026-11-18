#ifndef ORG_ALLBINARY_LOGIC_IO_ABFILEOUTPUTSTREAM_H
#define ORG_ALLBINARY_LOGIC_IO_ABFILEOUTPUTSTREAM_H
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
@class AbFileOutputStream;
@class AbFile;
@class AbFileNativeUtil;
#include "java/io/FileNotFoundException.h"
#include "java/io/FileOutputStream.h"
// #include "org/allbinary/logic/io/file/AbFileNativeUtil.h"

@interface AbFileOutputStream : FileOutputStream {
@public
}
- (instancetype) init:(const char*)name :(bool)append;
+ (AbFileOutputStream*) createFromAbFile:(AbFile*)file;
+ (AbFileOutputStream*) createFromAbFileAppend:(AbFile*)file :(bool)append;
+ (AbFileOutputStream*) createFromFilePath:(const char*)name;
+ (AbFileOutputStream*) createFromFilePathAppend:(const char*)name :(bool)append;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void AbFileOutputStream_staticInit(void);


#endif // ORG_ALLBINARY_LOGIC_IO_ABFILEOUTPUTSTREAM_H
