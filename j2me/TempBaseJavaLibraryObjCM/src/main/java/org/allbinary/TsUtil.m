// Generated Code Do Not Modify
#include "org/allbinary/TsUtil.h"


static TsUtil* TsUtil_instance;

void TsUtil_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    TsUtil_instance = ((TsUtil*) [((TsUtil*) [TsUtil alloc]) init]);
}

@implementation TsUtil

- (instancetype) init {
    self = [super init];
    return self;
}


+ (TsUtil*) getInstance {
        return (TsUtil_staticInit(), TsUtil_instance);
}


- (double) longBitsToDouble:(int64_t)bits {
        return [Double longBitsToDouble:bits];
}


- (float) intBitsToFloat:(int32_t)bits {
        return [Float intBitsToFloat:bits];
}


- (int32_t) hashCode:(id)anyType {
        return [anyType hashCode];
}


// throws InterruptedException
- (void) waitFor:(id)any :(int64_t)timeoutMillis {
        id anyType = ((id) any);
        [anyType wait:timeoutMillis];
}


- (int32_t) compareTo:(const char*)a :(const char*)b {
        return strcmp(a, b);
}

@end

