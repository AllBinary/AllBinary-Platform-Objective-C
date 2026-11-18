#ifndef ORG_ALLBINARY_GAME_LAYER_SPECIAL_SPECIALGAMEINPUTINTERFACE_H
#define ORG_ALLBINARY_GAME_LAYER_SPECIAL_SPECIALGAMEINPUTINTERFACE_H
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
// package org.allbinary.game.layer.special

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class SpecialGameInputInterface;
@class GameKeyEvent;
@class PaintableInterface;
@class AllBinaryLayerManager;
#include "org/allbinary/graphics/paint/PaintableInterface.h"

@protocol SpecialGameInputInterface <PaintableInterface>
- (void) up;
- (void) down;
- (void) right;
- (void) left;
- (void) strafeLeft;
- (void) strafeRight;
- (void) fire:(AllBinaryLayerManager*)layerManager :(GameKeyEvent*)gameKeyEvent;
- (void) special1:(AllBinaryLayerManager*)layerManager :(GameKeyEvent*)gameKeyEvent;
- (void) special2:(AllBinaryLayerManager*)layerManager :(GameKeyEvent*)gameKeyEvent;
- (void) special3:(AllBinaryLayerManager*)layerManager :(GameKeyEvent*)gameKeyEvent;
- (void) special4:(AllBinaryLayerManager*)layerManager :(GameKeyEvent*)gameKeyEvent;
- (void) special5:(AllBinaryLayerManager*)layerManager :(GameKeyEvent*)gameKeyEvent;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void SpecialGameInputInterface_staticInit(void);


#endif // ORG_ALLBINARY_GAME_LAYER_SPECIAL_SPECIALGAMEINPUTINTERFACE_H
