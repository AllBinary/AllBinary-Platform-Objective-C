#ifndef ORG_ALLBINARY_TIME_TIMEUTIL_H
#define ORG_ALLBINARY_TIME_TIMEUTIL_H
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
@class TimeUtil;
#include "java/util/Calendar.h"
#include "java/lang/Integer.h"

@interface TimeUtil : ABObject {
@public
}
- (instancetype) init;
+ (TimeUtil*) getInstance;
- (void) setCalendar:(Calendar*)calendar :(const char*)yearString :(const char*)monthString :(const char*)dayString :(const char*)hourString;
- (void) setCalendarWithTime:(Calendar*)calendar :(const char*)yearString :(const char*)monthString :(const char*)dayString :(const char*)hourString :(const char*)minuteString :(const char*)secondString;
- (void) setExpirationCalendar:(Calendar*)calendar :(const char*)yearsString :(const char*)monthsString :(const char*)daysString :(const char*)hoursString :(const char*)minutesString :(const char*)secondsString;
- (int64_t) getTotalTime:(const char*)yearString :(const char*)monthString :(const char*)dayString :(const char*)hourString :(const char*)minuteString :(const char*)secondString;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void TimeUtil_staticInit(void);


#endif // ORG_ALLBINARY_TIME_TIMEUTIL_H
