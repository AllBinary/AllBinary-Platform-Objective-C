#ifndef ORG_ALLBINARY_GRAPHICS_RECTANGLE_H
#define ORG_ALLBINARY_GRAPHICS_RECTANGLE_H
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
@class Rectangle;
@class StringMaker;
@class CommonLabels;
@class CommonSeps;
@class GPoint;
#if __has_include("org/allbinary/graphics/GPoint.h")
#include "org/allbinary/graphics/GPoint.h"
#endif

@interface Rectangle : ABObject {
@public
    GPoint* point;
    int32_t width;
    int32_t height;
}
- (instancetype) init:(GPoint*)point :(int32_t)width :(int32_t)height;
- (void) initFields;
- (GPoint*) getPoint;
- (void) setPoint:(GPoint*)point;
- (int32_t) getMaxX;
- (int32_t) getMaxY;
- (int32_t) getWidth;
- (void) setWidth:(int32_t)width;
- (int32_t) getHeight;
- (void) setHeight:(int32_t)height;
- (const char*) toString;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void Rectangle_staticInit(void);


#endif // ORG_ALLBINARY_GRAPHICS_RECTANGLE_H
