#ifndef ORG_ALLBINARY_ANIMATION_VECTOR_ARECTANGLEFILLEDANIMATION_H
#define ORG_ALLBINARY_ANIMATION_VECTOR_ARECTANGLEFILLEDANIMATION_H
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
@class ARectangleFilledAnimation;
@class Graphics;
@class BasicColorFactory;
@class RectangleFilledAnimation;
#include "org/allbinary/animation/vector/RectangleFilledAnimation.h"

@interface ARectangleFilledAnimation : RectangleFilledAnimation {
@public
    int32_t x;
    int32_t y;
}
- (instancetype) init;
- (void) initFields;
- (void) nextFrame;
- (void) paintXY:(Graphics*)graphics :(int32_t)unusedX :(int32_t)unusedY;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void ARectangleFilledAnimation_staticInit(void);


#endif // ORG_ALLBINARY_ANIMATION_VECTOR_ARECTANGLEFILLEDANIMATION_H
