#ifndef ORG_ALLBINARY_LOGIC_IO_FILE_ABFILE_H
#define ORG_ALLBINARY_LOGIC_IO_FILE_ABFILE_H
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
// package org.allbinary.logic.io.file

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class AbFile;
@class TsUtil;
@class AbPath;
@class StringUtil;
@class AbFileInterface;
#include "java/io/File.h"
#include "java/io/FileFilter.h"
#include "java/io/FilenameFilter.h"
#include "java/io/IOException.h"
#include "java/net/URI.h"
#include "org/allbinary/logic/io/file/AbFileInterface.h"

@interface AbFile : ABObject <AbFileInterface> {
@public
    File* file;
}
- (instancetype) init:(File*)file;
- (void) initFields;
+ (AbFile*) createAbFileWithChild:(AbFile*)file :(const char*)childPathName;
+ (AbFile*) createAbFile:(const char*)filePath;
+ (AbFile*) createAbFilePathAndName:(const char*)filePath :(const char*)fileName;
+ (AbFile*) createAbFileFromAbPath:(AbPath*)abPath;
+ (AbFile*) createAbFileFromRawPath:(const char*)filePath;
- (File*) getFile;
- (const char*) getName;
- (const char*) getParent;
- (id) getParentFile;
- (const char*) getPath;
- (bool) isAbsolute;
- (const char*) getAbsolutePath;
- (id) getAbsoluteFile;
- (const char*) getCanonicalPath;
- (id) getCanonicalFile;
- (URI*) toURI;
- (bool) canRead;
- (bool) canWrite;
- (bool) exists;
- (bool) isDirectory;
- (bool) isFile;
- (bool) isHidden;
- (int64_t) lastModified;
- (int64_t) length;
- (bool) createNewFile;
- (bool) delete;
- (void) deleteOnExit;
- (const char**) list;
- (const char**) listWithFilter:(FilenameFilter*)filter;
- (id*) listFiles;
- (id*) listFilesFileNameFilter:(FilenameFilter*)filter;
- (id*) listFilesFileFilter:(FileFilter*)filter;
- (bool) mkdir;
- (bool) mkdirs;
- (bool) renameTo:(AbFile*)dest;
- (bool) setLastModified:(int64_t)time;
- (bool) setReadOnly;
- (bool) setWritable:(bool)writable :(bool)ownerOnly;
- (bool) setWritable:(bool)writable;
- (bool) setReadable:(bool)readable :(bool)ownerOnly;
- (bool) setReadable:(bool)readable;
- (bool) setExecutable:(bool)executable :(bool)ownerOnly;
- (bool) setExecutable:(bool)executable;
- (bool) canExecute;
- (int64_t) getTotalSpace;
- (int64_t) getFreeSpace;
- (int64_t) getUsableSpace;
- (int32_t) compareTo:(File*)pathname;
- (bool) equals:(id)obj;
- (int32_t) hashCode;
- (const char*) toString;
@end

extern AbFile* AbFile_NULL_FILE;
// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void AbFile_staticInit(void);


#endif // ORG_ALLBINARY_LOGIC_IO_FILE_ABFILE_H
