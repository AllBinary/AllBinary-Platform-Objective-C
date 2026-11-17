// Generated Code Do Not Modify
#include "org/allbinary/thread/PrimaryThreadPool.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/thread/ThreadPool.h"


static ThreadPool* PrimaryThreadPool_THREAD_POOL;

void PrimaryThreadPool_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    PrimaryThreadPool_THREAD_POOL = [((ThreadPool*) [ThreadPool alloc]) init:"Primary" :1 :(ThreadPool_staticInit(), ThreadPool_NORMAL_PRIORITY)];
}

@implementation PrimaryThreadPool


+ (ThreadPool*) getInstance {
        return (PrimaryThreadPool_staticInit(), PrimaryThreadPool_THREAD_POOL);
}


- (instancetype) init:(const char*)poolName :(int32_t)numThreads :(int32_t)priority {
        self = [super init:poolName :numThreads :priority];
    return self;
}


- (void) runTask:(Runnable*)task {
        [self->logUtil putF:[[[[((StringMaker*) [StringMaker alloc]) init] append:[[StringUtil getInstance] toString:task]] appendlong:((int64_t) java_current_time_millis())] toString] :self :self->threadPoolStrings->ADD_TASK];
        [super runTask:task];
}


- (void) startTask:(Runnable*)task {
        [self->logUtil putF:[[[[((StringMaker*) [StringMaker alloc]) init] append:self->threadPoolStrings->START_TASK] append:[[StringUtil getInstance] toString:task]] toString] :self :self->commonStrings->RUN];
}


- (void) completedTask:(Runnable*)task {
        [self->logUtil putF:[[[[((StringMaker*) [StringMaker alloc]) init] append:self->threadPoolStrings->COMPLETE_TASK] append:[[StringUtil getInstance] toString:task]] toString] :self :self->commonStrings->RUN];
}

@end

