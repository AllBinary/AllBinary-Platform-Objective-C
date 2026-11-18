#ifndef ORG_ALLBINARY_GAME_LAYER_DROP_DROPLAYERINTERFACE_H
#define ORG_ALLBINARY_GAME_LAYER_DROP_DROPLAYERINTERFACE_H
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
// package org.allbinary.game.layer.drop

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class DropLayerInterface;
@class PickedUpLayerInterface;
@class LayerInterface;
#include "org/allbinary/layer/LayerInterface.h"

@protocol DropLayerInterface <LayerInterface>
- (PickedUpLayerInterface*) getDroppedLayer;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void DropLayerInterface_staticInit(void);

#if __has_include("org/allbinary/game/layer/pickup/PickedUpLayerInterface.h")
#include "org/allbinary/game/layer/pickup/PickedUpLayerInterface.h"
#endif

#endif // ORG_ALLBINARY_GAME_LAYER_DROP_DROPLAYERINTERFACE_H
