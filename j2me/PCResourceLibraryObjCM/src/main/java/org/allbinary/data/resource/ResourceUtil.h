#ifndef ORG_ALLBINARY_DATA_RESOURCE_RESOURCEUTIL_H
#define ORG_ALLBINARY_DATA_RESOURCE_RESOURCEUTIL_H
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
// package org.allbinary.data.resource

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class ResourceUtil;
@class LogUtil;
@class StreamUtil;
@class StringMaker;
@class StringUtil;
#include "java/io/ByteArrayInputStream.h"
#include "java/io/ByteArrayOutputStream.h"
#include "java/io/FileInputStream.h"
#include "java/io/InputStream.h"
#if __has_include("org/allbinary/logic/communication/log/LogUtil.h")
#include "org/allbinary/logic/communication/log/LogUtil.h"
#endif
#include "java/lang/Integer.h"

//J2SE - PC
@interface ResourceUtil : ABObject {
@public
    LogUtil* logUtil;
    const char* path;
    const char* ext;
}
- (instancetype) init;
- (void) initFields;
+ (ResourceUtil*) getInstance;
- (void) setLoadingPaths:(const char*)path :(const char*)ext;
- (void) setClassLoader:(ClassLoader*)classLoader;
- (InputStream*) getResourceAsStream:(const char*)resource;
- (InputStream*) getResourceAsStreamAtStart:(const char*)resource :(int32_t)startIndex;
- (void) addResource:(const char*)resource :(int32_t)value;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void ResourceUtil_staticInit(void);


#endif // ORG_ALLBINARY_DATA_RESOURCE_RESOURCEUTIL_H
