#ifndef ORG_ALLBINARY_GAME_LAYER_BASICLAYERPLACEMENT_H
#define ORG_ALLBINARY_GAME_LAYER_BASICLAYERPLACEMENT_H
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
@class BasicLayerPlacement;
@class LayerPlacementType;
#if __has_include("org/allbinary/game/layer/LayerPlacementType.h")
#include "org/allbinary/game/layer/LayerPlacementType.h"
#endif

@interface BasicLayerPlacement : ABObject {
@public
    LayerPlacementType* layerType;
    int32_t width;
    int32_t height;
}
- (instancetype) init:(LayerPlacementType*)layerType :(int32_t)width :(int32_t)height;
- (void) initFields;
- (int32_t) getWidth;
- (int32_t) getHeight;
- (LayerPlacementType*) getLayerType;
- (void) setLayerType:(LayerPlacementType*)layerType;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void BasicLayerPlacement_staticInit(void);


#endif // ORG_ALLBINARY_GAME_LAYER_BASICLAYERPLACEMENT_H
