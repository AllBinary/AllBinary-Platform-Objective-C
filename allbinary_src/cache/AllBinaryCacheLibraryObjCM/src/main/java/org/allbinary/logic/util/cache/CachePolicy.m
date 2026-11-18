// Generated Code Do Not Modify
#include "org/allbinary/logic/util/cache/CachePolicy.h"



void CachePolicy_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation CachePolicy

- (void) initFields {
    
    self->maxTime = 0;
    self->maxSize = 0;
}


- (instancetype) init:(const char*)name :(int64_t)maxTime :(int64_t)maxSize {
    self = [super init];
    [self initFields];
        self->name = name;
        [self setMaxTime:maxTime];
        [self setMaxSize:maxSize];
    return self;
}


- (int64_t) getMaxTime {
        return self->maxTime;
}


- (void) setMaxTime:(int64_t)maxTime {
        self->maxTime = maxTime;
}


- (int64_t) getMaxSize {
        return self->maxSize;
}


- (void) setMaxSize:(int64_t)maxSize {
        self->maxSize = maxSize;
}


- (const char*) getName {
        return self->name;
}

@end

