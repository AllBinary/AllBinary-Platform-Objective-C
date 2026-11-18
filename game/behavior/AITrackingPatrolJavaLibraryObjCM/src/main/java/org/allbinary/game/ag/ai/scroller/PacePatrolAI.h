#ifndef ORG_ALLBINARY_GAME_AG_AI_SCROLLER_PACEPATROLAI_H
#define ORG_ALLBINARY_GAME_AG_AI_SCROLLER_PACEPATROLAI_H
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
@class PacePatrolAI;
@class Canvas;
@class Direction;
@class DirectionCompositeInterface;
@class DirectionFactory;
@class GameInput;
@class TrackingEvent;
@class TrackingEventHandler;
@class TrackingEventListenerInterface;
@class AllBinaryLayer;
@class AllBinaryLayerManager;
@class LayerInterface;
@class ForcedLogUtil;
@class AllBinaryEventObject;
@class EventStrings;
@class ABHashtable;
@class BasicArrayList;
@class BasicArrayListD;
@class BasePatrolAI;
#include "org/allbinary/game/tracking/TrackingEventListenerInterface.h"
#if __has_include("org/allbinary/util/BasicArrayList.h")
#include "org/allbinary/util/BasicArrayList.h"
#endif
#include "org/allbinary/game/ag/ai/scroller/BasePatrolAI.h"

@interface PacePatrolAI : BasePatrolAI <TrackingEventListenerInterface> {
@public
    BasicArrayList* trackingList;
    int32_t firingDistance;
    bool isFollowLimitedByTerrain;
}
- (instancetype) init:(ABHashtable*)hashtable :(AllBinaryLayer*)ownerLayerInterface :(GameInput*)gameInput;
- (void) initFields;
- (void) processAI:(AllBinaryLayerManager*)allBinaryLayerManager;
- (Direction*) setFiringDirectionForTargetIfInRange;
- (void) disable;
- (void) onEvent:(AllBinaryEventObject*)eventObject;
- (void) onMovement:(TrackingEvent*)trackingEvent;
- (int32_t) getFiringDistance;
- (void) setFiringDistance:(int32_t)firingDistance;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void PacePatrolAI_staticInit(void);


#endif // ORG_ALLBINARY_GAME_AG_AI_SCROLLER_PACEPATROLAI_H
