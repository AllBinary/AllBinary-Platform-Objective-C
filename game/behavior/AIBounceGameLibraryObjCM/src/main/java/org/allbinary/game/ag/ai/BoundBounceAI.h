#ifndef ORG_ALLBINARY_GAME_AG_AI_BOUNDBOUNCEAI_H
#define ORG_ALLBINARY_GAME_AG_AI_BOUNDBOUNCEAI_H
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
@class BoundBounceAI;
@class Graphics;
@class BoundsVisitorInterface;
@class LayerBounds;
@class BasicAI;
@class GameInput;
@class Rectangle;
@class AllBinaryLayer;
@class AllBinaryLayerManager;
#if __has_include("org/allbinary/bounds/BoundsVisitorInterface.h")
#include "org/allbinary/bounds/BoundsVisitorInterface.h"
#endif
#if __has_include("org/allbinary/bounds/LayerBounds.h")
#include "org/allbinary/bounds/LayerBounds.h"
#endif
#include "org/allbinary/game/ai/BasicAI.h"

@interface BoundBounceAI : BasicAI {
@public
    int32_t currentRelativeAngle;
    LayerBounds* layerBounds;
    BoundsVisitorInterface* boundsVisitorInterface;
}
- (instancetype) init:(AllBinaryLayer*)ownerLayerInterface :(GameInput*)gameInput :(LayerBounds*)layerBounds :(BoundsVisitorInterface*)boundsVisitorInterface;
- (void) initFields;
- (void) paint:(Graphics*)graphics;
- (void) processAI:(AllBinaryLayerManager*)allBinaryLayerManager;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void BoundBounceAI_staticInit(void);


#endif // ORG_ALLBINARY_GAME_AG_AI_BOUNDBOUNCEAI_H
