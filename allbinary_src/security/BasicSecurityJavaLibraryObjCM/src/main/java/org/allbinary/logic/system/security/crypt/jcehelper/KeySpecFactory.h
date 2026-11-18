#ifndef ORG_ALLBINARY_LOGIC_SYSTEM_SECURITY_CRYPT_JCEHELPER_KEYSPECFACTORY_H
#define ORG_ALLBINARY_LOGIC_SYSTEM_SECURITY_CRYPT_JCEHELPER_KEYSPECFACTORY_H
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
@class KeySpecFactory;
@class TsUtil;
@class PreLogUtil;
@class CommonStrings;
#include "java/security/spec/KeySpec.h"
// #include "javax/crypto/spec/DESKeySpec.h"
// #include "javax/crypto/spec/DESedeKeySpec.h"

@interface KeySpecFactory : ABObject {
@public
    const char* DES;
    const char* DESEDE;
    const char* BLOWFISH;
}
- (instancetype) init;
- (void) initFields;
+ (KeySpecFactory*) getInstance;
- (KeySpec*) getInstance:(const char*)algorithm :(int8_t*)keyData;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void KeySpecFactory_staticInit(void);


#endif // ORG_ALLBINARY_LOGIC_SYSTEM_SECURITY_CRYPT_JCEHELPER_KEYSPECFACTORY_H
