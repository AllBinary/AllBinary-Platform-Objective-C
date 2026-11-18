#ifndef ORG_ALLBINARY_ANIMATION_NULLINDEXEDANIMATION_H
#define ORG_ALLBINARY_ANIMATION_NULLINDEXEDANIMATION_H
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
@class NullIndexedAnimation;
@class IndexedAnimation;
@class AnimationBehavior;
#include "org/allbinary/animation/IndexedAnimation.h"

@interface NullIndexedAnimation : IndexedAnimation {
@public
}
- (instancetype) init:(AnimationBehavior*)animationBehavior;
- (int32_t) getAnimationSize;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void NullIndexedAnimation_staticInit(void);


#endif // ORG_ALLBINARY_ANIMATION_NULLINDEXEDANIMATION_H
