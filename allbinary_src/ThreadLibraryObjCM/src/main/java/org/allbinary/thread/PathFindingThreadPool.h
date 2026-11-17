#ifndef ORG_ALLBINARY_THREAD_PATHFINDINGTHREADPOOL_H
#define ORG_ALLBINARY_THREAD_PATHFINDINGTHREADPOOL_H
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
@class PathFindingThreadPool;
@class ThreadPool;
@class PriorityRunnable;
#include "java/lang/Runnable.h"
#include "org/allbinary/thread/ThreadPool.h"

//This is mainly for network communications.
@interface PathFindingThreadPool : ThreadPool {
@public
}
- (instancetype) init:(const char*)poolName :(int32_t)numThreads :(int32_t)priority;
+ (ThreadPool*) getInstance;
- (void) runTaskWithPriority:(PriorityRunnable*)task;
- (void) runTask:(Runnable*)task;
- (void) startTask:(Runnable*)task;
- (void) completedTask:(Runnable*)task;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void PathFindingThreadPool_staticInit(void);


#endif // ORG_ALLBINARY_THREAD_PATHFINDINGTHREADPOOL_H
