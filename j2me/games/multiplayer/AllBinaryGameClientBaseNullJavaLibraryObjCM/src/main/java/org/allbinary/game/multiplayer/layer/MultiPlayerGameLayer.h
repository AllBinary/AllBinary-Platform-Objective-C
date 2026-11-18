#ifndef ORG_ALLBINARY_GAME_MULTIPLAYER_LAYER_MULTIPLAYERGAMELAYER_H
#define ORG_ALLBINARY_GAME_MULTIPLAYER_LAYER_MULTIPLAYERGAMELAYER_H
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
// package org.allbinary.game.multiplayer.layer

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class MultiPlayerGameLayer;
@class Group;
@class CollidableDestroyableDamageableLayer;
@class Rectangle;
@class ViewPositionBase;
@class MultiPlayerGameLayerInterface;
@class RemoteInfo;
@class MultiplayerBehavior;
#include "org/allbinary/game/layer/special/CollidableDestroyableDamageableLayer.h"
#include "org/allbinary/game/multiplayer/layer/MultiPlayerGameLayerInterface.h"

@interface MultiPlayerGameLayer : CollidableDestroyableDamageableLayer <MultiPlayerGameLayerInterface> {
@public
}
- (instancetype) init:(RemoteInfo*)remoteInfo :(Group**)groupInterface :(const char*)name :(Rectangle*)layerInfo :(ViewPositionBase*)viewPosition;
- (MultiplayerBehavior*) getMultiplayerBehavior;
- (void) setPingInfo:(bool)show;
- (void) setFiring:(int16_t)firing;
- (int16_t) getFiring;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void MultiPlayerGameLayer_staticInit(void);


#endif // ORG_ALLBINARY_GAME_MULTIPLAYER_LAYER_MULTIPLAYERGAMELAYER_H
