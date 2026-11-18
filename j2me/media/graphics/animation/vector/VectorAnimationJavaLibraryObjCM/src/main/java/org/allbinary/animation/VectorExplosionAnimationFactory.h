#ifndef ORG_ALLBINARY_ANIMATION_VECTOREXPLOSIONANIMATIONFACTORY_H
#define ORG_ALLBINARY_ANIMATION_VECTOREXPLOSIONANIMATIONFACTORY_H
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
@class VectorExplosionAnimationFactory;
@class BasicColor;
@class BasicColorFactory;
@class ProceduralAnimationInterfaceFactoryInterface;
@class VectorExplosionGenerator;
@class AnimationBehaviorFactory;
@class VectorAnimationInterface;
@class VectorRotationAnimation;
@class Animation;
#if __has_include("org/allbinary/graphics/color/BasicColor.h")
#include "org/allbinary/graphics/color/BasicColor.h"
#endif
#include "org/allbinary/animation/ProceduralAnimationInterfaceFactoryInterface.h"
#if __has_include("org/allbinary/animation/VectorExplosionGenerator.h")
#include "org/allbinary/animation/VectorExplosionGenerator.h"
#endif
#if __has_include("org/allbinary/animation/AnimationBehaviorFactory.h")
#include "org/allbinary/animation/AnimationBehaviorFactory.h"
#endif

@interface VectorExplosionAnimationFactory : ABObject <ProceduralAnimationInterfaceFactoryInterface> {
@public
    VectorExplosionGenerator* vectorExplosionGenerator;
    BasicColor* basicColor;
    AnimationBehaviorFactory* animationBehaviorFactory;
}
- (instancetype) init:(BasicColor*)basicColor :(AnimationBehaviorFactory*)animationBehaviorFactory;
- (void) initFields;
- (Animation*) getInstanceAnimation:(Animation*)animationInterface;
- (void) setBasicColorP:(BasicColor*)basicColor;
- (BasicColor*) getBasicColorP;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void VectorExplosionAnimationFactory_staticInit(void);


#endif // ORG_ALLBINARY_ANIMATION_VECTOREXPLOSIONANIMATIONFACTORY_H
