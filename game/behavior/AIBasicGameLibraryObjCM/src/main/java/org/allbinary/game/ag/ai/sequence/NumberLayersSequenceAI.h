#ifndef ORG_ALLBINARY_GAME_AG_AI_SEQUENCE_NUMBERLAYERSSEQUENCEAI_H
#define ORG_ALLBINARY_GAME_AG_AI_SEQUENCE_NUMBERLAYERSSEQUENCEAI_H
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
// package org.allbinary.game.ag.ai.sequence

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class NumberLayersSequenceAI;
@class ArtificialIntelligenceInterface;
@class GameInput;
@class AllBinaryLayer;
@class AllBinaryLayerManager;
@class SequenceAI;
#include "org/allbinary/game/ag/ai/sequence/SequenceAI.h"

@interface NumberLayersSequenceAI : SequenceAI {
@public
    int32_t numberOfLayersLeft;
}
- (instancetype) init:(int32_t)numberOfEnemiesLeft :(ArtificialIntelligenceInterface**)artificialIntelligenceInterface :(AllBinaryLayer*)ownerLayerInterface :(GameInput*)gameInput;
- (void) initFields;
- (void) processAI:(AllBinaryLayerManager*)allBinaryLayerManager;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void NumberLayersSequenceAI_staticInit(void);


#endif // ORG_ALLBINARY_GAME_AG_AI_SEQUENCE_NUMBERLAYERSSEQUENCEAI_H
