#ifndef ORG_ALLBINARY_ANIMATION_INDEPENDENTVECTOREXPLOSIONROTATIONANIMATIONFACTORY_H
#define ORG_ALLBINARY_ANIMATION_INDEPENDENTVECTOREXPLOSIONROTATIONANIMATIONFACTORY_H
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
@class IndependentVectorExplosionRotationAnimationFactory;
@class BasicColor;
@class NullUtil;
@class VectorInfo;
@class ProceduralAnimationInterfaceFactoryInterface;
@class VectorAnimationFactoryInterface;
@class VectorRotationGenerator;
@class VectorExplosionGenerator;
@class IndexedAnimation;
@class Animation;
#if __has_include("org/allbinary/graphics/color/BasicColor.h")
#include "org/allbinary/graphics/color/BasicColor.h"
#endif
#if __has_include("org/allbinary/vector/VectorInfo.h")
#include "org/allbinary/vector/VectorInfo.h"
#endif
#include "org/allbinary/animation/ProceduralAnimationInterfaceFactoryInterface.h"
#if __has_include("org/allbinary/animation/VectorAnimationFactoryInterface.h")
#include "org/allbinary/animation/VectorAnimationFactoryInterface.h"
#endif
#if __has_include("org/allbinary/animation/VectorExplosionGenerator.h")
#include "org/allbinary/animation/VectorExplosionGenerator.h"
#endif

@interface IndependentVectorExplosionRotationAnimationFactory : ABObject <ProceduralAnimationInterfaceFactoryInterface> {
@public
    int32_t*** framePoints;
    VectorInfo* vectorInfo;
    BasicColor* basicColor;
    VectorAnimationFactoryInterface* vectorAnimationFactoryInterface;
    VectorExplosionGenerator* vectorExplosionGenerator;
}
- (instancetype) init:(VectorInfo*)vectorInfo :(BasicColor*)basicColor :(VectorAnimationFactoryInterface*)vectorAnimationFactoryInterface;
- (void) initFields;
- (void) init_;
- (Animation*) getInstanceAnimation:(Animation*)animationInterface;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void IndependentVectorExplosionRotationAnimationFactory_staticInit(void);


#endif // ORG_ALLBINARY_ANIMATION_INDEPENDENTVECTOREXPLOSIONROTATIONANIMATIONFACTORY_H
