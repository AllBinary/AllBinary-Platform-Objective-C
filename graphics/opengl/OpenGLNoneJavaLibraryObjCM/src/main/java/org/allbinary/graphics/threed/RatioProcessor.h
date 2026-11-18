#ifndef ORG_ALLBINARY_GRAPHICS_THREED_RATIOPROCESSOR_H
#define ORG_ALLBINARY_GRAPHICS_THREED_RATIOPROCESSOR_H
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
// package org.allbinary.graphics.threed

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class RatioProcessor;

@interface RatioProcessor : ABObject {
@public
}
- (instancetype) init;
- (void) setCustom:(int32_t)width :(int32_t)height :(float)ratio;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void RatioProcessor_staticInit(void);


#endif // ORG_ALLBINARY_GRAPHICS_THREED_RATIOPROCESSOR_H
