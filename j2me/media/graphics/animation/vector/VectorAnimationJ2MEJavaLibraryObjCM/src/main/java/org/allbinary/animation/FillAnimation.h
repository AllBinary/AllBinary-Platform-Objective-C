#ifndef ORG_ALLBINARY_ANIMATION_FILLANIMATION_H
#define ORG_ALLBINARY_ANIMATION_FILLANIMATION_H
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
@class FillAnimation;
@class Graphics;
@class BasicColor;
@class IndexedAnimation;
@class AnimationBehavior;
#include "org/allbinary/animation/IndexedAnimation.h"

@interface FillAnimation : IndexedAnimation {
@public
    int32_t* pixelBuffer;
    int32_t width;
    int32_t height;
}
- (instancetype) init:(int32_t*)pixelBuffer :(int32_t)width :(int32_t)height :(AnimationBehavior*)animationBehavior;
- (void) initFields;
- (void) setBasicColorP:(BasicColor*)basicColor;
- (void) changeBasicColor:(BasicColor*)basicColor;
- (void) setAlpha:(int32_t)alpha;
- (void) setScale:(float)scaleX :(float)scaleY;
- (void) setMaxScale:(float)maxScaleX :(float)maxScaleY;
- (void) updateModifiers;
- (void) paint:(Graphics*)g;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void FillAnimation_staticInit(void);


#endif // ORG_ALLBINARY_ANIMATION_FILLANIMATION_H
