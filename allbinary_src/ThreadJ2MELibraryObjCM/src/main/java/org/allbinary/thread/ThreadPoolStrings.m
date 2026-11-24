// Generated Code Do Not Modify
#include "org/allbinary/thread/ThreadPoolStrings.h"


static ThreadPoolStrings* ThreadPoolStrings_instance;

void ThreadPoolStrings_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    ThreadPoolStrings_instance = ((ThreadPoolStrings*) [((ThreadPoolStrings*) [ThreadPoolStrings alloc]) init]);
}

@implementation ThreadPoolStrings

- (void) initFields {
    self->ADD_TASK = "addTask";
    self->START_TASK = "Started Task: ";
    self->COMPLETE_TASK = "Completed Task: ";
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (ThreadPoolStrings*) getInstance {
        return (ThreadPoolStrings_staticInit(), ThreadPoolStrings_instance);
}

@end

