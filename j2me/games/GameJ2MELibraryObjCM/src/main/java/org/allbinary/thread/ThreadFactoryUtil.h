#ifndef ORG_ALLBINARY_THREAD_THREADFACTORYUTIL_H
#define ORG_ALLBINARY_THREAD_THREADFACTORYUTIL_H
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
@class ThreadFactoryUtil;
@class J2MEUtil;
@class RunnableCanvas;
@class AllBinaryGameCanvas;
@class DemoCanvas;
@class GameCanvasRunnableInterface;
@class RunnableCanvasSingleThreadStartRunnable;
@class LogUtil;
@class PreLogUtil;
@class StringMaker;
@class StringUtil;
@class CommonStrings;
@class ABRunnable;
@class PrimaryThreadPool;
@class ThreadPool;
#if __has_include("org/allbinary/logic/communication/log/LogUtil.h")
#include "org/allbinary/logic/communication/log/LogUtil.h"
#endif
#include "java/lang/Thread.h"
#include "java/lang/Runnable.h"

@interface ThreadFactoryUtil : ABObject {
@public
    LogUtil* logUtil;
}
- (instancetype) init;
- (void) initFields;
+ (ThreadFactoryUtil*) getInstance;
- (Thread*) getInstanceGameCanvasRunnable:(GameCanvasRunnableInterface*)runnable;
- (Thread*) getInstanceForRunnable:(ABRunnable*)runnable;
- (Thread*) getInstanceType:(Runnable*)runnable :(int32_t)type;
- (void) start:(Thread*)thread;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void ThreadFactoryUtil_staticInit(void);


#endif // ORG_ALLBINARY_THREAD_THREADFACTORYUTIL_H
