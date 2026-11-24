// Generated Code Do Not Modify
#include "org/allbinary/physics/movement/CustomGravityConstantVelocityMovement.h"
#include "org/allbinary/game/layer/AllBinaryGameLayer.h"
#include "org/allbinary/game/physics/acceleration/GravityUtil.h"
#include "org/allbinary/game/physics/velocity/VelocityProperties.h"
#include "org/allbinary/logic/math/BasicDecimal.h"
#include "org/allbinary/physics/movement/BasicConstantVelocityMovement.h"



void CustomGravityConstantVelocityMovement_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation CustomGravityConstantVelocityMovement

- (void) initFields {
    
    self->gravityUtil = [GravityUtil getInstance];
}


- (instancetype) init:(BasicDecimal*)speedBasicDecimal :(int32_t)customGravity {
        self = [super init:speedBasicDecimal :((VelocityProperties*) [((VelocityProperties*) [VelocityProperties alloc]) init:((int32_t) [speedBasicDecimal getUnscaled]) :((int32_t) [speedBasicDecimal getUnscaled])])];
        [self initFields];
        self->customGravity = customGravity;
    return self;
}


// throws Exception
- (void) process:(AllBinaryGameLayer*)layer {
        [super process:layer];
        [self->gravityUtil process:[self getVelocityProperties] :self->customGravity];
        VelocityProperties* velocityProperties = ((VelocityProperties*) [self getVelocityProperties]);
        [velocityProperties limitMaxYForwardVelocity];
}

@end

