// Generated Code Do Not Modify
#include "org/allbinary/thread/SecondaryThreadPool.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/thread/ThreadPool.h"


static ThreadPool* SecondaryThreadPool_instance;

void SecondaryThreadPool_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    SecondaryThreadPool_instance = [((SecondaryThreadPool*) [SecondaryThreadPool alloc]) init:"Secondary" :1 :(ThreadPool_staticInit(), ThreadPool_NORMAL_PRIORITY)];
}

@implementation SecondaryThreadPool


+ (ThreadPool*) getInstance {
        return (SecondaryThreadPool_staticInit(), SecondaryThreadPool_instance);
}


- (instancetype) init:(const char*)poolName :(int32_t)numThreads :(int32_t)priority {
        self = [super init:poolName :numThreads :priority];
    return self;
}


- (void) runTask:(Runnable*)task {
        [self->logUtil putF:[[[[((StringMaker*) [StringMaker alloc]) init] append:[[StringUtil getInstance] toString:task]] appendlong:java_current_time_millis()] toString] :self :self->threadPoolStrings->ADD_TASK];
        [super runTask:task];
}


- (void) startTask:(Runnable*)task {
        [self->logUtil putF:[[[[[((StringMaker*) [StringMaker alloc]) init] append:self->threadPoolStrings->START_TASK] append:[[StringUtil getInstance] toString:task]] appendlong:java_current_time_millis()] toString] :self :self->commonStrings->RUN];
}


- (void) completedTask:(Runnable*)task {
        [self->logUtil putF:[[[[[((StringMaker*) [StringMaker alloc]) init] append:self->threadPoolStrings->COMPLETE_TASK] append:[[StringUtil getInstance] toString:task]] appendlong:java_current_time_millis()] toString] :self :self->commonStrings->RUN];
}

@end

