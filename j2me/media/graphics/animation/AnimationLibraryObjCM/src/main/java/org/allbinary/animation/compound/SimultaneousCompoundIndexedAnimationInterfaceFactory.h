#ifndef ORG_ALLBINARY_ANIMATION_COMPOUND_SIMULTANEOUSCOMPOUNDINDEXEDANIMATIONINTERFACEFACTORY_H
#define ORG_ALLBINARY_ANIMATION_COMPOUND_SIMULTANEOUSCOMPOUNDINDEXEDANIMATIONINTERFACEFACTORY_H
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
@class SimultaneousCompoundIndexedAnimationInterfaceFactory;
@class Animation;
@class AnimationBehaviorFactory;
@class AnimationInterfaceFactoryInterface;
@class ForcedLogUtil;
@class CompoundAnimationInterfaceFactory;
@class SimultaneousCompoundIndexedAnimation;
// #include "org/allbinary/logic/communication/log/ForcedLogUtil.h"
#include "org/allbinary/animation/compound/CompoundAnimationInterfaceFactory.h"

@interface SimultaneousCompoundIndexedAnimationInterfaceFactory : CompoundAnimationInterfaceFactory {
@public
}
- (instancetype) init:(AnimationInterfaceFactoryInterface**)basicAnimationInterfaceFactoryInterfaceArray :(AnimationBehaviorFactory*)animationBehaviorFactory;
- (Animation**) createArray:(int32_t)size;
- (Animation*) createAnimation:(Animation**)animationArray;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void SimultaneousCompoundIndexedAnimationInterfaceFactory_staticInit(void);

#if __has_include("org/allbinary/animation/Animation.h")
#include "org/allbinary/animation/Animation.h"
#endif

#endif // ORG_ALLBINARY_ANIMATION_COMPOUND_SIMULTANEOUSCOMPOUNDINDEXEDANIMATIONINTERFACEFACTORY_H
