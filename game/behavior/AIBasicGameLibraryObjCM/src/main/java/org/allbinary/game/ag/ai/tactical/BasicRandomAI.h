#ifndef ORG_ALLBINARY_GAME_AG_AI_TACTICAL_BASICRANDOMAI_H
#define ORG_ALLBINARY_GAME_AG_AI_TACTICAL_BASICRANDOMAI_H
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
@class BasicRandomAI;
@class Canvas;
@class BasicAI;
@class InputProbability;
@class GameInput;
@class MyRandomFactory;
@class AllBinaryLayer;
@class AllBinaryLayerManager;
@class Visitor;
@class GameTickTimeDelayHelperFactory;
#include "org/allbinary/game/ai/BasicAI.h"
#if __has_include("org/allbinary/game/ag/ai/InputProbability.h")
#include "org/allbinary/game/ag/ai/InputProbability.h"
#endif
#if __has_include("org/allbinary/game/rand/MyRandomFactory.h")
#include "org/allbinary/game/rand/MyRandomFactory.h"
#endif
#if __has_include("org/allbinary/logic/util/visitor/Visitor.h")
#include "org/allbinary/logic/util/visitor/Visitor.h"
#endif
#include "java/lang/Integer.h"

@interface BasicRandomAI : BasicAI {
@public
    int32_t i_random;
    InputProbability* inputProbability;
    Visitor* visitor;
    int32_t* keyArray;
    MyRandomFactory* myRandomFactory;
}
- (instancetype) init:(AllBinaryLayer*)ownerLayerInterface :(GameInput*)gameInput :(InputProbability*)inputProbability :(Visitor*)visitor;
- (void) initFields;
- (void) processAI:(AllBinaryLayerManager*)allBinaryLayerManager;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void BasicRandomAI_staticInit(void);


#endif // ORG_ALLBINARY_GAME_AG_AI_TACTICAL_BASICRANDOMAI_H
