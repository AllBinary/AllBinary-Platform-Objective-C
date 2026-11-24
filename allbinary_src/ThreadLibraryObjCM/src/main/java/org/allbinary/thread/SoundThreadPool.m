// Generated Code Do Not Modify
#include "org/allbinary/thread/SoundThreadPool.h"
#include "org/allbinary/thread/ThreadPool.h"


static ThreadPool* SoundThreadPool_instance;

void SoundThreadPool_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    SoundThreadPool_instance = ((ThreadPool*) [((ThreadPool*) [ThreadPool alloc]) init:"Sound" :1 :(ThreadPool_staticInit(), ThreadPool_NORMAL_PRIORITY)]);
}

@implementation SoundThreadPool

- (instancetype) init {
    self = [super init];
    return self;
}


+ (ThreadPool*) getInstance {
        return (SoundThreadPool_staticInit(), SoundThreadPool_instance);
}

@end

