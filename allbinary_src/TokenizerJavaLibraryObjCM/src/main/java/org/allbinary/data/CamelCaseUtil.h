#ifndef ORG_ALLBINARY_DATA_CAMELCASEUTIL_H
#define ORG_ALLBINARY_DATA_CAMELCASEUTIL_H
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
// package org.allbinary.data

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class CamelCaseUtil;
@class StringMaker;
@class StringUtil;
@class StringValidationUtil;
@class Tokenizer;
@class CommonSeps;
@class BasicArrayList;
@class BasicArrayListD;
// #include "org/allbinary/logic/string/StringUtil.h"
#if __has_include("org/allbinary/string/CommonSeps.h")
#include "org/allbinary/string/CommonSeps.h"
#endif
#include "java/lang/Character.h"

@interface CamelCaseUtil : ABObject {
@public
    CommonSeps* commonSeps;
}
- (instancetype) init;
- (void) initFields;
+ (CamelCaseUtil*) getInstance;
- (const char*) getAsCamelCase:(const char*)string :(StringMaker*)stringBuilder;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void CamelCaseUtil_staticInit(void);


#endif // ORG_ALLBINARY_DATA_CAMELCASEUTIL_H
