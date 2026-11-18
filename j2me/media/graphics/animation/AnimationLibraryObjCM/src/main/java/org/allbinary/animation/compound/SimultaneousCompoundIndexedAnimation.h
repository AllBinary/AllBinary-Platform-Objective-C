#ifndef ORG_ALLBINARY_ANIMATION_COMPOUND_SIMULTANEOUSCOMPOUNDINDEXEDANIMATION_H
#define ORG_ALLBINARY_ANIMATION_COMPOUND_SIMULTANEOUSCOMPOUNDINDEXEDANIMATION_H
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
// package org.allbinary.animation.compound

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class SimultaneousCompoundIndexedAnimation;
@class Graphics;
@class Animation;
@class AnimationBehavior;
@class IndexedAnimation;
@class PrimitiveIntUtil;
#if __has_include("org/allbinary/animation/Animation.h")
#include "org/allbinary/animation/Animation.h"
#endif
#include "org/allbinary/animation/IndexedAnimation.h"

@interface SimultaneousCompoundIndexedAnimation : IndexedAnimation {
@public
    Animation** animationInterfaceArray;
}
- (instancetype) init:(Animation**)animationInterfaceArray :(AnimationBehavior*)animationBehavior;
- (void) initFields;
- (void) setFrame:(int32_t)frameIndex;
- (int32_t) getFrame;
- (int32_t) getSize;
- (void) previousFrame;
- (void) setSequence:(int32_t*)sequence;
- (int32_t*) getSequence;
- (void) nextFrame;
- (void) paintXY:(Graphics*)graphics :(int32_t)x :(int32_t)y;
- (void) paintThreedXYZ:(Graphics*)graphics :(int32_t)x :(int32_t)y :(int32_t)z;
- (Animation**) getAnimationInterfaceArray;
- (void) setAnimationInterfaceArray:(Animation**)animationInterfaceArray;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void SimultaneousCompoundIndexedAnimation_staticInit(void);


#endif // ORG_ALLBINARY_ANIMATION_COMPOUND_SIMULTANEOUSCOMPOUNDINDEXEDANIMATION_H
