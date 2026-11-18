#ifndef ORG_ALLBINARY_GRAPHICS_CUSTOMGPOINT_H
#define ORG_ALLBINARY_GRAPHICS_CUSTOMGPOINT_H
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
// package org.allbinary.graphics

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class CustomGPoint;
@class GPoint;
#include "org/allbinary/graphics/GPoint.h"

@interface CustomGPoint : GPoint {
@public
    int32_t cx;
    int32_t cy;
    int32_t cz;
}
- (instancetype) init:(int32_t)x :(int32_t)y :(int32_t)z;
- (void) initFields;
+ (CustomGPoint*) getInstance:(GPoint*)point;
+ (CustomGPoint*) getInstance3:(int32_t)x :(int32_t)y;
- (void) setX:(int32_t)x;
- (int32_t) getX;
- (void) setY:(int32_t)y;
- (int32_t) getY;
- (void) setZ:(int32_t)z;
- (int32_t) getZ;
@end

extern CustomGPoint* CustomGPoint_NULL_CUSTOM_POINT;
// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void CustomGPoint_staticInit(void);


#endif // ORG_ALLBINARY_GRAPHICS_CUSTOMGPOINT_H
