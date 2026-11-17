#ifndef ORG_ALLBINARY_TIME_TIMEDELAYHELPER_H
#define ORG_ALLBINARY_TIME_TIMEDELAYHELPER_H
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
// package org.allbinary.time

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class TimeDelayHelper;
@class StringMaker;
@class StringUtil;
@class CommonLabels;
#include "java/lang/System.h"
#include "java/lang/Long.h"

@interface TimeDelayHelper : ABObject {
@public
    int64_t startTime;
    int64_t elapsedTimeAtPause;
    int32_t delay;
}
- (instancetype) init:(int32_t)delay;
- (void) initFields;
- (bool) isTimeTNT;
- (bool) isTimeSinceTNT:(int32_t)delay;
- (bool) isTime:(int64_t)currentTime;
- (bool) isTimeWithoutReset:(int64_t)currentTime;
- (bool) isTimeSince:(int32_t)delay :(int64_t)currentTime;
- (int64_t) getElapsedTNT;
- (int64_t) getElapsed:(int64_t)currentTime;
- (bool) isElapsed:(int64_t)currentTime :(int64_t)time;
- (bool) isElapsedTNT:(int64_t)time;
- (void) setStartTime:(int64_t)startTime;
- (int64_t) getStartTime;
- (void) setStartTimeTNT;
- (void) pause;
- (bool) resume;
- (const char*) toStringAt:(int64_t)currentTime;
- (const char*) toString;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void TimeDelayHelper_staticInit(void);


#endif // ORG_ALLBINARY_TIME_TIMEDELAYHELPER_H
