#ifndef ORG_ALLBINARY_INIT_CRYPT_JCEHELPER_BASICCRYPTUTIL_H
#define ORG_ALLBINARY_INIT_CRYPT_JCEHELPER_BASICCRYPTUTIL_H
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
// package org.allbinary.init.crypt.jcehelper

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class BasicCryptUtil;
@class TsUtil;
@class LogUtil;
@class CryptInterface;
#include "java/io/ByteArrayInputStream.h"
#include "java/io/ByteArrayOutputStream.h"
#include "java/io/InputStream.h"
#if __has_include("org/allbinary/TsUtil.h")
#include "org/allbinary/TsUtil.h"
#endif
#if __has_include("org/allbinary/logic/communication/log/LogUtil.h")
#include "org/allbinary/logic/communication/log/LogUtil.h"
#endif

@interface BasicCryptUtil : ABObject {
@public
    LogUtil* logUtil;
    TsUtil* tsUtil;
    const char* XML_START;
}
- (instancetype) init;
- (void) initFields;
+ (BasicCryptUtil*) getInstance;
- (InputStream*) getDecryptedInputStream:(InputStream*)inputStream :(CryptInterface*)cryptInterface;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void BasicCryptUtil_staticInit(void);


#endif // ORG_ALLBINARY_INIT_CRYPT_JCEHELPER_BASICCRYPTUTIL_H
