// Generated Code Do Not Modify
#include "org/allbinary/thread/ThreadObjectUtil.h"
#include "org/allbinary/TsUtil.h"
#include "org/allbinary/thread/NullPriorityRunnable.h"
#include "org/allbinary/thread/PriorityRunnable.h"


static ThreadObjectUtil* ThreadObjectUtil_instance;

void ThreadObjectUtil_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    ThreadObjectUtil_instance = [((ThreadObjectUtil*) [ThreadObjectUtil alloc]) init];
}

@implementation ThreadObjectUtil

- (void) initFields {
    self->NULL_PRIORITY_RUNNABLE = [((NullPriorityRunnable*) [NullPriorityRunnable alloc]) init];
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (ThreadObjectUtil*) getInstance {
        return (ThreadObjectUtil_staticInit(), ThreadObjectUtil_instance);
}


- (void) notifyObject:(id)anyType {
        [anyType notify];
}


// throws Exception
- (void) waitObject:(id)anyType {
        [anyType wait];
}


// throws Exception
- (void) waitObjectFor:(id)anyType :(int64_t)delay {
        [[TsUtil getInstance] waitFor:anyType :delay];
}


- (void) processThread:(Runnable*)runnable {
        Thread* thread = [((Thread*) [Thread alloc]) init:runnable];
        [thread start];
}

@end

