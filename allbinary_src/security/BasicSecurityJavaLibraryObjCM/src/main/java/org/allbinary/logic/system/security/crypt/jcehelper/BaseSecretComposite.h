#ifndef ORG_ALLBINARY_LOGIC_SYSTEM_SECURITY_CRYPT_JCEHELPER_BASESECRETCOMPOSITE_H
#define ORG_ALLBINARY_LOGIC_SYSTEM_SECURITY_CRYPT_JCEHELPER_BASESECRETCOMPOSITE_H
/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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
@class BaseSecretComposite;
@class NullUtil;

@interface BaseSecretComposite : ABObject {
@public
}
- (instancetype) init;
- (int8_t*) encrypt:(int8_t*)array;
- (int8_t*) decrypt:(int8_t*)array;
@end

extern BaseSecretComposite* BaseSecretComposite_NULL_SECRET_COMPOSITE;
// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void BaseSecretComposite_staticInit(void);


#endif // ORG_ALLBINARY_LOGIC_SYSTEM_SECURITY_CRYPT_JCEHELPER_BASESECRETCOMPOSITE_H
