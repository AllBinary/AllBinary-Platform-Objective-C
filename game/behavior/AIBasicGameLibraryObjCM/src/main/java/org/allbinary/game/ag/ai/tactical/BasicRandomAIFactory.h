#ifndef ORG_ALLBINARY_GAME_AG_AI_TACTICAL_BASICRANDOMAIFACTORY_H
#define ORG_ALLBINARY_GAME_AG_AI_TACTICAL_BASICRANDOMAIFACTORY_H
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
// package org.allbinary.game.ag.ai.tactical

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class BasicRandomAIFactory;
@class ArtificialIntelligenceInterface;
@class ArtificialIntelligenceInterfaceFactoryInterface;
@class BasicAI;
@class InputProbability;
@class GameInput;
@class AllBinaryLayer;
@class Visitor;
@class ABHashtable;
@class BasicRandomAI;
#include "org/allbinary/game/ai/ArtificialIntelligenceInterfaceFactoryInterface.h"

@interface BasicRandomAIFactory : ABObject <ArtificialIntelligenceInterfaceFactoryInterface> {
@public
}
- (instancetype) init;
- (ArtificialIntelligenceInterface*) getInstance:(ABHashtable*)hashtable :(AllBinaryLayer*)ownerLayerInterface :(GameInput*)gameInput;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void BasicRandomAIFactory_staticInit(void);

#if __has_include("org/allbinary/ai/ArtificialIntelligenceInterface.h")
#include "org/allbinary/ai/ArtificialIntelligenceInterface.h"
#endif

#endif // ORG_ALLBINARY_GAME_AG_AI_TACTICAL_BASICRANDOMAIFACTORY_H
