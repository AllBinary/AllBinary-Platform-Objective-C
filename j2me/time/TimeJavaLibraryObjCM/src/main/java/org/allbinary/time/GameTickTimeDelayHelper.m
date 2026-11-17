// Generated Code Do Not Modify
#include "org/allbinary/time/GameTickTimeDelayHelper.h"



void GameTickTimeDelayHelper_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation GameTickTimeDelayHelper

- (void) initFields {
    self->timeDelta = 0;
    
    
}


- (instancetype) init:(int64_t)startTime {
    self = [super init];
    [self initFields];
        self->startTime = startTime;
        self->lastStartTime = 0LL;
    return self;
}


- (int64_t) setStartTime {
        self->startTime = java_current_time_millis();
        return self->startTime;
}


- (void) loop {
        if (self->lastStartTime == (Long_staticInit(), Long_MIN_VALUE)) {
            self->timeDelta = 0LL;
        } else {
            self->timeDelta = java_current_time_millis() - self->lastStartTime;
        }
}


- (int64_t) getTimeFromStart {
        return self->startTime - self->lastStartTime;
}

@end

