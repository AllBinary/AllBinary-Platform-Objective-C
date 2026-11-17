#ifndef ORG_ALLBINARY_THREAD_NULLRUNNABLE_H
#define ORG_ALLBINARY_THREAD_NULLRUNNABLE_H
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
// package org.allbinary.thread

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class NullRunnable;
@class JsType;
@class JsMethod;
@class JsConstructor;
@class ARunnable;
// #include "jsinterop/annotations/JsType.h"
// #include "jsinterop/annotations/JsMethod.h"
// #include "jsinterop/annotations/JsConstructor.h"
#include "org/allbinary/thread/ARunnable.h"

@interface NullRunnable : ARunnable {
@public
}
- (instancetype) init;
+ (NullRunnable*) getInstance;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void NullRunnable_staticInit(void);


#endif // ORG_ALLBINARY_THREAD_NULLRUNNABLE_H
