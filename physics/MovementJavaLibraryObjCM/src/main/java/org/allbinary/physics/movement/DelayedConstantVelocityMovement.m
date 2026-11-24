// Generated Code Do Not Modify
#include "org/allbinary/physics/movement/DelayedConstantVelocityMovement.h"
#include "org/allbinary/game/layer/AllBinaryGameLayer.h"
#include "org/allbinary/game/physics/velocity/BasicVelocityProperties.h"
#include "org/allbinary/logic/math/BasicDecimal.h"
#include "org/allbinary/time/GameTickTimeDelayHelperFactory.h"
#include "org/allbinary/time/TimeDelayHelper.h"
#include "org/allbinary/physics/movement/BasicConstantVelocityMovement.h"
#if __has_include("org/allbinary/physics/movement/GameTickTimeDelayHelper.h")
#include "org/allbinary/physics/movement/GameTickTimeDelayHelper.h"
#endif
#if __has_include("org/allbinary/game/layer/GameTickTimeDelayHelper.h")
#include "org/allbinary/game/layer/GameTickTimeDelayHelper.h"
#endif
#if __has_include("org/allbinary/game/physics/velocity/GameTickTimeDelayHelper.h")
#include "org/allbinary/game/physics/velocity/GameTickTimeDelayHelper.h"
#endif
#if __has_include("org/allbinary/logic/math/GameTickTimeDelayHelper.h")
#include "org/allbinary/logic/math/GameTickTimeDelayHelper.h"
#endif
#if __has_include("org/allbinary/time/GameTickTimeDelayHelper.h")
#include "org/allbinary/time/GameTickTimeDelayHelper.h"
#endif
#if __has_include("org/allbinary/time/GameTickTimeDelayHelper.h")
#include "org/allbinary/time/GameTickTimeDelayHelper.h"
#endif



void DelayedConstantVelocityMovement_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation DelayedConstantVelocityMovement

- (void) initFields {
    self->timeDelayHelper = ((TimeDelayHelper*) [((TimeDelayHelper*) [TimeDelayHelper alloc]) init:60]);
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
        if ([self->timeDelayHelper isTime:[GameTickTimeDelayHelperFactory getInstance]->startTime]) {
            [super process:layer];
        }
}

@end

