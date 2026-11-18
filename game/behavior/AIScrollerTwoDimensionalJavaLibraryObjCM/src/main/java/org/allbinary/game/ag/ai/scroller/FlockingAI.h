#ifndef ORG_ALLBINARY_GAME_AG_AI_SCROLLER_FLOCKINGAI_H
#define ORG_ALLBINARY_GAME_AG_AI_SCROLLER_FLOCKINGAI_H
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
@class FlockingAI;
@class Canvas;
@class BasicAI;
@class BasicGroupFactory;
@class GameInput;
@class GroupLayerManagerListener;
@class WeaponLayer;
@class AllBinaryLayer;
@class AllBinaryLayerManager;
@class MathUtil;
@class ABHashtable;
@class BasicArrayList;
@class BasePatrolAI;
#include "org/allbinary/game/ai/BasicAI.h"
#include "java/lang/Integer.h"

@interface FlockingAI : BasicAI {
@public
    int32_t allowedDistance;
}
- (instancetype) init:(ABHashtable*)hashtable :(AllBinaryLayer*)ownerLayerInterface :(GameInput*)gameInput;
- (void) initFields;
- (void) processAI:(AllBinaryLayerManager*)allBinaryLayerManager;
- (int32_t) getXYDistance:(AllBinaryLayer*)allBinaryLayer;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void FlockingAI_staticInit(void);


#endif // ORG_ALLBINARY_GAME_AG_AI_SCROLLER_FLOCKINGAI_H
