// Generated Code Do Not Modify
#include "org/allbinary/thread/ThreadPool.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/string/CommonStrings.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/util/BasicArrayListD.h"
#include "org/allbinary/util/BasicArrayListUtil.h"
#include "org/allbinary/thread/NullRunnable.h"
#include "org/allbinary/thread/ThreadPoolStrings.h"
#include "org/allbinary/thread/ThreadObjectUtil.h"
#include "org/allbinary/thread/PooledThread.h"
#include "org/allbinary/thread/PriorityRunnable.h"


static const char* ThreadPool_ROOT_NAME = "-PooledThread-";
int32_t ThreadPool_NORMAL_PRIORITY;

void ThreadPool_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    ThreadPool_NORMAL_PRIORITY = (Thread_staticInit(), Thread_NORM_PRIORITY);
}

@implementation ThreadPool

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
    self->commonStrings = [CommonStrings getInstance];
    self->NULL_RUNNABLE = [NullRunnable getInstance];
    self->threadPoolStrings = [ThreadPoolStrings getInstance];
    self->threadObjectUtil = [ThreadObjectUtil getInstance];
    
    
    self->isAlive = false;
    self->taskQueue = [[BasicArrayListUtil getInstance] getImmutableInstance];
    self->threadID = 0;
    
    self->runningTask = false;
}


- (instancetype) init:(const char*)poolName :(int32_t)numThreads :(int32_t)priority {
    self = [super init];
    [self initFields];
        self->poolName = poolName;
        self->priority = priority;
        self->numThreads = numThreads;
    return self;
}


- (void) init_ {
        if (!self->isAlive) {
            self->isAlive = true;
            self->taskQueue = [((BasicArrayListD*) [BasicArrayListD alloc]) init];
            PooledThread* pooledThread = nullptr;
            for (int32_t i = 0; i < self->numThreads; i++) {
                pooledThread = [((PooledThread*) [PooledThread alloc]) init:self];
                [pooledThread setPriority:self->priority];
                [pooledThread start];
            }
        }
}


// throws Exception
- (void) runAPriorityTask {
        java_throw(java_exception_new("RuntimeException", ""));
}


- (void) runTaskWithPriority:(PriorityRunnable*)task {
        java_monitor_enter(self);
        {
            if (!self->isAlive) {
                [self init_];
            }
            if (task != nil) {
                int32_t size = [self->taskQueue size];
                PriorityRunnable* runnable = nullptr;
                PriorityRunnable* lowerPriorityRunnable = self->threadObjectUtil->NULL_PRIORITY_RUNNABLE;
                for (int32_t index = 0; index < size; index++) {
                    runnable = ((PriorityRunnable*) [self->taskQueue get:index]);
                    if ([runnable getPriority] > [task getPriority]) {
                        lowerPriorityRunnable = runnable;
                        break;
                    }
                }
                if (lowerPriorityRunnable == self->threadObjectUtil->NULL_PRIORITY_RUNNABLE) {
                    [self->taskQueue add:task];
                } else {
                    int32_t index = [self->taskQueue indexOf:lowerPriorityRunnable];
                    [self->taskQueue addAt:index :task];
                }
                [self notify];
            }
        }
        java_monitor_exit(self);
}


- (void) runTask:(Runnable*)task {
        java_monitor_enter(self);
        {
            if (!self->isAlive) {
                [self init_];
            }
            if (task != nil) {
                [self->taskQueue add:task];
                [self notify];
            }
        }
        java_monitor_exit(self);
}


// throws InterruptedException
- (Runnable*) getTask {
        java_monitor_enter(self);
        {
            while ([self->taskQueue size] == 0) {
                if (!self->isAlive) {
                    return self->NULL_RUNNABLE;
                }
                [self wait];
            }
            Runnable* runnable = ((Runnable*) [self->taskQueue removeAt:0]);
            return runnable;
        }
        java_monitor_exit(self);
}


- (void) clear {
        java_monitor_enter(self);
        {
            if (self->isAlive) {
                [self->taskQueue clear];
            }
        }
        java_monitor_exit(self);
}


- (void) close {
        java_monitor_enter(self);
        {
            if (self->isAlive) {
                self->isAlive = false;
                [self->taskQueue clear];
            }
        }
        java_monitor_exit(self);
}


- (void) join {
        java_monitor_enter(self);
        {
            self->isAlive = false;
            [self->taskQueue clear];
            [self notifyAll];
        }
        java_monitor_exit(self);
}


- (bool) isBusy {
        if (!self->isAlive) {
            return false;
        }
        if ([self->taskQueue size] > 0) {
            return true;
        }
        if (self->runningTask) {
            return true;
        }
        return false;
}


- (void) threadStarted {
}


- (void) threadStopped {
        if (self->numThreads == 1) {
            self->isAlive = false;
            [self->taskQueue clear];
        }
}


- (void) startTask:(Runnable*)task {
}


- (void) completedTask:(Runnable*)task {
}


- (const char*) createName {
        return [[[[[((StringMaker*) [StringMaker alloc]) init] append:self->poolName] append:ThreadPool_ROOT_NAME] appendint:self->threadID++] toString];
}

@end

