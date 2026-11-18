#ifndef ORG_ALLBINARY_GAME_DISPLAYABLE_CANVAS_RUNNABLECANVASSINGLETHREADSTARTRUNNABLE_H
#define ORG_ALLBINARY_GAME_DISPLAYABLE_CANVAS_RUNNABLECANVASSINGLETHREADSTARTRUNNABLE_H
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
@class RunnableCanvasSingleThreadStartRunnable;
@class RunnableCanvas;
@class LogUtil;
@class CommonStrings;
@class GameRunnable;
#if __has_include("org/allbinary/canvas/RunnableCanvas.h")
#include "org/allbinary/canvas/RunnableCanvas.h"
#endif
#if __has_include("org/allbinary/logic/communication/log/LogUtil.h")
#include "org/allbinary/logic/communication/log/LogUtil.h"
#endif
#include "org/allbinary/game/displayable/canvas/GameRunnable.h"

@interface RunnableCanvasSingleThreadStartRunnable : GameRunnable {
@public
    LogUtil* logUtil;
    RunnableCanvas* runnableCanvas;
}
- (instancetype) init:(RunnableCanvas*)demoCanvas;
- (void) initFields;
- (void) run;
- (void) processLoopSleep;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void RunnableCanvasSingleThreadStartRunnable_staticInit(void);


#endif // ORG_ALLBINARY_GAME_DISPLAYABLE_CANVAS_RUNNABLECANVASSINGLETHREADSTARTRUNNABLE_H
