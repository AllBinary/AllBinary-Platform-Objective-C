// Generated Code Do Not Modify
#include "org/allbinary/thread/PathFindingThreadPool.h"
#include "org/allbinary/thread/ThreadPool.h"
#include "org/allbinary/thread/PriorityRunnable.h"


static ThreadPool* PathFindingThreadPool_instance;

void PathFindingThreadPool_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    PathFindingThreadPool_instance = [((PathFindingThreadPool*) [PathFindingThreadPool alloc]) init:"PathFinding" :1 :1];
}

@implementation PathFindingThreadPool


+ (ThreadPool*) getInstance {
        return (PathFindingThreadPool_staticInit(), PathFindingThreadPool_instance);
}


- (instancetype) init:(const char*)poolName :(int32_t)numThreads :(int32_t)priority {
        self = [super init:poolName :numThreads :(ThreadPool_staticInit(), ThreadPool_NORMAL_PRIORITY)];
    return self;
}


- (void) runTaskWithPriority:(PriorityRunnable*)task {
        [super runTaskWithPriority:task];
}


- (void) runTask:(Runnable*)task {
        [super runTask:task];
}


- (void) startTask:(Runnable*)task {
}


- (void) completedTask:(Runnable*)task {
}

@end

