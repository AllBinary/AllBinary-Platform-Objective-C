#ifndef ORG_ALLBINARY_ANIMATION_VECTORANIMATIONINTERFACEFACTORY_H
#define ORG_ALLBINARY_ANIMATION_VECTORANIMATIONINTERFACEFACTORY_H
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
@class VectorAnimationInterfaceFactory;
@class BasicColor;
@class BasicColorFactory;
@class ScaleProperties;
@class AnimationInterfaceFactoryInterface;
@class AnimationBehaviorFactory;
@class VectorAnimation;
@class Animation;
#if __has_include("org/allbinary/graphics/color/BasicColor.h")
#include "org/allbinary/graphics/color/BasicColor.h"
#endif
#include "org/allbinary/animation/AnimationInterfaceFactoryInterface.h"
#if __has_include("org/allbinary/animation/AnimationBehaviorFactory.h")
#include "org/allbinary/animation/AnimationBehaviorFactory.h"
#endif

@interface VectorAnimationInterfaceFactory : ABObject <AnimationInterfaceFactoryInterface> {
@public
    int32_t*** currentPoints;
    BasicColor* basicColor;
    AnimationBehaviorFactory* animationBehaviorFactory;
}
- (instancetype) init:(int32_t***)currentPoints :(BasicColor*)basicColor :(AnimationBehaviorFactory*)animationBehaviorFactory;
- (void) initFields;
- (Animation*) getInstance:(int32_t)instanceId;
- (void) setBasicColorP:(BasicColor*)basicColor;
- (BasicColor*) getBasicColorP;
- (void) setInitialScale:(ScaleProperties*)scaleProperties;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void VectorAnimationInterfaceFactory_staticInit(void);

#if __has_include("org/allbinary/graphics/color/BasicColor.h")
#include "org/allbinary/graphics/color/BasicColor.h"
#endif

#endif // ORG_ALLBINARY_ANIMATION_VECTORANIMATIONINTERFACEFACTORY_H
