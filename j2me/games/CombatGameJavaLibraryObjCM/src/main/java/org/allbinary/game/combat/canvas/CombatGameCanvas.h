#ifndef ORG_ALLBINARY_GAME_COMBAT_CANVAS_COMBATGAMECANVAS_H
#define ORG_ALLBINARY_GAME_COMBAT_CANVAS_COMBATGAMECANVAS_H
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
// package org.allbinary.game.combat.canvas

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class CombatGameCanvas;
@class CommandListener;
@class DestroyedLayerProcessor;
@class DestroyEventCircularStaticPool;
@class DestroyedEventHandler;
@class Features;
@class GameFeatureFactory;
@class AllBinaryGameCanvas;
@class BasicBuildGameInitializerFactory;
@class AllBinaryGameLayerManager;
@class DropLayerProcessor;
@class GroupLayerManagerListener;
@class HighScoresFactoryInterface;
@class ProgressCanvasFactory;
@class BasicLayerProcessor;
@class AbeClientInformationInterface;
#include "org/allbinary/game/displayable/canvas/AllBinaryGameCanvas.h"
#if __has_include("org/allbinary/layer/BasicLayerProcessor.h")
#include "org/allbinary/layer/BasicLayerProcessor.h"
#endif

@interface CombatGameCanvas : AllBinaryGameCanvas {
@public
}
- (instancetype) init:(CommandListener*)cmdListener :(AllBinaryGameLayerManager*)gameLayerManager :(HighScoresFactoryInterface*)highScoresFactoryInterface :(BasicBuildGameInitializerFactory*)gameInitializationInterfaceFactoryInterface :(bool)buffered;
- (void) CombatGameCanvas_init;
- (void) initApp:(AbeClientInformationInterface*)abeClientInformation;
- (void) initConfigurablePortion:(int32_t)portion;
- (void) processPlayingGame;
- (void) cleanupGame;
- (void) cleanupManager;
@end

extern BasicLayerProcessor** CombatGameCanvas_basicLayerProcessor;
// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void CombatGameCanvas_staticInit(void);


#endif // ORG_ALLBINARY_GAME_COMBAT_CANVAS_COMBATGAMECANVAS_H
