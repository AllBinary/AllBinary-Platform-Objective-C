#ifndef ORG_ALLBINARY_GAME_DISPLAYABLE_CANVAS_NULLGAMECANVAS_H
#define ORG_ALLBINARY_GAME_DISPLAYABLE_CANVAS_NULLGAMECANVAS_H
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
@class NullGameCanvas;
@class CommandListener;
@class Graphics;
@class NullCommandListener;
@class BasicBuildGameInitializerFactory;
@class AllBinaryGameLayerManager;
@class NoHighScoresFactory;
@class NullUtil;
@class LogUtil;
@class CommonStrings;
@class AllBinaryGameCanvas;
#include "org/allbinary/game/displayable/canvas/AllBinaryGameCanvas.h"

@interface NullGameCanvas : AllBinaryGameCanvas {
@public
    bool runningNull;
}
- (instancetype) init:(AllBinaryGameLayerManager*)gameLayerManager;
- (void) initFields;
+ (NullGameCanvas*) createNull;
+ (NullGameCanvas*) getInstance;
+ (NullGameCanvas*) createCanvas:(AllBinaryGameLayerManager*)gameLayerManager;
- (bool) isGameOver;
- (void) setRunning:(bool)running;
- (bool) isRunning;
- (void) pause;
- (void) unPause;
- (void) initCommands:(CommandListener*)cmdListener;
- (void) buildGameInit:(bool)isProgress;
- (void) draw:(Graphics*)graphics;
- (void) run;
- (int32_t) getType;
@end

extern const char* NullGameCanvas_NO_GAME;
static constexpr int32_t NullGameCanvas_TYPE = 1;
// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void NullGameCanvas_staticInit(void);


#endif // ORG_ALLBINARY_GAME_DISPLAYABLE_CANVAS_NULLGAMECANVAS_H
