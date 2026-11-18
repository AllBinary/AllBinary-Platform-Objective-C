#ifndef ORG_ALLBINARY_ANIMATION_ROTATIONANIMATIONINTERFACE_H
#define ORG_ALLBINARY_ANIMATION_ROTATIONANIMATIONINTERFACE_H
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
@class RotationAnimationInterface;
@class DirectionalInterface;
@class AngleInfo;
@class IndexedAnimationInterface;
#include "org/allbinary/direction/DirectionalInterface.h"
#include "org/allbinary/animation/IndexedAnimationInterface.h"

@protocol RotationAnimationInterface <IndexedAnimationInterface, DirectionalInterface>
- (AngleInfo*) getAngleInfoP;
- (void) nextRotation;
- (void) previousRotation;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void RotationAnimationInterface_staticInit(void);

#if __has_include("org/allbinary/math/AngleInfo.h")
#include "org/allbinary/math/AngleInfo.h"
#endif

#endif // ORG_ALLBINARY_ANIMATION_ROTATIONANIMATIONINTERFACE_H
