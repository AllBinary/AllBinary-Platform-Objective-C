// Generated Code Do Not Modify
#include "org/allbinary/physics/movement/OscillateVelocityMovement.h"
#include "org/allbinary/game/layer/AllBinaryGameLayer.h"
#include "org/allbinary/game/physics/velocity/VelocityProperties.h"
#include "org/allbinary/logic/math/BasicDecimal.h"
#include "org/allbinary/physics/movement/BasicConstantVelocityMovement.h"
#if __has_include("org/allbinary/logic/math/BasicDecimal.h")
#include "org/allbinary/logic/math/BasicDecimal.h"
#endif
#if __has_include("org/allbinary/physics/movement/BasicVelocityProperties.h")
#include "org/allbinary/physics/movement/BasicVelocityProperties.h"
#endif
#if __has_include("org/allbinary/game/layer/BasicVelocityProperties.h")
#include "org/allbinary/game/layer/BasicVelocityProperties.h"
#endif
#if __has_include("org/allbinary/game/physics/velocity/BasicVelocityProperties.h")
#include "org/allbinary/game/physics/velocity/BasicVelocityProperties.h"
#endif
#if __has_include("org/allbinary/logic/math/BasicVelocityProperties.h")
#include "org/allbinary/logic/math/BasicVelocityProperties.h"
#endif
#if __has_include("org/allbinary/logic/math/BasicDecimal.h")
#include "org/allbinary/logic/math/BasicDecimal.h"
#endif
#if __has_include("org/allbinary/physics/movement/BasicVelocityProperties.h")
#include "org/allbinary/physics/movement/BasicVelocityProperties.h"
#endif
#if __has_include("org/allbinary/game/layer/BasicVelocityProperties.h")
#include "org/allbinary/game/layer/BasicVelocityProperties.h"
#endif
#if __has_include("org/allbinary/game/physics/velocity/BasicVelocityProperties.h")
#include "org/allbinary/game/physics/velocity/BasicVelocityProperties.h"
#endif
#if __has_include("org/allbinary/logic/math/BasicVelocityProperties.h")
#include "org/allbinary/logic/math/BasicVelocityProperties.h"
#endif



void OscillateVelocityMovement_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation OscillateVelocityMovement

- (void) initFields {
    
    
    self->oscillate = 0;
    self->oscillatePositive = false;
}


- (instancetype) init:(BasicDecimal*)speedBasicDecimal :(int32_t)oscillateMin :(int32_t)oscillateMax {
        self = [super init:speedBasicDecimal :((VelocityProperties*) [((VelocityProperties*) [VelocityProperties alloc]) init:((int32_t) [speedBasicDecimal getUnscaled]) :((int32_t) [speedBasicDecimal getUnscaled])])];
        [self initFields];
        self->oscillateMin = oscillateMin;
        self->oscillateMax = oscillateMax;
    return self;
}


// throws Exception
- (void) process:(AllBinaryGameLayer*)layer {
        [super process:layer];
        if (self->oscillate < self->oscillateMin) {
            self->oscillatePositive = true;
        } else if (self->oscillate > self->oscillateMax) {
            self->oscillatePositive = false;
        }
        if (self->oscillatePositive) {
            self->oscillate++;
            [[[self getVelocityProperties] getVelocityXBasicDecimalP] addint:2000];
        } else {
            self->oscillate--;
            [[[self getVelocityProperties] getVelocityXBasicDecimalP] subtractint:2000];
        }
}

@end

