#ifndef ORG_ALLBINARY_GAME_MIDLET_DEMOGAMEMIDLET_H
#define ORG_ALLBINARY_GAME_MIDLET_DEMOGAMEMIDLET_H
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
// package org.allbinary.game.midlet

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class DemoGameMidlet;
@class GameCanvasRunnableInterface;
@class AllBinaryGameLayerManager;
@class ProgressCanvas;
@class ProgressCanvasFactory;
@class StdUtil;
@class ClientInformationFactory;
@class PrimaryThreadPool;
@class NullGameCanvasRunnable;
@class ABHashtable;
@class GameMidlet;
@class DemoRunnable;
@class CreateGameRunnable;
#include "org/allbinary/game/midlet/GameMidlet.h"

@interface DemoGameMidlet : GameMidlet {
@public
}
- (instancetype) init:(ClientInformationFactory*)clientInformationFactory;
- (bool) isContinue;
- (int32_t) getHighestLevel;
- (GameCanvasRunnableInterface*) createDemoGameCanvasRunnableInterface;
- (GameCanvasRunnableInterface*) createGameCanvasRunnable:(AllBinaryGameLayerManager*)allBinaryGameLayerManager;
- (GameCanvasRunnableInterface*) createGameCanvasRunnableInterface;
- (void) demoSetup;
- (void) postDemoSetup;
- (void) setDemo;
- (void) createGame;
- (bool) isReady;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void DemoGameMidlet_staticInit(void);

#if __has_include("org/allbinary/game/displayable/canvas/GameCanvasRunnableInterface.h")
#include "org/allbinary/game/displayable/canvas/GameCanvasRunnableInterface.h"
#endif

#endif // ORG_ALLBINARY_GAME_MIDLET_DEMOGAMEMIDLET_H
