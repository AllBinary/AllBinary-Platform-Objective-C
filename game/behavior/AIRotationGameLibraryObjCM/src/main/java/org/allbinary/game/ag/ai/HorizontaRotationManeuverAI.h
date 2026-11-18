#ifndef ORG_ALLBINARY_GAME_AG_AI_HORIZONTAROTATIONMANEUVERAI_H
#define ORG_ALLBINARY_GAME_AG_AI_HORIZONTAROTATIONMANEUVERAI_H
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
// package org.allbinary.game.ag.ai

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class HorizontaRotationManeuverAI;
@class Canvas;
@class ArtificialIntelligence;
@class ArtificialIntelligenceTransitionInterface;
@class IndexedAnimation;
@class RotationAnimationInterface;
@class RotationAnimationInterfaceCompositeInterface;
@class BasicAI;
@class GameInput;
@class BasicVelocityProperties;
@class VelocityInterface;
@class VelocityInterfaceCompositeInterface;
@class DisplayInfoSingleton;
@class AllBinaryLayer;
@class AllBinaryLayerManager;
@class AngleIncrementInfo;
@class CircularIndexUtil;
#include "org/allbinary/ai/ArtificialIntelligenceTransitionInterface.h"
#if __has_include("org/allbinary/animation/IndexedAnimation.h")
#include "org/allbinary/animation/IndexedAnimation.h"
#endif
#include "org/allbinary/game/ai/BasicAI.h"
#if __has_include("org/allbinary/game/physics/velocity/BasicVelocityProperties.h")
#include "org/allbinary/game/physics/velocity/BasicVelocityProperties.h"
#endif
#if __has_include("org/allbinary/game/physics/velocity/VelocityInterface.h")
#include "org/allbinary/game/physics/velocity/VelocityInterface.h"
#endif
#if __has_include("org/allbinary/util/CircularIndexUtil.h")
#include "org/allbinary/util/CircularIndexUtil.h"
#endif
#include "java/lang/Integer.h"

@interface HorizontaRotationManeuverAI : BasicAI <ArtificialIntelligenceTransitionInterface> {
@public
    CircularIndexUtil* circularIndexUtil;
    int32_t currentSpeedDivisor;
    IndexedAnimation* rotationAnimationInterface;
    BasicVelocityProperties* baseVelocityInterface;
    VelocityInterface* velocityInterface;
}
- (instancetype) init:(AllBinaryLayer*)ownerLayerInterface :(GameInput*)gameInput;
- (void) initFields;
- (void) transition;
- (void) processAI:(AllBinaryLayerManager*)allBinaryLayerManager;
- (void) reverse;
- (void) accelerate;
- (void) drop;
- (int32_t) getId;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void HorizontaRotationManeuverAI_staticInit(void);


#endif // ORG_ALLBINARY_GAME_AG_AI_HORIZONTAROTATIONMANEUVERAI_H
