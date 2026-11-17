#ifndef ORG_ALLBINARY_STRING_COMMONSEPS_H
#define ORG_ALLBINARY_STRING_COMMONSEPS_H
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
// package org.allbinary.string

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class CommonSeps;
@class JsType;
@class StringMaker;
@class JsMethod;
@class JsProperty;
// #include "jsinterop/annotations/JsType.h"
// #include "jsinterop/annotations/JsMethod.h"
// #include "jsinterop/annotations/JsProperty.h"

@interface CommonSeps : ABObject {
@public
    const char* NEW_LINE;
    const char* SEMICOLON;
    const char* EQUALS;
    const char* SPACE;
    const char* COMMA;
    const char* COLON;
    const char* PERIOD;
    const char* UNDERSCORE;
    const char* COLON_SEP;
    const char* COMMA_SEP;
    const char* PARENTHESIS_OPEN;
    const char* PARENTHESIS_CLOSE;
    const char* BRACE_OPEN;
    const char* BRACE_CLOSE;
    const char* BRACKET_OPEN;
    const char* BRACKET_CLOSE;
    const char* DASH;
    const char* PERCENT;
    const char* AMPERSAND;
    const char* FORWARD_SLASH;
    const char* BACK_SLASH;
    const char* QUESTION;
    const char* QUOTE;
    const char* QUOTE_END;
    const char* COMMENT;
    const char* INDENT;
}
- (instancetype) init;
- (void) initFields;
+ (CommonSeps*) getInstance;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void CommonSeps_staticInit(void);


#endif // ORG_ALLBINARY_STRING_COMMONSEPS_H
