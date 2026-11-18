#ifndef ORG_ALLBINARY_ANIMATION_COMPOUND_COMPOUNDANIMATIONINTERFACE_H
#define ORG_ALLBINARY_ANIMATION_COMPOUND_COMPOUNDANIMATIONINTERFACE_H
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
@class CompoundAnimationInterface;
@class AnimationInterface;
@class IndexedAnimation;
#include "org/allbinary/animation/AnimationInterface.h"

@protocol CompoundAnimationInterface <AnimationInterface>
- (void) nextAnimation;
- (void) previousAnimation;
- (void) setAnimation:(int32_t)index;
- (IndexedAnimation*) getCurrentAnimation;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void CompoundAnimationInterface_staticInit(void);

#if __has_include("org/allbinary/animation/IndexedAnimation.h")
#include "org/allbinary/animation/IndexedAnimation.h"
#endif

#endif // ORG_ALLBINARY_ANIMATION_COMPOUND_COMPOUNDANIMATIONINTERFACE_H
