// Generated Code Do Not Modify
#include "org/allbinary/physics/movement/SimpleGravityVelocityMovement.h"
#include "org/allbinary/game/layer/AllBinaryGameLayer.h"
#include "org/allbinary/game/physics/acceleration/GravityUtil.h"
#include "org/allbinary/game/physics/velocity/VelocityProperties.h"
#include "org/allbinary/logic/math/BasicDecimal.h"
#include "org/allbinary/physics/movement/BasicConstantVelocityMovement.h"



void SimpleGravityVelocityMovement_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation SimpleGravityVelocityMovement

- (void) initFields {
    self->gravityUtil = [GravityUtil getInstance];
}


- (instancetype) init:(BasicDecimal*)speedBasicDecimal {
        self = [super init:speedBasicDecimal :[((VelocityProperties*) [VelocityProperties alloc]) init:((int32_t) [speedBasicDecimal getUnscaled]) :((int32_t) [speedBasicDecimal getUnscaled])]];
        [self initFields];
    return self;
}


// throws Exception
- (void) process:(AllBinaryGameLayer*)layer {
        [self->gravityUtil process:[self getVelocityProperties] :self->gravityUtil->GAME_GRAVITY_VELOCITY];
        [super process:layer];
}

@end

