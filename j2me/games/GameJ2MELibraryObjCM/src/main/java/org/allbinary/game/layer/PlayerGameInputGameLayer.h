#ifndef ORG_ALLBINARY_GAME_LAYER_PLAYERGAMEINPUTGAMELAYER_H
#define ORG_ALLBINARY_GAME_LAYER_PLAYERGAMEINPUTGAMELAYER_H
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
// package org.allbinary.game.layer

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class PlayerGameInputGameLayer;
@class Graphics;
@class PlayerGameInput;
@class PlayerGameInputCompositeInterface;
@class PointFactory;
@class Rectangle;
@class CanvasStrings;
@class AllBinaryLayerManager;
@class StringUtil;
@class BasicArrayListD;
@class StaticViewPosition;
@class AllBinaryGameLayer;
#if __has_include("org/allbinary/game/input/PlayerGameInput.h")
#include "org/allbinary/game/input/PlayerGameInput.h"
#endif
#include "org/allbinary/game/input/PlayerGameInputCompositeInterface.h"
#include "org/allbinary/game/layer/AllBinaryGameLayer.h"

@interface PlayerGameInputGameLayer : AllBinaryGameLayer <PlayerGameInputCompositeInterface> {
@public
    PlayerGameInput* playerGameInput;
}
- (instancetype) init:(int32_t)playerInputId;
- (void) initFields;
- (PlayerGameInput*) getPlayerGameInput;
- (void) initInputProcessors;
- (void) processInput:(AllBinaryLayerManager*)myManager;
- (void) paint:(Graphics*)graphics;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void PlayerGameInputGameLayer_staticInit(void);

#if __has_include("org/allbinary/game/input/PlayerGameInput.h")
#include "org/allbinary/game/input/PlayerGameInput.h"
#endif

#endif // ORG_ALLBINARY_GAME_LAYER_PLAYERGAMEINPUTGAMELAYER_H
