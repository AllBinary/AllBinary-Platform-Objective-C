#ifndef ORG_ALLBINARY_LAYER_LAYERINTERFACE_H
#define ORG_ALLBINARY_LAYER_LAYERINTERFACE_H
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
// package org.allbinary.layer

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class LayerInterface;
@class GroupInterfaceCompositeInterface;
@class PaintableInterface;
@class NamedInterface;
@class PositionInterface;
#include "org/allbinary/game/identification/GroupInterfaceCompositeInterface.h"
#include "org/allbinary/graphics/paint/PaintableInterface.h"
#include "org/allbinary/layer/NamedInterface.h"
#include "org/allbinary/layer/PositionInterface.h"

@protocol LayerInterface <NamedInterface, PaintableInterface, GroupInterfaceCompositeInterface, PositionInterface>
- (int32_t) getHeight;
- (int32_t) getWidth;
- (int32_t) getHalfHeight;
- (int32_t) getHalfWidth;
- (int32_t) getXP;
- (int32_t) getYP;
- (int32_t) getZP;
- (int32_t) getX2;
- (int32_t) getY2;
- (int32_t) getZ2;
- (bool) isVisible;
- (void) moveDXYZ:(int32_t)dx :(int32_t)dy :(int32_t)dz;
- (void) setVisible:(bool)visible;
- (bool) implmentsTickableInterface;
- (bool) implmentsCollidableInterface;
- (bool) implmentsGameInputInterface;
- (bool) implmentsArtificialIntelligenceCompositeInterface;
- (int32_t) getType;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void LayerInterface_staticInit(void);


#endif // ORG_ALLBINARY_LAYER_LAYERINTERFACE_H
