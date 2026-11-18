#ifndef ORG_ALLBINARY_GRAPHICS_DISPLAYABLE_SCREEN_DISPLAYPOINTSCALAR_H
#define ORG_ALLBINARY_GRAPHICS_DISPLAYABLE_SCREEN_DISPLAYPOINTSCALAR_H
/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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
// package org.allbinary.graphics.displayable.screen

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class DisplayPointScalar;
@class GPoint;

@interface DisplayPointScalar : ABObject {
@public
}
- (instancetype) init;
+ (DisplayPointScalar*) getInstance;
- (int32_t) processX:(int32_t)value;
- (int32_t) processY:(int32_t)value;
- (GPoint*) process:(GPoint*)point;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void DisplayPointScalar_staticInit(void);

#if __has_include("org/allbinary/graphics/GPoint.h")
#include "org/allbinary/graphics/GPoint.h"
#endif

#endif // ORG_ALLBINARY_GRAPHICS_DISPLAYABLE_SCREEN_DISPLAYPOINTSCALAR_H
