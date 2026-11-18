#ifndef ORG_ALLBINARY_GAME_AG_AI_LURCHROTATIONAI_H
#define ORG_ALLBINARY_GAME_AG_AI_LURCHROTATIONAI_H
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
@class LurchRotationAI;
@class IndexedAnimation;
@class RotationAnimationInterface;
@class RotationAnimationInterfaceCompositeInterface;
@class LurchAI;
@class GameInput;
@class AllBinaryLayer;
@class AngleIncrementInfo;
#if __has_include("org/allbinary/animation/IndexedAnimation.h")
#include "org/allbinary/animation/IndexedAnimation.h"
#endif
#include "org/allbinary/game/ag/ai/tactical/LurchAI.h"

@interface LurchRotationAI : LurchAI {
@public
    IndexedAnimation* rotationAnimationInterface;
}
- (instancetype) init:(AllBinaryLayer*)ownerLayerInterface :(GameInput*)gameInput;
- (void) initFields;
- (void) reverse;
- (void) update;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void LurchRotationAI_staticInit(void);


#endif // ORG_ALLBINARY_GAME_AG_AI_LURCHROTATIONAI_H
