// Generated Code Do Not Modify
#include "org/allbinary/physics/movement/NoBasicConstantVelocityMovement.h"
#include "org/allbinary/game/layer/AllBinaryGameLayer.h"
#include "org/allbinary/game/physics/velocity/BasicVelocityProperties.h"
#include "org/allbinary/logic/math/BasicDecimal.h"
#include "org/allbinary/physics/movement/BasicConstantVelocityMovement.h"



void NoBasicConstantVelocityMovement_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation NoBasicConstantVelocityMovement


- (instancetype) init {
        self = [super init:(BasicDecimal_staticInit(), BasicDecimal_ZERO_BIGDECIMAL) :[((BasicVelocityProperties*) [BasicVelocityProperties alloc]) init]];
    return self;
}


// throws Exception
- (void) process:(AllBinaryGameLayer*)layer {
}

@end

