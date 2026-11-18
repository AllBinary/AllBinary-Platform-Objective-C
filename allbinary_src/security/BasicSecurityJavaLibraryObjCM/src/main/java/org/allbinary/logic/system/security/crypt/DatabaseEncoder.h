#ifndef ORG_ALLBINARY_LOGIC_SYSTEM_SECURITY_CRYPT_DATABASEENCODER_H
#define ORG_ALLBINARY_LOGIC_SYSTEM_SECURITY_CRYPT_DATABASEENCODER_H
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
@class DatabaseEncoder;
@class NullUtil;
@class PreLogUtil;
@class StringMaker;
@class StringUtil;
@class Tokenizer;
@class CommonSeps;
@class CommonStrings;
@class BasicArrayList;
@class BasicArrayListD;
#include "java/lang/Byte.h"

@interface DatabaseEncoder : ABObject {
@public
}
- (instancetype) init;
+ (const char*) encode:(int8_t*)value;
+ (int8_t*) decode:(const char*)value;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void DatabaseEncoder_staticInit(void);


#endif // ORG_ALLBINARY_LOGIC_SYSTEM_SECURITY_CRYPT_DATABASEENCODER_H
