#ifndef ORG_ALLBINARY_LOGIC_STRING_STRINGVALIDATIONUTIL_H
#define ORG_ALLBINARY_LOGIC_STRING_STRINGVALIDATIONUTIL_H
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
// package org.allbinary.logic.string

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class StringValidationUtil;
@class TsUtil;
@class StringUtil;
#if __has_include("org/allbinary/TsUtil.h")
#include "org/allbinary/TsUtil.h"
#endif
#if __has_include("org/allbinary/logic/string/StringUtil.h")
#include "org/allbinary/logic/string/StringUtil.h"
#endif

@interface StringValidationUtil : ABObject {
@public
    StringUtil* stringUtil;
    TsUtil* tsUtil;
}
- (instancetype) init;
- (void) initFields;
+ (StringValidationUtil*) getInstance;
- (bool) containsSpaces:(const char*)value;
- (bool) isNumber:(const char*)value;
- (bool) isNumberFromChar:(uint16_t)digit;
- (bool) isValidRequired:(const char*)value :(int32_t)min :(int32_t)max;
- (bool) isValidRequiredNumber:(const char*)value :(int32_t)min :(int32_t)max;
- (bool) isValidNotRequired:(const char*)value :(int32_t)min :(int32_t)max;
- (bool) isValidNotRequiredNumber:(const char*)value :(int32_t)min :(int32_t)max;
- (bool) isEmpty:(const char*)string;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void StringValidationUtil_staticInit(void);


#endif // ORG_ALLBINARY_LOGIC_STRING_STRINGVALIDATIONUTIL_H
