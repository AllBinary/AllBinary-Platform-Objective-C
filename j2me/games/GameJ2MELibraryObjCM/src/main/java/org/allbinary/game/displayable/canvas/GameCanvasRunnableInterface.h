#ifndef ORG_ALLBINARY_GAME_DISPLAYABLE_CANVAS_GAMECANVASRUNNABLEINTERFACE_H
#define ORG_ALLBINARY_GAME_DISPLAYABLE_CANVAS_GAMECANVASRUNNABLEINTERFACE_H
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
// package org.allbinary.game.displayable.canvas

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class GameCanvasRunnableInterface;
@class CommandListener;
@class ItemStateListener;
@class GameStateCompositeInterface;
@class PaintableInterface;
@class RunnableInterface;
@class ABHashtable;
#include "javax/microedition/lcdui/ItemStateListener.h"
#include "org/allbinary/game/state/GameStateCompositeInterface.h"
#include "org/allbinary/graphics/paint/PaintableInterface.h"
#include "org/allbinary/thread/RunnableInterface.h"

@protocol GameCanvasRunnableInterface <RunnableInterface, PaintableInterface, ItemStateListener, GameStateCompositeInterface>
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
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void GameCanvasRunnableInterface_staticInit(void);

#if __has_include("org/allbinary/util/ABHashtable.h")
#include "org/allbinary/util/ABHashtable.h"
#endif

#endif // ORG_ALLBINARY_GAME_DISPLAYABLE_CANVAS_GAMECANVASRUNNABLEINTERFACE_H
