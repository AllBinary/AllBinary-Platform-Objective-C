#ifndef ORG_ALLBINARY_LOGIC_IO_FILE_ABFILESYSTEM_H
#define ORG_ALLBINARY_LOGIC_IO_FILE_ABFILESYSTEM_H
/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2026 AllBinary 
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
// package org.allbinary.logic.io.file

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class AbFileSystem;
@class NullUtil;
@class LogUtil;
@class StringUtil;
@class CommonStrings;
#include "java/io/File.h"
#include "java/io/FileInputStream.h"
#include "java/io/InputStream.h"
#if __has_include("org/allbinary/logic/communication/log/LogUtil.h")
#include "org/allbinary/logic/communication/log/LogUtil.h"
#endif
#if __has_include("org/allbinary/string/CommonStrings.h")
#include "org/allbinary/string/CommonStrings.h"
#endif

//FileJ2SE should be the same as J2SEForJ2ME
@interface AbFileSystem : ABObject {
@public
    LogUtil* logUtil;
    CommonStrings* commonStrings;
}
- (instancetype) init;
- (void) initFields;
+ (AbFileSystem*) getInstance;
- (bool) isDirectoryOrFile:(const char*)path;
- (bool) isDirectory:(const char*)path;
- (const char**) getFilesAsStringArrayForPath:(const char*)currentDirPath;
- (const char*) readAsString:(const char*)fileName;
- (const char*) readAsString:(const char*)fileName :(int8_t*)bytes;
- (bool) close:(id)closeable;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void AbFileSystem_staticInit(void);


#endif // ORG_ALLBINARY_LOGIC_IO_FILE_ABFILESYSTEM_H
