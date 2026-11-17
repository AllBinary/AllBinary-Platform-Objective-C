#ifndef ORG_ALLBINARY_GAME_RAND_MYRANDOMFACTORY_H
#define ORG_ALLBINARY_GAME_RAND_MYRANDOMFACTORY_H
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
// package org.allbinary.game.rand

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class MyRandomFactory;
@class JsType;
@class JsMethod;
@class JsConstructor;
@class MathUtil;
@class StringMaker;
@class CommonSeps;
#include "java/util/Random.h"
// #include "jsinterop/annotations/JsType.h"
// #include "jsinterop/annotations/JsMethod.h"
// #include "jsinterop/annotations/JsConstructor.h"
#if __has_include("org/allbinary/logic/math/MathUtil.h")
#include "org/allbinary/logic/math/MathUtil.h"
#endif
#include "java/lang/System.h"
#include "java/lang/Integer.h"

//Do not use in client code for money related things.
@interface MyRandomFactory : ABObject {
@public
    MathUtil* mathUtil;
    Random* rand;
}
- (instancetype) init;
- (void) initFields;
+ (MyRandomFactory*) getInstance;
- (void) setSeed:(int64_t)seed;
- (int32_t) getNextInt:(int32_t)range;
- (int32_t) getAbsoluteNextInt:(int32_t)range;
- (int32_t) getAbsoluteNextIntAllowZero:(int32_t)range;
- (void) shuffle:(int32_t*)intArray;
- (void) shuffleTotal:(int32_t*)intArray :(int32_t)shuffleTotal;
- (void) shuffle2:(int32_t*)intArray :(int32_t*)intArray2;
- (void) shuffle2Total:(int32_t*)intArray :(int32_t*)intArray2 :(int32_t)shuffleTotal;
+ (void) main:(const char**)args;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void MyRandomFactory_staticInit(void);


#endif // ORG_ALLBINARY_GAME_RAND_MYRANDOMFACTORY_H
