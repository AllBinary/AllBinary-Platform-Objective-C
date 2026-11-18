#ifndef ORG_ALLBINARY_GAME_AG_AI_SCROLLER_BASEPATROLAI_H
#define ORG_ALLBINARY_GAME_AG_AI_SCROLLER_BASEPATROLAI_H
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
// package org.allbinary.game.ag.ai.scroller

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class BasePatrolAI;
@class Canvas;
@class BasicAI;
@class GameInput;
@class BasicVelocityProperties;
@class VelocityInterfaceCompositeInterface;
@class AllBinaryLayer;
@class MathUtil;
@class SmallIntegerSingletonFactory;
@class ABHashtable;
#include "org/allbinary/game/ai/BasicAI.h"
#include "java/lang/Integer.h"

@interface BasePatrolAI : BasicAI {
@public
    int32_t maxDistance;
    int32_t currentDistance;
    int32_t xTotalDistance;
    int32_t lastKeyDirection;
    int32_t keyDirection;
}
- (instancetype) init:(ABHashtable*)hashtable :(AllBinaryLayer*)ownerLayerInterface :(GameInput*)gameInput;
- (void) initFields;
- (void) update;
- (void) updateTotalDistance;
- (void) changeDirectionIfReachedPacingAreaMax;
- (void) nextDirection;
- (void) disable;
@end

extern int32_t BasePatrolAI_MAX_DISTANCE;
extern int32_t BasePatrolAI_DIRECTION_ARRAY;
extern int32_t BasePatrolAI_FIRING_DISTANCE;
extern int32_t BasePatrolAI_SPEED;
// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void BasePatrolAI_staticInit(void);


#endif // ORG_ALLBINARY_GAME_AG_AI_SCROLLER_BASEPATROLAI_H
