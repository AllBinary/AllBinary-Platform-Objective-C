#ifndef ORG_ALLBINARY_TIME_NOTIMEDELAYHELPER_H
#define ORG_ALLBINARY_TIME_NOTIMEDELAYHELPER_H
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
@class NoTimeDelayHelper;
@class TimeDelayHelper;
#include "org/allbinary/time/TimeDelayHelper.h"

@interface NoTimeDelayHelper : TimeDelayHelper {
@public
}
- (instancetype) init;
- (bool) isTimeTNT;
- (bool) isTimeSinceTNT:(int32_t)delay;
- (bool) isTime:(int64_t)currentTime;
- (bool) isTimeSince:(int32_t)delay :(int64_t)currentTime;
@end

extern NoTimeDelayHelper* NoTimeDelayHelper_SINGLETON;
// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void NoTimeDelayHelper_staticInit(void);


#endif // ORG_ALLBINARY_TIME_NOTIMEDELAYHELPER_H
