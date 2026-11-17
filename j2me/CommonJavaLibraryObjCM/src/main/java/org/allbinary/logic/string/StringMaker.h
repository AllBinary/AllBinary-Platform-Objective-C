#ifndef ORG_ALLBINARY_LOGIC_STRING_STRINGMAKER_H
#define ORG_ALLBINARY_LOGIC_STRING_STRINGMAKER_H
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
@class StringMaker;
@class JsType;
@class JsMethod;
@class JsConstructor;
// #include "jsinterop/annotations/JsType.h"
// #include "jsinterop/annotations/JsMethod.h"
// #include "jsinterop/annotations/JsConstructor.h"
#include "java/lang/System.h"
#include "java/lang/Integer.h"
#include "java/lang/Long.h"
#include "java/lang/Float.h"

@interface StringMaker : ABObject {
@public
    uint16_t* charArray;
    int32_t currentLength;
}
- (instancetype) init;
- (void) initFields;
- (StringMaker*) append:(const char*)string;
- (StringMaker*) appendchar:(uint16_t)c;
- (StringMaker*) appendCharArray:(uint16_t*)charArray :(int32_t)start :(int32_t)end;
- (StringMaker*) appendbyte:(int8_t)b;
- (StringMaker*) appendshort:(int16_t)b;
- (StringMaker*) appendint:(int32_t)i;
- (StringMaker*) appendlong:(int64_t)l;
- (StringMaker*) appendfloat:(float)f;
- (StringMaker*) appendboolean:(bool)bool_;
- (void) ensureCapacity:(int32_t)minSize;
- (int32_t) min:(int32_t)value :(int32_t)value2;
- (StringMaker*) delete:(int32_t)start :(int32_t)end;
- (int32_t) length;
- (const char*) toString;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void StringMaker_staticInit(void);


#endif // ORG_ALLBINARY_LOGIC_STRING_STRINGMAKER_H
