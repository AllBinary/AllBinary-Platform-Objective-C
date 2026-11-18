#ifndef ORG_ALLBINARY_INIT_CRYPT_JCEHELPER_CRYPTINTERFACE_H
#define ORG_ALLBINARY_INIT_CRYPT_JCEHELPER_CRYPTINTERFACE_H
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
@class CryptInterface;

@protocol CryptInterface
- (int8_t*) encrypt:(int8_t*)array;
- (int8_t*) decrypt:(int8_t*)array;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void CryptInterface_staticInit(void);


#endif // ORG_ALLBINARY_INIT_CRYPT_JCEHELPER_CRYPTINTERFACE_H
