#ifndef ORG_ALLBINARY_ANIMATION_COMPOUND_COMPOUNDANIMATIONINTERFACEFACTORY_H
#define ORG_ALLBINARY_ANIMATION_COMPOUND_COMPOUNDANIMATIONINTERFACEFACTORY_H
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
@class CompoundAnimationInterfaceFactory;
@class Animation;
@class AnimationBehaviorFactory;
@class AnimationInterfaceFactoryInterface;
@class NullAnimationFactory;
@class ForcedLogUtil;
@class ScaleProperties;
#if __has_include("org/allbinary/animation/AnimationBehaviorFactory.h")
#include "org/allbinary/animation/AnimationBehaviorFactory.h"
#endif
#include "org/allbinary/animation/AnimationInterfaceFactoryInterface.h"
// #include "org/allbinary/logic/communication/log/ForcedLogUtil.h"

@interface CompoundAnimationInterfaceFactory : ABObject <AnimationInterfaceFactoryInterface> {
@public
    AnimationInterfaceFactoryInterface** basicAnimationInterfaceFactoryInterfaceArrayP;
    AnimationBehaviorFactory* animationBehaviorFactory;
}
- (instancetype) init:(AnimationInterfaceFactoryInterface**)basicAnimationInterfaceFactoryInterfaceArray :(AnimationBehaviorFactory*)animationBehaviorFactory;
- (void) initFields;
- (Animation*) getInstance:(int32_t)instanceId;
- (Animation**) createArray:(int32_t)size;
- (Animation*) createAnimation:(Animation**)animationInterfaceArray;
- (AnimationInterfaceFactoryInterface**) getBasicAnimationInterfaceFactoryInterfaceArray;
- (void) setInitialScale:(ScaleProperties*)scaleProperties;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void CompoundAnimationInterfaceFactory_staticInit(void);

#if __has_include("org/allbinary/animation/Animation.h")
#include "org/allbinary/animation/Animation.h"
#endif

#endif // ORG_ALLBINARY_ANIMATION_COMPOUND_COMPOUNDANIMATIONINTERFACEFACTORY_H
