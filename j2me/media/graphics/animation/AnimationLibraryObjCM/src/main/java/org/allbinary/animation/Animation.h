#ifndef ORG_ALLBINARY_ANIMATION_ANIMATION_H
#define ORG_ALLBINARY_ANIMATION_ANIMATION_H
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
// package org.allbinary.animation

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class Animation;
@class GL;
@class Graphics;
@class BasicColor;
@class BasicColorFactory;
@class BasicColorSetUtil;
@class OpenGLSurfaceChangedInterface;
@class AnimationInterface;
#if __has_include("org/allbinary/graphics/color/BasicColor.h")
#include "org/allbinary/graphics/color/BasicColor.h"
#endif
#if __has_include("org/allbinary/graphics/color/BasicColorSetUtil.h")
#include "org/allbinary/graphics/color/BasicColorSetUtil.h"
#endif
#include "org/allbinary/image/opengles/OpenGLSurfaceChangedInterface.h"
#include "org/allbinary/animation/AnimationInterface.h"

@interface Animation : ABObject <AnimationInterface, OpenGLSurfaceChangedInterface> {
@public
    BasicColorSetUtil* basicSetColorUtil;
    BasicColor* basicColor;
    int32_t colorP;
    BasicColor* changeBasicColorP;
    int32_t changeColorP;
    int32_t alphaP;
}
- (instancetype) init;
- (void) initFields;
- (void) setAlpha:(int32_t)alpha;
- (void) nextFrame;
- (void) paintXY:(Graphics*)graphics :(int32_t)x :(int32_t)y;
- (void) paintThreedXYZ:(Graphics*)graphics :(int32_t)x :(int32_t)y :(int32_t)z;
- (bool) isThreed;
- (BasicColor*) getBasicColorP;
- (void) setBasicColorP:(BasicColor*)basicColor;
- (void) setBackgroundBasicColorP:(BasicColor*)basicColor;
- (BasicColor*) getChangeBasicColor;
- (void) changeBasicColor:(BasicColor*)basicColor;
- (int32_t) getChangeColor;
- (int32_t) getColor;
- (void) setScale:(float)scaleX :(float)scaleY;
- (void) setMaxScale:(float)maxScaleX :(float)maxScaleY;
- (void) set:(GL*)gl;
- (void) setDx:(int32_t)dx;
- (int32_t) getDx;
- (void) setDy:(int32_t)dy;
- (int32_t) getDy;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void Animation_staticInit(void);

#if __has_include("org/allbinary/graphics/color/BasicColor.h")
#include "org/allbinary/graphics/color/BasicColor.h"
#endif

#endif // ORG_ALLBINARY_ANIMATION_ANIMATION_H
