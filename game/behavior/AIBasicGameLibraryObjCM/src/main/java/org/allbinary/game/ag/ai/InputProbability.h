#ifndef ORG_ALLBINARY_GAME_AG_AI_INPUTPROBABILITY_H
#define ORG_ALLBINARY_GAME_AG_AI_INPUTPROBABILITY_H
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
// package org.allbinary.game.ag.ai

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class InputProbability;
@class StdUtil;
@class SmallIntegerSingletonFactory;
@class TimeDelayHelper;
@class ABHashtable;
#if __has_include("org/allbinary/time/TimeDelayHelper.h")
#include "org/allbinary/time/TimeDelayHelper.h"
#endif
#include "java/lang/Integer.h"

@interface InputProbability : ABObject {
@public
    int32_t** likelyhoodIntegerArray;
    int32_t* repeatLikelyhoodIntegerArray;
    int32_t max;
    TimeDelayHelper* timeDelayHelper;
}
- (instancetype) init:(int32_t**)likelyhoodIntegerArray :(int32_t*)repeatLikelyhoodIntegerArray :(int32_t)max :(TimeDelayHelper*)timeDelayHelper;
- (void) initFields;
- (int32_t**) getLikelyhoodIntegerArray;
- (int32_t*) getRepeatLikelyhoodIntegerArray;
- (int32_t) getMax;
- (TimeDelayHelper*) getTimeDelayHelper;
- (ABHashtable*) toHashtable;
@end

extern int32_t InputProbability_INPUT_PROBABILITY;
// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void InputProbability_staticInit(void);

#if __has_include("org/allbinary/time/TimeDelayHelper.h")
#include "org/allbinary/time/TimeDelayHelper.h"
#endif
#if __has_include("org/allbinary/util/ABHashtable.h")
#include "org/allbinary/util/ABHashtable.h"
#endif

#endif // ORG_ALLBINARY_GAME_AG_AI_INPUTPROBABILITY_H
