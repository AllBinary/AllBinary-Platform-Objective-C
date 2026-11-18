#ifndef ORG_ALLBINARY_GRAPHICS_LINE_H
#define ORG_ALLBINARY_GRAPHICS_LINE_H
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
@class Line;
@class GPoint;
@class PointFactory;
#if __has_include("org/allbinary/graphics/GPoint.h")
#include "org/allbinary/graphics/GPoint.h"
#endif

@interface Line : ABObject {
@public
    GPoint* p1;
    GPoint* p2;
    double deltaX;
    double deltaY;
}
- (instancetype) init:(GPoint*)p1 :(GPoint*)p2;
- (void) initFields;
- (double) getGradient;
- (void) update;
- (double) getDeltaX;
- (double) getDeltaY;
- (GPoint*) getP1;
- (GPoint*) getP2;
- (void) setP1:(GPoint*)p1;
- (void) setP2:(GPoint*)p2;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void Line_staticInit(void);


#endif // ORG_ALLBINARY_GRAPHICS_LINE_H
