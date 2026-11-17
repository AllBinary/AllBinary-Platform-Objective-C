#ifndef ORG_ALLBINARY_LOGIC_ABSYSTEMWRAPPER_H
#define ORG_ALLBINARY_LOGIC_ABSYSTEMWRAPPER_H
/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2026 AllBinary 
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
// package org.allbinary.logic

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class ABSystemWrapper;
@class JsType;
// #include "jsinterop/annotations/JsType.h"
#include "java/lang/System.h"

@interface ABSystemWrapper : ABObject {
@public
}
- (instancetype) init;
+ (ABSystemWrapper*) getInstance;
- (void) arraycopy:(id)src :(int32_t)srcPos :(id)dest :(int32_t)destPos :(int32_t)length;
- (int64_t) currentTimeMillis;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void ABSystemWrapper_staticInit(void);


#endif // ORG_ALLBINARY_LOGIC_ABSYSTEMWRAPPER_H
