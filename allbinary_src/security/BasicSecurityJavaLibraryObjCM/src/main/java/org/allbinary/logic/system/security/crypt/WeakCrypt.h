#ifndef ORG_ALLBINARY_LOGIC_SYSTEM_SECURITY_CRYPT_WEAKCRYPT_H
#define ORG_ALLBINARY_LOGIC_SYSTEM_SECURITY_CRYPT_WEAKCRYPT_H
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
// package org.allbinary.logic.system.security.crypt

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class WeakCrypt;
@class TsUtil;
@class PreLogUtil;
@class StringUtil;
@class AbCrypt;
@class KeySpecFactory;
@class CommonStrings;
@class DatabaseEncoder;
#if __has_include("org/allbinary/TsUtil.h")
#include "org/allbinary/TsUtil.h"
#endif
#if __has_include("org/allbinary/logic/system/security/crypt/jcehelper/AbCrypt.h")
#include "org/allbinary/logic/system/security/crypt/jcehelper/AbCrypt.h"
#endif

@interface WeakCrypt : ABObject {
@public
    TsUtil* tsUtil;
    AbCrypt* abCrypt;
}
- (instancetype) init:(int32_t)key;
- (void) initFields;
- (const char*) encrypt:(const char*)value;
- (const char*) decrypt:(const char*)value;
@end

extern int32_t WeakCrypt_KEYMAX;
// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void WeakCrypt_staticInit(void);


#endif // ORG_ALLBINARY_LOGIC_SYSTEM_SECURITY_CRYPT_WEAKCRYPT_H
