#ifndef ORG_ALLBINARY_ANIMATION_VECTOREXPLOSIONGENERATOR_H
#define ORG_ALLBINARY_ANIMATION_VECTOREXPLOSIONGENERATOR_H
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
@class VectorExplosionGenerator;
@class GPoint;
@class PointFactory;
@class RandomRotationFactory;
@class RandomTranslation;
@class BasicArrayList;
@class BasicArrayListD;
@class BasicArrayListS;
@class VectorExplosionType;
@class VectorAnimationUtil;
#if __has_include("org/allbinary/graphics/pipeline/RandomRotationFactory.h")
#include "org/allbinary/graphics/pipeline/RandomRotationFactory.h"
#endif
#if __has_include("org/allbinary/animation/VectorExplosionType.h")
#include "org/allbinary/animation/VectorExplosionType.h"
#endif
#if __has_include("org/allbinary/animation/VectorAnimationUtil.h")
#include "org/allbinary/animation/VectorAnimationUtil.h"
#endif

@interface VectorExplosionGenerator : ABObject {
@public
    VectorExplosionType* RANDOM;
    VectorExplosionType* ROTATION;
    VectorAnimationUtil* vectorAnimationUtil;
    RandomRotationFactory* randomRotationFactory;
}
- (instancetype) init;
- (void) initFields;
+ (VectorExplosionGenerator*) getInstance;
- (BasicArrayList*) createList:(BasicArrayList*)list :(int32_t)howMuch :(VectorExplosionType*)type;
- (int32_t***) getInstance:(int32_t**)points :(int32_t)howMuch :(VectorExplosionType*)type;
- (BasicArrayList*) getInstanceStartFrame:(int32_t**)points :(int32_t)howMuch :(VectorExplosionType*)type :(bool)startFrame;
- (BasicArrayList*) createListFromPoints:(BasicArrayList*)tempBasicArrayList :(int32_t**)points :(int32_t)howMuch :(VectorExplosionType*)type;
- (BasicArrayList*) createPointsBasicArrayList:(int32_t**)points;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void VectorExplosionGenerator_staticInit(void);

#if __has_include("org/allbinary/util/BasicArrayList.h")
#include "org/allbinary/util/BasicArrayList.h"
#endif

#endif // ORG_ALLBINARY_ANIMATION_VECTOREXPLOSIONGENERATOR_H
