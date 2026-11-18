#ifndef ORG_ALLBINARY_ANIMATION_VECTOR_LINEANIMATIONFACTORY_H
#define ORG_ALLBINARY_ANIMATION_VECTOR_LINEANIMATIONFACTORY_H
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
// package org.allbinary.animation.vector

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class LineAnimationFactory;
@class Animation;
@class AnimationInterfaceFactoryInterface;
@class BasicColor;
@class ScaleProperties;
@class LineAnimation;
#include "org/allbinary/animation/AnimationInterfaceFactoryInterface.h"
#if __has_include("org/allbinary/graphics/color/BasicColor.h")
#include "org/allbinary/graphics/color/BasicColor.h"
#endif

@interface LineAnimationFactory : ABObject <AnimationInterfaceFactoryInterface> {
@public
    BasicColor* basicColor;
}
- (instancetype) init:(BasicColor*)basicColor;
- (void) initFields;
- (Animation*) getInstance:(int32_t)instanceId;
- (void) setInitialScale:(ScaleProperties*)scaleProperties;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void LineAnimationFactory_staticInit(void);

#if __has_include("org/allbinary/animation/Animation.h")
#include "org/allbinary/animation/Animation.h"
#endif

#endif // ORG_ALLBINARY_ANIMATION_VECTOR_LINEANIMATIONFACTORY_H
