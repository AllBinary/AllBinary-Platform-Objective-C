#ifndef ORG_ALLBINARY_GAME_DISPLAYABLE_CANVAS_DEMOGAMESTARTUPRUNNABLE_H
#define ORG_ALLBINARY_GAME_DISPLAYABLE_CANVAS_DEMOGAMESTARTUPRUNNABLE_H
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
@class DemoGameStartupRunnable;
@class LogUtil;
@class CommonStrings;
@class ABRunnable;
@class DemoCanvas;
#if __has_include("org/allbinary/logic/communication/log/LogUtil.h")
#include "org/allbinary/logic/communication/log/LogUtil.h"
#endif
#include "org/allbinary/thread/ABRunnable.h"
#if __has_include("org/allbinary/game/displayable/canvas/DemoCanvas.h")
#include "org/allbinary/game/displayable/canvas/DemoCanvas.h"
#endif

@interface DemoGameStartupRunnable : ABRunnable {
@public
    LogUtil* logUtil;
    DemoCanvas* demoCanvas;
}
- (instancetype) init:(DemoCanvas*)demoCanvas;
- (void) initFields;
- (void) run;
- (int32_t) getType;
@end

static constexpr int32_t DemoGameStartupRunnable_TYPE = 4;
// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void DemoGameStartupRunnable_staticInit(void);


#endif // ORG_ALLBINARY_GAME_DISPLAYABLE_CANVAS_DEMOGAMESTARTUPRUNNABLE_H
