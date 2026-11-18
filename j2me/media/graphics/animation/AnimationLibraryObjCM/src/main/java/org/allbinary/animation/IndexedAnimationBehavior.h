#ifndef ORG_ALLBINARY_ANIMATION_INDEXEDANIMATIONBEHAVIOR_H
#define ORG_ALLBINARY_ANIMATION_INDEXEDANIMATIONBEHAVIOR_H
/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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
@class IndexedAnimationBehavior;
@class AnimationBehavior;
#include "org/allbinary/animation/AnimationBehavior.h"

@interface IndexedAnimationBehavior : AnimationBehavior {
@public
    int64_t frameDelayTime;
    int32_t loopTotal;
    int64_t elapsedTime;
    int32_t loopIndex;
}
- (instancetype) init:(int32_t)loopTotal :(int64_t)frameDelayTime;
- (void) initFields;
- (void) reset;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void IndexedAnimationBehavior_staticInit(void);


#endif // ORG_ALLBINARY_ANIMATION_INDEXEDANIMATIONBEHAVIOR_H
