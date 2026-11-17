#ifndef ORG_ALLBINARY_THREAD_THREADPOOL_H
#define ORG_ALLBINARY_THREAD_THREADPOOL_H
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
// package org.allbinary.thread

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class ThreadPool;
@class LogUtil;
@class StringMaker;
@class CommonStrings;
@class BasicArrayList;
@class BasicArrayListD;
@class BasicArrayListUtil;
@class NullRunnable;
@class ThreadPoolStrings;
@class ThreadObjectUtil;
@class PooledThread;
@class PriorityRunnable;
#if __has_include("org/allbinary/logic/communication/log/LogUtil.h")
#include "org/allbinary/logic/communication/log/LogUtil.h"
#endif
#if __has_include("org/allbinary/string/CommonStrings.h")
#include "org/allbinary/string/CommonStrings.h"
#endif
#if __has_include("org/allbinary/util/BasicArrayList.h")
#include "org/allbinary/util/BasicArrayList.h"
#endif
#include "java/lang/Thread.h"
#include "java/lang/Runnable.h"
#if __has_include("org/allbinary/thread/NullRunnable.h")
#include "org/allbinary/thread/NullRunnable.h"
#endif
#if __has_include("org/allbinary/thread/ThreadPoolStrings.h")
#include "org/allbinary/thread/ThreadPoolStrings.h"
#endif
#if __has_include("org/allbinary/thread/ThreadObjectUtil.h")
#include "org/allbinary/thread/ThreadObjectUtil.h"
#endif

@interface ThreadPool : ABObject {
@public
    LogUtil* logUtil;
    CommonStrings* commonStrings;
    NullRunnable* NULL_RUNNABLE;
    ThreadPoolStrings* threadPoolStrings;
    ThreadObjectUtil* threadObjectUtil;
    const char* poolName;
    int32_t priority;
    bool isAlive;
    BasicArrayList* taskQueue;
    int32_t threadID;
    int32_t numThreads;
    bool runningTask;
}
- (instancetype) init:(const char*)poolName :(int32_t)numThreads :(int32_t)priority;
- (void) initFields;
- (void) init_;
- (void) runAPriorityTask;
- (void) runTaskWithPriority:(PriorityRunnable*)task;
- (void) runTask:(Runnable*)task;
- (Runnable*) getTask;
- (void) clear;
- (void) close;
- (void) join;
- (bool) isBusy;
- (void) threadStarted;
- (void) threadStopped;
- (void) startTask:(Runnable*)task;
- (void) completedTask:(Runnable*)task;
- (const char*) createName;
@end

extern int32_t ThreadPool_NORMAL_PRIORITY;
// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void ThreadPool_staticInit(void);


#endif // ORG_ALLBINARY_THREAD_THREADPOOL_H
