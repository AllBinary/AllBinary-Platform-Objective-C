#ifndef ORG_ALLBINARY_GAME_MIDLET_CREATEGAMERUNNABLE_H
#define ORG_ALLBINARY_GAME_MIDLET_CREATEGAMERUNNABLE_H
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
@class CreateGameRunnable;
@class ProgressCanvas;
@class ProgressCanvasFactory;
@class MyCommandsFactory;
@class LogUtil;
@class CommonStrings;
@class ABHashtable;
@class DemoGameMidlet;
@class DemoGameMidletEvent;
@class DemoGameMidletStateFactory;
@class DemoGameMidletEventHandler;
#if __has_include("org/allbinary/logic/communication/log/LogUtil.h")
#include "org/allbinary/logic/communication/log/LogUtil.h"
#endif
#if __has_include("org/allbinary/string/CommonStrings.h")
#include "org/allbinary/string/CommonStrings.h"
#endif
#if __has_include("org/allbinary/util/ABHashtable.h")
#include "org/allbinary/util/ABHashtable.h"
#endif
#include "java/lang/Runnable.h"
#if __has_include("org/allbinary/game/midlet/DemoGameMidlet.h")
#include "org/allbinary/game/midlet/DemoGameMidlet.h"
#endif
#if __has_include("org/allbinary/game/midlet/DemoGameMidletEvent.h")
#include "org/allbinary/game/midlet/DemoGameMidletEvent.h"
#endif

@interface CreateGameRunnable : ABObject <Runnable> {
@public
    LogUtil* logUtil;
    CommonStrings* commonStrings;
    DemoGameMidlet* demoGameMidlet;
    ABHashtable* hashtable;
    DemoGameMidletEvent* startGameMidletEvent;
}
- (instancetype) init:(DemoGameMidlet*)demoGameMidlet :(ABHashtable*)hashtable;
- (void) initFields;
- (void) run;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void CreateGameRunnable_staticInit(void);


#endif // ORG_ALLBINARY_GAME_MIDLET_CREATEGAMERUNNABLE_H
