#ifndef ORG_ALLBINARY_LOGIC_SYSTEM_SECURITY_CRYPT_JCEHELPER_ABCRYPT_H
#define ORG_ALLBINARY_LOGIC_SYSTEM_SECURITY_CRYPT_JCEHELPER_ABCRYPT_H
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
// package org.allbinary.logic.system.security.crypt.jcehelper

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class AbCrypt;
@class TsUtil;
@class CryptInterface;
@class NullUtil;
@class PreLogUtil;
@class CommonStrings;
@class BouncyCastleProvider;
@class BaseSecretComposite;
@class KeySpecFactory;
@class SecretComposite;
#include "java/security/Security.h"
#include "java/security/spec/KeySpec.h"
#include "javax/crypto/Cipher.h"
#include "javax/crypto/SecretKey.h"
#include "javax/crypto/SecretKeyFactory.h"
#if __has_include("org/allbinary/TsUtil.h")
#include "org/allbinary/TsUtil.h"
#endif
#include "org/allbinary/init/crypt/jcehelper/CryptInterface.h"
#if __has_include("org/allbinary/logic/system/security/crypt/jcehelper/BaseSecretComposite.h")
#include "org/allbinary/logic/system/security/crypt/jcehelper/BaseSecretComposite.h"
#endif

@interface AbCrypt : ABObject <CryptInterface> {
@public
    TsUtil* tsUtil;
    BaseSecretComposite* secretComposite;
    const char* algorithm;
}
- (instancetype) init:(const char*)algorithm;
- (void) initFields;
- (void) initMethod:(const char*)keyAsString;
- (int8_t*) encrypt:(int8_t*)array;
- (int8_t*) decrypt:(int8_t*)array;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void AbCrypt_staticInit(void);


#endif // ORG_ALLBINARY_LOGIC_SYSTEM_SECURITY_CRYPT_JCEHELPER_ABCRYPT_H
