// Generated Code Do Not Modify
#include "org/allbinary/time/NoTimeDelayHelper.h"
#include "org/allbinary/time/TimeDelayHelper.h"


NoTimeDelayHelper* NoTimeDelayHelper_SINGLETON;

void NoTimeDelayHelper_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    NoTimeDelayHelper_SINGLETON = ((NoTimeDelayHelper*) [((NoTimeDelayHelper*) [NoTimeDelayHelper alloc]) init]);
}

@implementation NoTimeDelayHelper


- (instancetype) init {
        self = [super init:0];
    return self;
}


- (bool) isTimeTNT {
        return true;
}


- (bool) isTimeSinceTNT:(int32_t)delay {
        return true;
}


- (bool) isTime:(int64_t)currentTime {
        return true;
}


- (bool) isTimeSince:(int32_t)delay :(int64_t)currentTime {
        return true;
}

@end

