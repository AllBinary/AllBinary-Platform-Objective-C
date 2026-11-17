#ifndef ORG_ALLBINARY_THREAD_THREADOBJECTUTIL_H
#define ORG_ALLBINARY_THREAD_THREADOBJECTUTIL_H
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
@class ThreadObjectUtil;
@class TsUtil;
@class NullPriorityRunnable;
@class PriorityRunnable;
#include "java/lang/Thread.h"
#include "java/lang/Runnable.h"
#if __has_include("org/allbinary/thread/PriorityRunnable.h")
#include "org/allbinary/thread/PriorityRunnable.h"
#endif

@interface ThreadObjectUtil : ABObject {
@public
    PriorityRunnable* NULL_PRIORITY_RUNNABLE;
}
- (instancetype) init;
- (void) initFields;
+ (ThreadObjectUtil*) getInstance;
- (void) notifyObject:(id)anyType;
- (void) waitObject:(id)anyType;
- (void) waitObjectFor:(id)anyType :(int64_t)delay;
- (void) processThread:(Runnable*)runnable;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void ThreadObjectUtil_staticInit(void);


#endif // ORG_ALLBINARY_THREAD_THREADOBJECTUTIL_H
