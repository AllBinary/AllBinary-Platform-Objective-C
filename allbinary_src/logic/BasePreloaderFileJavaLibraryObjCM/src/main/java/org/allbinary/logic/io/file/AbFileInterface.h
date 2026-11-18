#ifndef ORG_ALLBINARY_LOGIC_IO_FILE_ABFILEINTERFACE_H
#define ORG_ALLBINARY_LOGIC_IO_FILE_ABFILEINTERFACE_H
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
@class AbFileInterface;
#include "java/io/FilenameFilter.h"
#include "java/io/IOException.h"
#include "java/net/URI.h"

@protocol AbFileInterface
- (bool) canRead;
- (bool) canWrite;
- (bool) createNewFile;
- (bool) delete;
- (void) deleteOnExit;
- (bool) exists;
- (const char*) getAbsolutePath;
- (const char*) getCanonicalPath;
- (const char*) getParent;
- (const char*) getPath;
- (bool) isAbsolute;
- (bool) isDirectory;
- (bool) isFile;
- (bool) isHidden;
- (int64_t) lastModified;
- (int64_t) length;
- (const char**) list;
- (const char**) listWithFilter:(FilenameFilter*)filter;
- (bool) mkdir;
- (bool) mkdirs;
- (bool) setLastModified:(int64_t)time;
- (bool) setReadOnly;
- (const char*) toString;
- (URI*) toURI;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void AbFileInterface_staticInit(void);


#endif // ORG_ALLBINARY_LOGIC_IO_FILE_ABFILEINTERFACE_H
