#ifndef ORG_ALLBINARY_CANVAS_RUNNABLECANVAS_H
#define ORG_ALLBINARY_CANVAS_RUNNABLECANVAS_H
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
@class RunnableCanvas;
@class CommandListener;
@class TsUtil;
@class NullWaitGameRunnable;
@class MyCanvas;
@class ABSystemWrapper;
@class NullUtil;
@class StdUtil;
@class StringMaker;
@class StringUtil;
@class CommonLabels;
@class CommonStrings;
@class NullThread;
@class RunnableInterface;
@class ThreadObjectUtil;
@class TimeDelayHelper;
@class BasicArrayList;
@class Processor;
@class RunnableCanvasRefreshHelper;
#if __has_include("org/allbinary/TsUtil.h")
#include "org/allbinary/TsUtil.h"
#endif
#include "org/allbinary/graphics/displayable/MyCanvas.h"
#if __has_include("org/allbinary/logic/ABSystemWrapper.h")
#include "org/allbinary/logic/ABSystemWrapper.h"
#endif
#if __has_include("org/allbinary/logic/NullUtil.h")
#include "org/allbinary/logic/NullUtil.h"
#endif
#if __has_include("org/allbinary/logic/StdUtil.h")
#include "org/allbinary/logic/StdUtil.h"
#endif
#if __has_include("org/allbinary/string/CommonLabels.h")
#include "org/allbinary/string/CommonLabels.h"
#endif
#include "org/allbinary/thread/RunnableInterface.h"
#if __has_include("org/allbinary/thread/ThreadObjectUtil.h")
#include "org/allbinary/thread/ThreadObjectUtil.h"
#endif
#if __has_include("org/allbinary/time/TimeDelayHelper.h")
#include "org/allbinary/time/TimeDelayHelper.h"
#endif
#include "java/lang/Thread.h"
#if __has_include("org/allbinary/canvas/Processor.h")
#include "org/allbinary/canvas/Processor.h"
#endif

@interface RunnableCanvas : MyCanvas <RunnableInterface> {
@public
    NullUtil* nullUtil;
    StdUtil* stdUtil;
    ABSystemWrapper* systemWrapper;
    TsUtil* tsUtil;
    Thread* thread;
    Thread* currentThread;
    bool running;
    TimeDelayHelper* loopTimeHelper;
    Processor* runnableCanvasRefreshHelper;
    CommonLabels* commonLabels;
    ThreadObjectUtil* threadObjectUtil;
    const char* SET_RUNNING;
    const char* IS_RUNNING;
    const char* THREAD;
    const char* NOT_EQUAL;
    const char* PAUSE_SLEEP;
    const char* START_PAUSE;
    const char* END_PAUSE;
    const char* PROCESS_LOOP_SLEEP;
    int64_t pauseWait;
    bool notified;
}
- (instancetype) init:(CommandListener*)commandListener :(BasicArrayList*)childNameList :(bool)hasParam;
- (void) initFields;
- (void) initCommands:(CommandListener*)cmdListener;
- (bool) isMainCanvas;
- (void) setThread:(Thread*)thread;
- (void) setRunning:(bool)running;
- (bool) isRunning;
- (TimeDelayHelper*) getLoopTimeHelperP;
- (void) setWait:(int32_t)wait;
- (int32_t) getWait;
- (void) setCurrentThread;
- (void) setCurrentThreadFake;
- (void) showNotify;
- (void) stopWaiting;
- (void) waitOnNotify:(int64_t)wait;
- (void) processSleep;
- (bool) isPausable;
- (void) processGameSleep:(int64_t)sleep;
- (void) processLoopSleep;
- (bool) isSingleThread;
- (void) run;
- (void) end2;
- (int32_t) getType;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void RunnableCanvas_staticInit(void);

#if __has_include("org/allbinary/time/TimeDelayHelper.h")
#include "org/allbinary/time/TimeDelayHelper.h"
#endif

#endif // ORG_ALLBINARY_CANVAS_RUNNABLECANVAS_H
