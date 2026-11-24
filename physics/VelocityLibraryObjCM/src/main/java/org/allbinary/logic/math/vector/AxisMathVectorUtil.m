// Generated Code Do Not Modify
#include "org/allbinary/logic/math/vector/AxisMathVectorUtil.h"
#include "org/allbinary/math/NoDecimalTrigTable.h"


static AxisMathVectorUtil* AxisMathVectorUtil_instance;

void AxisMathVectorUtil_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    AxisMathVectorUtil_instance = ((AxisMathVectorUtil*) [((AxisMathVectorUtil*) [AxisMathVectorUtil alloc]) init]);
}

@implementation AxisMathVectorUtil

- (void) initFields {
    self->noDecimalTrigTable = [NoDecimalTrigTable getInstance];
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (AxisMathVectorUtil*) getInstance {
        return (AxisMathVectorUtil_staticInit(), AxisMathVectorUtil_instance);
}


- (int64_t) calculateX:(int64_t)magnitude :(int32_t)angle {
        return magnitude * [self->noDecimalTrigTable cos:angle] / 10LL;
}


- (int64_t) calculateY:(int64_t)magnitude :(int32_t)angle {
        return magnitude * [self->noDecimalTrigTable sin:angle] / 10LL;
}


- (int64_t) calculateZ:(int64_t)magnitude :(int32_t)otherAngle {
        return magnitude * [self->noDecimalTrigTable sin:otherAngle] / 10LL;
}

@end

