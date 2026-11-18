#ifndef ORG_ALLBINARY_ANIMATION_COMPOUND_SIMULTANEOUSCOMPOUNDINDEXANIMATION_H
#define ORG_ALLBINARY_ANIMATION_COMPOUND_SIMULTANEOUSCOMPOUNDINDEXANIMATION_H
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
@class SimultaneousCompoundIndexAnimation;
@class GL;
@class Graphics;
@class AnimationBehavior;
@class IndexedAnimation;
@class PrimitiveIntUtil;
#include "org/allbinary/animation/IndexedAnimation.h"

@interface SimultaneousCompoundIndexAnimation : IndexedAnimation {
@public
    IndexedAnimation** animationInterfaceArray;
}
- (instancetype) init:(IndexedAnimation**)animationInterfaceArray :(AnimationBehavior*)animationBehavior;
- (void) initFields;
- (void) setFrame:(int32_t)frameIndex;
- (int32_t) getFrame;
- (int32_t) getAnimationSize;
- (int32_t) getSize;
- (void) previousFrame;
- (void) nextFrame;
- (void) setSequence:(int32_t*)sequence;
- (int32_t*) getSequence;
- (void) paintXY:(Graphics*)graphics :(int32_t)x :(int32_t)y;
- (void) paintThreedXYZ:(Graphics*)graphics :(int32_t)x :(int32_t)y :(int32_t)z;
- (void) set:(GL*)gl;
- (IndexedAnimation**) getAnimationInterfaceArray;
- (void) setAnimationInterfaceArray:(IndexedAnimation**)animationInterfaceArray;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void SimultaneousCompoundIndexAnimation_staticInit(void);


#endif // ORG_ALLBINARY_ANIMATION_COMPOUND_SIMULTANEOUSCOMPOUNDINDEXANIMATION_H
