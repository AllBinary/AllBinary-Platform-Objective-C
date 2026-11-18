#ifndef ORG_ALLBINARY_GAME_AG_AI_SCROLLER_TIMEDFIREAI_H
#define ORG_ALLBINARY_GAME_AG_AI_SCROLLER_TIMEDFIREAI_H
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
// package org.allbinary.game.ag.ai.scroller

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class TimedFireAI;
@class Canvas;
@class BasicAI;
@class GameInput;
@class AllBinaryLayer;
@class AllBinaryLayerManager;
@class SmallIntegerSingletonFactory;
@class GameTickTimeDelayHelperFactory;
@class TimeDelayHelper;
@class TimeFiredInterface;
#include "org/allbinary/game/ai/BasicAI.h"
#if __has_include("org/allbinary/time/TimeDelayHelper.h")
#include "org/allbinary/time/TimeDelayHelper.h"
#endif
#include "java/lang/Integer.h"

@interface TimedFireAI : BasicAI {
@public
    TimeDelayHelper* maxFireDelayTimeHelper;
    int32_t delay;
}
- (instancetype) init:(int32_t)delay :(AllBinaryLayer*)ownerLayerInterface :(GameInput*)gameInput;
- (void) initFields;
- (void) processAI:(AllBinaryLayerManager*)allBinaryLayerManager;
@end

extern int32_t TimedFireAI_TIME;
// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void TimedFireAI_staticInit(void);


#endif // ORG_ALLBINARY_GAME_AG_AI_SCROLLER_TIMEDFIREAI_H
