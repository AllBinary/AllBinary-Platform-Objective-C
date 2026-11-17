// Generated Code Do Not Modify
#include "org/allbinary/math/DistanceUtil.h"
#include "org/allbinary/logic/math/MathUtil.h"


static DistanceUtil* DistanceUtil_instance;

void DistanceUtil_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    DistanceUtil_instance = [((DistanceUtil*) [DistanceUtil alloc]) init];
}

@implementation DistanceUtil

- (void) initFields {
    self->mathUtil = [MathUtil getInstance];
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (DistanceUtil*) getInstance {
        return (DistanceUtil_staticInit(), DistanceUtil_instance);
}


- (int32_t) getDistance:(int32_t)x1 :(int32_t)y1 :(int32_t)x2 :(int32_t)y2 {
        int32_t dx = x1 - x2;
        int32_t dy = y1 - y2;
        return [self->mathUtil sqrt:(dx * dx) + (dy * dy)];
}

@end

