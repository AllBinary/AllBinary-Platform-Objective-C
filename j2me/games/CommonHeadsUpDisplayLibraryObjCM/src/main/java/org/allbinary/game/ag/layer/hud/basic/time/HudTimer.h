#ifndef ORG_ALLBINARY_GAME_AG_LAYER_HUD_BASIC_TIME_HUDTIMER_H
#define ORG_ALLBINARY_GAME_AG_LAYER_HUD_BASIC_TIME_HUDTIMER_H
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
// package org.allbinary.game.ag.layer.hud.basic.time

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class HudTimer;
@class PrimitiveLongSingleton;
@class PrimitiveLongUtil;
@class GameTickTimeDelayHelper;
@class GameTickTimeDelayHelperFactory;
#if __has_include("org/allbinary/logic/math/PrimitiveLongUtil.h")
#include "org/allbinary/logic/math/PrimitiveLongUtil.h"
#endif
#if __has_include("org/allbinary/time/GameTickTimeDelayHelper.h")
#include "org/allbinary/time/GameTickTimeDelayHelper.h"
#endif

@interface HudTimer : ABObject {
@public
    int64_t startTime;
    int64_t hundredthTime;
    int64_t maxTime;
    int64_t modifier;
    uint16_t* hundrethsString;
    int32_t totalDigits;
    PrimitiveLongUtil* primitiveLongUtil;
    uint16_t* MAX;
    GameTickTimeDelayHelper* gameTickTimeDelayHelper;
}
- (instancetype) init:(int32_t)maxTime;
- (void) initFields;
- (void) start;
- (int64_t) get;
- (void) update;
- (void) reduce:(int32_t)value;
- (void) add:(int32_t)value;
- (uint16_t*) getTimeChars;
- (int32_t) getCurrentTotalDigits;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void HudTimer_staticInit(void);


#endif // ORG_ALLBINARY_GAME_AG_LAYER_HUD_BASIC_TIME_HUDTIMER_H
