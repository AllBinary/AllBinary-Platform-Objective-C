#ifndef ORG_ALLBINARY_GAME_DISPLAYABLE_CANVAS_GAMERUNNABLE_H
#define ORG_ALLBINARY_GAME_DISPLAYABLE_CANVAS_GAMERUNNABLE_H
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
@class GameRunnable;
@class DisplayInfoSingleton;
#include "java/lang/Thread.h"
#include "java/lang/Runnable.h"

@interface GameRunnable : ABObject <Runnable> {
@public
    int32_t WAIT;
    int32_t FAST;
    int64_t waitInMillis;
}
- (instancetype) init;
- (void) initFields;
- (void) run;
- (void) processLoopSleep;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void GameRunnable_staticInit(void);


#endif // ORG_ALLBINARY_GAME_DISPLAYABLE_CANVAS_GAMERUNNABLE_H
