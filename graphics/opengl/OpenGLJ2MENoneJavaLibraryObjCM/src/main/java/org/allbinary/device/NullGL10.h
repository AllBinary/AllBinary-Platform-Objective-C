#ifndef ORG_ALLBINARY_DEVICE_NULLGL10_H
#define ORG_ALLBINARY_DEVICE_NULLGL10_H
/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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
// package org.allbinary.device

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class NullGL10;
@class GL10;
#include "javax/microedition/khronos/opengles/GL10.h"

@interface NullGL10 : ABObject <GL10> {
@public
}
- (instancetype) init;
@end

extern NullGL10* NullGL10_NULL_GL10;
// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void NullGL10_staticInit(void);


#endif // ORG_ALLBINARY_DEVICE_NULLGL10_H
