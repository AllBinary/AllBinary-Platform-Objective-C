// Generated Code Do Not Modify
#include "org/allbinary/thread/ThreadUtil.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"


static ThreadUtil* ThreadUtil_instance;

void ThreadUtil_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    ThreadUtil_instance = [((ThreadUtil*) [ThreadUtil alloc]) init];
}

@implementation ThreadUtil

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
    self->JOIN = "join";
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (ThreadUtil*) getInstance {
        return (ThreadUtil_staticInit(), ThreadUtil_instance);
}


- (bool) isRunning:(Thread*)thread {
        if (thread != nil && [thread isAlive]) {
            return true;
        } else {
            return false;
        }
}


// throws Exception
- (void) join:(Thread*)thread {
        if ([[ThreadUtil getInstance] isRunning:thread]) {
            [self->logUtil putF:"Waiting for Thread To Join/End" :self :self->JOIN];
            [thread join];
        }
}

@end

