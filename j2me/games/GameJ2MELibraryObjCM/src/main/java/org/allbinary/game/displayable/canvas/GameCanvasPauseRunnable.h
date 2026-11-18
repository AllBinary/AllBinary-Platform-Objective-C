#ifndef ORG_ALLBINARY_GAME_DISPLAYABLE_CANVAS_GAMECANVASPAUSERUNNABLE_H
#define ORG_ALLBINARY_GAME_DISPLAYABLE_CANVAS_GAMECANVASPAUSERUNNABLE_H
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
@class GameCanvasPauseRunnable;
@class AndroidUtil;
@class Features;
@class OpenGLFeatureFactory;
@class LogUtil;
@class CommonStrings;
@class GameRunnable;
@class AllBinaryGameCanvas;
// #include "org/allbinary/AndroidUtil.h"
#if __has_include("org/allbinary/logic/communication/log/LogUtil.h")
#include "org/allbinary/logic/communication/log/LogUtil.h"
#endif
#include "org/allbinary/game/displayable/canvas/GameRunnable.h"
#if __has_include("org/allbinary/game/displayable/canvas/AllBinaryGameCanvas.h")
#include "org/allbinary/game/displayable/canvas/AllBinaryGameCanvas.h"
#endif

@interface GameCanvasPauseRunnable : GameRunnable {
@public
    LogUtil* logUtil;
    AllBinaryGameCanvas* allBinaryGameCanvas;
}
- (instancetype) init:(AllBinaryGameCanvas*)allBinaryGameCanvas;
- (void) initFields;
- (void) run;
- (void) processLoopSleep;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void GameCanvasPauseRunnable_staticInit(void);


#endif // ORG_ALLBINARY_GAME_DISPLAYABLE_CANVAS_GAMECANVASPAUSERUNNABLE_H
