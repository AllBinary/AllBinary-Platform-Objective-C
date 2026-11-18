#ifndef ORG_ALLBINARY_GAME_DISPLAYABLE_CANVAS_NULLGAMECANVASRUNNABLE_H
#define ORG_ALLBINARY_GAME_DISPLAYABLE_CANVAS_NULLGAMECANVASRUNNABLE_H
/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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
// package org.allbinary.game.displayable.canvas

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class NullGameCanvasRunnable;
@class CommandListener;
@class Graphics;
@class Item;
@class GameState;
@class GameStateFactory;
@class StdUtil;
@class StringUtil;
@class ABHashtable;
@class GameCanvasRunnableInterface;
#if __has_include("org/allbinary/game/state/GameStateFactory.h")
#include "org/allbinary/game/state/GameStateFactory.h"
#endif
#include "java/lang/Thread.h"
#include "org/allbinary/game/displayable/canvas/GameCanvasRunnableInterface.h"

@interface NullGameCanvasRunnable : ABObject <GameCanvasRunnableInterface> {
@public
    GameStateFactory* gameStateFactory;
}
- (instancetype) init;
- (void) initFields;
- (const char*) getTitle;
- (bool) isInitialized;
- (bool) isPaused;
- (void) unPause;
- (void) pause;
- (bool) isHighScoreSubmitted;
- (void) setHighScoreSubmitted:(bool)highScoreSubmitted;
- (void) processGameOver;
- (bool) isGameOver;
- (void) initCommands:(CommandListener*)cmdListener;
- (ABHashtable*) getCurrentStateHashtable;
- (ABHashtable*) getLoadStateHashtable;
- (void) setLoadStateHashtable:(ABHashtable*)hashtable;
- (int32_t) getType;
- (void) setGameState:(GameState*)gameState;
- (GameState*) getGameState;
- (void) itemStateChanged:(Item*)item;
- (void) paint:(Graphics*)graphics;
- (void) paintThreed:(Graphics*)graphics;
- (bool) isRunning;
- (void) setRunning:(bool)isRunning;
- (void) setThread:(Thread*)thread;
- (void) run;
@end

extern NullGameCanvasRunnable* NullGameCanvasRunnable_NULL_GAME_CANVAS_RUNNABLE;
// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void NullGameCanvasRunnable_staticInit(void);

#if __has_include("org/allbinary/game/state/GameState.h")
#include "org/allbinary/game/state/GameState.h"
#endif
#if __has_include("org/allbinary/util/ABHashtable.h")
#include "org/allbinary/util/ABHashtable.h"
#endif

#endif // ORG_ALLBINARY_GAME_DISPLAYABLE_CANVAS_NULLGAMECANVASRUNNABLE_H
