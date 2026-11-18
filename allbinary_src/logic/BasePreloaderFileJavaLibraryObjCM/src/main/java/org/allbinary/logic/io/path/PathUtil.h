#ifndef ORG_ALLBINARY_LOGIC_IO_PATH_PATHUTIL_H
#define ORG_ALLBINARY_LOGIC_IO_PATH_PATHUTIL_H
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
// package org.allbinary.logic.io.path

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class PathUtil;
@class FilePathData;
@class StringUtil;
@class StringValidationUtil;
@class AbPathData;
@class AbFilePath;
@class AbPath;
#if __has_include("org/allbinary/logic/io/file/FilePathData.h")
#include "org/allbinary/logic/io/file/FilePathData.h"
#endif
#if __has_include("org/allbinary/logic/io/path/AbPathData.h")
#include "org/allbinary/logic/io/path/AbPathData.h"
#endif

//Used to correct user input for paths
@interface PathUtil : ABObject {
@public
    AbPathData* abPathData;
    FilePathData* filePathData;
}
- (instancetype) init;
- (void) initFields;
+ (PathUtil*) getInstance;
- (const char*) getExtensionWithAbFilePath:(AbFilePath*)abFilePath;
- (const char*) getExtensionWithAbPath:(AbPath*)abPath;
- (const char*) getWithoutExtensionWithAbFilePath:(AbFilePath*)abFilePath;
- (const char*) getWithoutExtensionWithAbPath:(AbPath*)abPath;
- (const char*) getWithoutExtension:(const char*)filePath;
- (bool) isValid:(const char*)path;
- (bool) isValidStart:(const char*)path;
- (bool) isValidEnd:(const char*)path;
- (const char*) adjustStart:(const char*)path;
- (const char*) adjustEnd:(const char*)path;
- (const char*) adjust:(const char*)path;
- (AbPath*) removeNameFromPath:(const char*)path;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void PathUtil_staticInit(void);


#endif // ORG_ALLBINARY_LOGIC_IO_PATH_PATHUTIL_H
