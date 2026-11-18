#ifndef ORG_ALLBINARY_GAME_AG_AI_SCROLLER_TERRAINPATROLAI_H
#define ORG_ALLBINARY_GAME_AG_AI_SCROLLER_TERRAINPATROLAI_H
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
@class TerrainPatrolAI;
@class GameInput;
@class BasicTerrainInfo;
@class TerrainEvent;
@class TerrainEventCircularStaticPool;
@class TerrainEventHandler;
@class TerrainEventListener;
@class AllBinaryLayer;
@class Angle;
@class AngleFactory;
@class ABHashtable;
@class BasicArrayList;
@class PacePatrolAI;
#if __has_include("org/allbinary/game/terrain/BasicTerrainInfo.h")
#include "org/allbinary/game/terrain/BasicTerrainInfo.h"
#endif
#if __has_include("org/allbinary/game/terrain/TerrainEventListener.h")
#include "org/allbinary/game/terrain/TerrainEventListener.h"
#endif
#if __has_include("org/allbinary/math/Angle.h")
#include "org/allbinary/math/Angle.h"
#endif
#include "org/allbinary/game/ag/ai/scroller/PacePatrolAI.h"

@interface TerrainPatrolAI : PacePatrolAI {
@public
    TerrainEventListener* terrainEventListener;
    Angle* DOWN;
    BasicTerrainInfo* CLIFF;
}
- (instancetype) init:(ABHashtable*)hashtable :(AllBinaryLayer*)ownerLayerInterface :(GameInput*)gameInput;
- (void) initFields;
- (void) update;
- (void) changeDirectionIfCliffReached;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void TerrainPatrolAI_staticInit(void);


#endif // ORG_ALLBINARY_GAME_AG_AI_SCROLLER_TERRAINPATROLAI_H
