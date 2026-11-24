// Generated Code Do Not Modify
#include "org/allbinary/thread/MusicThreadPool.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/thread/ThreadPool.h"
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/string/StringUtil.h")
#include "org/allbinary/logic/string/StringUtil.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/string/StringUtil.h")
#include "org/allbinary/logic/string/StringUtil.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/string/StringUtil.h")
#include "org/allbinary/logic/string/StringUtil.h"
#endif


static ThreadPool* MusicThreadPool_THREAD_POOL;

void MusicThreadPool_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    MusicThreadPool_THREAD_POOL = ((ThreadPool*) [((ThreadPool*) [ThreadPool alloc]) init:"Music" :2 :(ThreadPool_staticInit(), ThreadPool_NORMAL_PRIORITY)]);
}

@implementation MusicThreadPool


+ (ThreadPool*) getInstance {
        return (MusicThreadPool_staticInit(), MusicThreadPool_THREAD_POOL);
}


- (instancetype) init:(const char*)poolName :(int32_t)numThreads :(int32_t)priority {
        self = [super init:poolName :numThreads :priority];
    return self;
}


- (void) runTask:(Runnable*)task {
        [self->logUtil putF:[[[((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]) append:[[StringUtil getInstance] toString:task]] appendlong:java_current_time_millis()] toString] :self :self->threadPoolStrings->ADD_TASK];
        [super runTask:task];
}


- (void) startTask:(Runnable*)task {
        [self->logUtil putF:[[[[((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]) append:self->threadPoolStrings->START_TASK] append:[[StringUtil getInstance] toString:task]] appendlong:java_current_time_millis()] toString] :self :self->commonStrings->RUN];
}


- (void) completedTask:(Runnable*)task {
        [self->logUtil putF:[[[[((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]) append:self->threadPoolStrings->COMPLETE_TASK] append:[[StringUtil getInstance] toString:task]] appendlong:java_current_time_millis()] toString] :self :self->commonStrings->RUN];
}

@end

