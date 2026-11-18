#ifndef ORG_ALLBINARY_CANVAS_BASEGAMESTATISTICS_H
#define ORG_ALLBINARY_CANVAS_BASEGAMESTATISTICS_H
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
// package org.allbinary.canvas

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class BaseGameStatistics;
@class PrimitiveLongSingleton;
@class ScaleFactorFactory;
@class StringMaker;
@class StringUtil;
@class CommonSeps;
@class GameTickTimeDelayHelper;
@class GameTickTimeDelayHelperFactory;
@class TimeDelayHelper;
#if __has_include("org/allbinary/logic/math/PrimitiveLongSingleton.h")
#include "org/allbinary/logic/math/PrimitiveLongSingleton.h"
#endif
#if __has_include("org/allbinary/time/GameTickTimeDelayHelper.h")
#include "org/allbinary/time/GameTickTimeDelayHelper.h"
#endif
#if __has_include("org/allbinary/time/TimeDelayHelper.h")
#include "org/allbinary/time/TimeDelayHelper.h"
#endif
#include "java/lang/Integer.h"
#include "java/lang/Long.h"

@interface BaseGameStatistics : ABObject {
@public
    TimeDelayHelper* timeDelayHelper;
    TimeDelayHelper* updateDelayHelper;
    int64_t totalRefreshes;
    int64_t totalFrames;
    GameTickTimeDelayHelper* gameTickTimeDelayHelper;
    int32_t DEFAULT_SCALE_FACTOR;
    const char* NOT;
    const char* EMPTY_STRING;
    const char** STRING_ARRAY;
    uint16_t SPACE_CHAR;
    uint16_t PLUS_CHAR;
    uint16_t X_CHAR;
    uint16_t** CHAR_ARRAY;
    PrimitiveLongSingleton* primitiveLongSingleton;
}
- (instancetype) init;
- (void) initFields;
- (void) init_;
- (void) add:(const char*)string;
- (void) process;
- (void) nextFrame;
- (void) nextRefresh;
- (int16_t) getRefreshRate;
- (TimeDelayHelper*) getTimeDelayHelper;
- (uint16_t**) to2DCharArray;
- (const char**) toStringArray;
- (const char*) toStringAt:(int64_t)totalTime;
- (const char*) toString;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void BaseGameStatistics_staticInit(void);

#if __has_include("org/allbinary/time/TimeDelayHelper.h")
#include "org/allbinary/time/TimeDelayHelper.h"
#endif

#endif // ORG_ALLBINARY_CANVAS_BASEGAMESTATISTICS_H
