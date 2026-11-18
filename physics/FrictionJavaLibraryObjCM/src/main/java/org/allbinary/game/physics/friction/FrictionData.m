// Generated Code Do Not Modify
#include "org/allbinary/game/physics/friction/FrictionData.h"


static constexpr int32_t FrictionData_FRICTION_DENOMINATOR = 100;

void FrictionData_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation FrictionData


- (instancetype) init {
    self = [super init];
    return self;
}


+ (int32_t) getFrictionDenominator {
        return FrictionData_FRICTION_DENOMINATOR;
}

@end

