// Generated Code Do Not Modify
#include "org/allbinary/physics/movement/PreciseConstantVelocityMovement.h"
#include "org/allbinary/game/layer/AllBinaryGameLayer.h"
#include "org/allbinary/game/physics/velocity/BasicVelocityProperties.h"
#include "org/allbinary/logic/math/BasicDecimal.h"
#include "org/allbinary/logic/math/MathUtil.h"
#include "org/allbinary/logic/math/ScaleFactorFactory.h"
#include "org/allbinary/physics/movement/BasicConstantVelocityMovement.h"
#if __has_include("org/allbinary/logic/math/ScaleFactorFactory.h")
#include "org/allbinary/logic/math/ScaleFactorFactory.h"
#endif
#if __has_include("org/allbinary/logic/math/BasicDecimal.h")
#include "org/allbinary/logic/math/BasicDecimal.h"
#endif
#if __has_include("org/allbinary/logic/math/BasicDecimal.h")
#include "org/allbinary/logic/math/BasicDecimal.h"
#endif
#if __has_include("org/allbinary/logic/math/BasicDecimal.h")
#include "org/allbinary/logic/math/BasicDecimal.h"
#endif



void PreciseConstantVelocityMovement_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation PreciseConstantVelocityMovement

- (void) initFields {
    self->accumulatedX = 0;
    self->accumulatedY = 0;
    self->accumulatedZ = 0;
    self->factorValue = [ScaleFactorFactory getInstance]->DEFAULT_SCALE_VALUE;
}


- (instancetype) init:(BasicDecimal*)basicDecimal :(BasicVelocityProperties*)velocityProperties {
        self = [super init:basicDecimal :velocityProperties];
        [self initFields];
    return self;
}


- (void) initMethod:(BasicDecimal*)speedBasicDecimal :(int32_t)angle :(int32_t)otherAngle {
}


// throws Exception
- (void) process:(AllBinaryGameLayer*)layer {
        MathUtil* mathUtil = [MathUtil getInstance];
        BasicVelocityProperties* velocityProperties = [self getVelocityProperties];
        self->accumulatedX = ((int32_t) (((int64_t) self->accumulatedX) + [[velocityProperties getVelocityXBasicDecimalP] getUnscaled]));
        self->accumulatedY = ((int32_t) (((int64_t) self->accumulatedY) + [[velocityProperties getVelocityYBasicDecimalP] getUnscaled]));
        self->accumulatedZ = ((int32_t) (((int64_t) self->accumulatedZ) + [[velocityProperties getVelocityZBasicDecimalP] getUnscaled]));
        [layer moveDXYZ:self->accumulatedX / self->factorValue :self->accumulatedY / self->factorValue :self->accumulatedZ / self->factorValue];
        if ([mathUtil abs:self->accumulatedX] > self->factorValue) {
            self->accumulatedX = 0;
        }
        if ([mathUtil abs:self->accumulatedY] > self->factorValue) {
            self->accumulatedY = 0;
        }
        if ([mathUtil abs:self->accumulatedZ] > self->factorValue) {
            self->accumulatedZ = 0;
        }
}

@end

