#ifndef ORG_ALLBINARY_BUSINESS_INIT_LICENSEINITINFOUTIL_H
#define ORG_ALLBINARY_BUSINESS_INIT_LICENSEINITINFOUTIL_H
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
// package org.allbinary.business.init

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class LicenseInitInfoUtil;
@class TsUtil;
@class PATH_GLOBALS;
@class URLGLOBALS;
@class LogUtil;
@class AbDataInputStream;
@class AbDataOutputStream;
@class AbFileInputStream;
@class DataOutputStreamFactory;
@class FileStreamFactory;
@class StringMaker;
@class StringUtil;
@class DatabaseEncoder;
@class WeakCrypt;
@class CommonLabels;
@class LicenseInitInfo;
#if __has_include("org/allbinary/logic/communication/log/LogUtil.h")
#include "org/allbinary/logic/communication/log/LogUtil.h"
#endif
#if __has_include("org/allbinary/logic/string/StringUtil.h")
#include "org/allbinary/logic/string/StringUtil.h"
#endif

@interface LicenseInitInfoUtil : ABObject {
@public
    LogUtil* logUtil;
    StringUtil* stringUtil;
    const char* INITFILENAME;
    const char* ABOUT;
    const char* PRIVACY_POLICY;
    const char* filePath;
}
- (instancetype) init;
- (void) initFields;
+ (LicenseInitInfoUtil*) getInstance;
- (void) setFilePath:(const char*)filePath;
- (void) write:(LicenseInitInfo*)initData;
- (LicenseInitInfo*) read;
- (LicenseInitInfo*) readAgain:(int32_t)initializeCounter;
- (const char*) getFilePath;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void LicenseInitInfoUtil_staticInit(void);


#endif // ORG_ALLBINARY_BUSINESS_INIT_LICENSEINITINFOUTIL_H
