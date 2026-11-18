#ifndef ORG_ALLBINARY_LOGIC_IO_BUFFEREDWRITERUTIL_H
#define ORG_ALLBINARY_LOGIC_IO_BUFFEREDWRITERUTIL_H
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
@class BufferedWriterUtil;
@class LogUtil;
@class AbFile;
@class AbFileNativeUtil;
@class AbPathData;
@class StringMaker;
@class CommonLabels;
@class CommonStrings;
#include "java/io/BufferedWriter.h"
#include "java/io/FileWriter.h"
#if __has_include("org/allbinary/logic/communication/log/LogUtil.h")
#include "org/allbinary/logic/communication/log/LogUtil.h"
#endif
#if __has_include("org/allbinary/string/CommonLabels.h")
#include "org/allbinary/string/CommonLabels.h"
#endif
#if __has_include("org/allbinary/string/CommonStrings.h")
#include "org/allbinary/string/CommonStrings.h"
#endif

@interface BufferedWriterUtil : ABObject {
@public
    LogUtil* logUtil;
    CommonStrings* commonStrings;
    CommonLabels* commonLabels;
    const char* REMOVING_OLD;
}
- (instancetype) init;
- (void) initFields;
+ (BufferedWriterUtil*) getInstance;
- (void) overwrite:(const char*)path :(const char*)data;
- (void) overwrite_2:(AbFile*)abFile :(const char*)data;
- (void) write:(AbFile*)abFile :(const char*)data;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void BufferedWriterUtil_staticInit(void);


#endif // ORG_ALLBINARY_LOGIC_IO_BUFFEREDWRITERUTIL_H
