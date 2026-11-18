#ifndef ORG_ALLBINARY_GAME_DISPLAYABLE_CANVAS_GAMEFRAMERUNNABLE_H
#define ORG_ALLBINARY_GAME_DISPLAYABLE_CANVAS_GAMEFRAMERUNNABLE_H
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
@class GameFrameRunnable;
@class GameTickDisplayInfoSingleton;
@class LogUtil;
@class CommonStrings;
@class GameTickTimeDelayHelper;
@class GameTickTimeDelayHelperFactory;
@class GameRunnable;
@class AllBinaryGameCanvas;
#if __has_include("org/allbinary/graphics/displayable/GameTickDisplayInfoSingleton.h")
#include "org/allbinary/graphics/displayable/GameTickDisplayInfoSingleton.h"
#endif
#if __has_include("org/allbinary/logic/communication/log/LogUtil.h")
#include "org/allbinary/logic/communication/log/LogUtil.h"
#endif
#if __has_include("org/allbinary/time/GameTickTimeDelayHelper.h")
#include "org/allbinary/time/GameTickTimeDelayHelper.h"
#endif
#include "org/allbinary/game/displayable/canvas/GameRunnable.h"
#if __has_include("org/allbinary/game/displayable/canvas/AllBinaryGameCanvas.h")
#include "org/allbinary/game/displayable/canvas/AllBinaryGameCanvas.h"
#endif

@interface GameFrameRunnable : GameRunnable {
@public
    LogUtil* logUtil;
    GameTickDisplayInfoSingleton* gameTickDisplayInfoSingleton;
    AllBinaryGameCanvas* allBinaryGameCanvas;
    GameTickTimeDelayHelper* gameTickTimeDelayHelper;
}
- (instancetype) init:(AllBinaryGameCanvas*)allBinaryGameCanvas;
- (void) initFields;
- (void) run;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void GameFrameRunnable_staticInit(void);


#endif // ORG_ALLBINARY_GAME_DISPLAYABLE_CANVAS_GAMEFRAMERUNNABLE_H
