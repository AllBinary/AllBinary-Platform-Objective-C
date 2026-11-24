#ifndef ORG_ALLBINARY_ANIMATION_VECTOR_LINEANIMATION_H
#define ORG_ALLBINARY_ANIMATION_VECTOR_LINEANIMATION_H
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
@class LineAnimation;
@class Graphics;
@class Animation;
@class BasicColor;
@class ColorCompositeInterface;
@class PositionInterface;
@class NullUtil;
#include "org/allbinary/animation/Animation.h"
#include "org/allbinary/graphics/color/ColorCompositeInterface.h"
#include "org/allbinary/layer/PositionInterface.h"

@interface LineAnimation : Animation <ColorCompositeInterface, PositionInterface> {
@public
    int32_t** newLine;
    int32_t** tempLine;
    int32_t** line;
}
- (instancetype) init:(BasicColor*)basicColor;
- (void) initFields;
- (void) initMethod:(int32_t)x :(int32_t)y;
- (void) setPosition:(int32_t)x :(int32_t)y :(int32_t)z;
- (void) paintXY:(Graphics*)graphics :(int32_t)x :(int32_t)y;
- (void) nextFrame;
- (BasicColor*) getBasicColorP;
- (void) setBasicColorP:(BasicColor*)basicColor;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void LineAnimation_staticInit(void);

#if __has_include("org/allbinary/graphics/color/BasicColor.h")
#include "org/allbinary/graphics/color/BasicColor.h"
#endif

#endif // ORG_ALLBINARY_ANIMATION_VECTOR_LINEANIMATION_H
