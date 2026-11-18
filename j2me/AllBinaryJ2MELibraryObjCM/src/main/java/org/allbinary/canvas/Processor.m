// Generated Code Do Not Modify
#include "org/allbinary/canvas/Processor.h"


static Processor* Processor_SINGLETON;

void Processor_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    Processor_SINGLETON = [((Processor*) [Processor alloc]) init];
}

@implementation Processor

- (instancetype) init {
    self = [super init];
    return self;
}


+ (Processor*) getInstance {
        return (Processor_staticInit(), Processor_SINGLETON);
}


// throws Exception
- (void) process {
}


// throws Exception
- (void) processt:(int64_t)timeDelta {
}

@end

