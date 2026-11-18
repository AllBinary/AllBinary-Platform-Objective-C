#ifndef ORG_ALLBINARY_ANIMATION_VECTOR_RECTANGLEADJUSTEDANIMATION_H
#define ORG_ALLBINARY_ANIMATION_VECTOR_RECTANGLEADJUSTEDANIMATION_H
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
// package org.allbinary.animation.vector

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class RectangleAdjustedAnimation;
@class Graphics;
@class Animation;
@class BasicColor;
@class ColorCompositeInterface;
#include "org/allbinary/animation/Animation.h"
#include "org/allbinary/graphics/color/ColorCompositeInterface.h"

@interface RectangleAdjustedAnimation : Animation <ColorCompositeInterface> {
@public
    int32_t width;
    int32_t height;
    int32_t offsetX;
    int32_t offsetY;
}
- (instancetype) init:(int32_t)width :(int32_t)height :(int32_t)offsetX :(int32_t)offsetY :(BasicColor*)basicColor;
- (void) initFields;
- (void) nextFrame;
- (void) paintXY:(Graphics*)graphics :(int32_t)x :(int32_t)y;
- (void) setWidth:(int32_t)width;
- (void) setHeight:(int32_t)height;
- (void) setOffsetX:(int32_t)offsetX;
- (void) setOffsetY:(int32_t)offsetY;
- (BasicColor*) getBasicColorP;
- (void) setBasicColorP:(BasicColor*)basicColor;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void RectangleAdjustedAnimation_staticInit(void);

#if __has_include("org/allbinary/graphics/color/BasicColor.h")
#include "org/allbinary/graphics/color/BasicColor.h"
#endif

#endif // ORG_ALLBINARY_ANIMATION_VECTOR_RECTANGLEADJUSTEDANIMATION_H
