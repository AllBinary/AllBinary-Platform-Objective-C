#ifndef ORG_ALLBINARY_GAME_AG_AI_NUMBERONOWNGROUPSEQUENCEAI_H
#define ORG_ALLBINARY_GAME_AG_AI_NUMBERONOWNGROUPSEQUENCEAI_H
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
@class NumberOnOwnGroupSequenceAI;
@class ArtificialIntelligenceInterface;
@class SequenceAI;
@class GameInput;
@class GroupLayerManagerListener;
@class AllBinaryLayer;
@class AllBinaryLayerManager;
#include "org/allbinary/game/ag/ai/sequence/SequenceAI.h"
#include "java/lang/Integer.h"

@interface NumberOnOwnGroupSequenceAI : SequenceAI {
@public
    int32_t* numberOnSameTeam;
}
- (instancetype) init:(int32_t*)numberOnSameTeam :(ArtificialIntelligenceInterface**)artificialIntelligenceInterface :(AllBinaryLayer*)ownerLayerInterface :(GameInput*)gameInput;
- (void) initFields;
- (void) processAI:(AllBinaryLayerManager*)allBinaryLayerManager;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void NumberOnOwnGroupSequenceAI_staticInit(void);


#endif // ORG_ALLBINARY_GAME_AG_AI_NUMBERONOWNGROUPSEQUENCEAI_H
