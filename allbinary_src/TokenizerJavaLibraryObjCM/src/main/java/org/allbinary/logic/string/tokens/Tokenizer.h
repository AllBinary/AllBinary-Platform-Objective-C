#ifndef ORG_ALLBINARY_LOGIC_STRING_TOKENS_TOKENIZER_H
#define ORG_ALLBINARY_LOGIC_STRING_TOKENS_TOKENIZER_H
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
// package org.allbinary.logic.string.tokens

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class Tokenizer;
@class TsUtil;
@class StdUtil;
@class StringUtil;
@class ABHashtable;
@class BasicArrayList;
@class BasicArrayListD;

@interface Tokenizer : ABObject {
@public
    const char* sep;
    const char* endSep;
}
- (instancetype) init:(const char*)sep;
- (void) initFields;
- (void) setSep:(const char*)sep;
- (void) setEndSep:(const char*)endSep;
- (BasicArrayList*) getInsideSep:(const char*)string;
- (BasicArrayList*) getTokensFromString:(const char*)string :(BasicArrayList*)tokenVector;
- (ABHashtable*) getTokens:(BasicArrayList*)stringVector;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void Tokenizer_staticInit(void);

#if __has_include("org/allbinary/util/ABHashtable.h")
#include "org/allbinary/util/ABHashtable.h"
#endif
#if __has_include("org/allbinary/util/BasicArrayList.h")
#include "org/allbinary/util/BasicArrayList.h"
#endif

#endif // ORG_ALLBINARY_LOGIC_STRING_TOKENS_TOKENIZER_H
