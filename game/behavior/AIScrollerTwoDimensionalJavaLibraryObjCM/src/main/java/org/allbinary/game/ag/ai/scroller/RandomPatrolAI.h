#ifndef ORG_ALLBINARY_GAME_AG_AI_SCROLLER_RANDOMPATROLAI_H
#define ORG_ALLBINARY_GAME_AG_AI_SCROLLER_RANDOMPATROLAI_H
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
@class RandomPatrolAI;
@class Canvas;
@class GameInput;
@class MyRandomFactory;
@class AllBinaryLayer;
@class AllBinaryLayerManager;
@class ABHashtable;
@class BasePatrolAI;
#include "org/allbinary/game/ag/ai/scroller/BasePatrolAI.h"

@interface RandomPatrolAI : BasePatrolAI {
@public
    bool changedDirection;
}
- (instancetype) init:(ABHashtable*)hashtable :(AllBinaryLayer*)ownerLayerInterface :(GameInput*)gameInput;
- (void) initFields;
- (void) updateRandomDistance;
- (void) processAI:(AllBinaryLayerManager*)allBinaryLayerManager;
- (void) nextDirection;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void RandomPatrolAI_staticInit(void);


#endif // ORG_ALLBINARY_GAME_AG_AI_SCROLLER_RANDOMPATROLAI_H
