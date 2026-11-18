// Generated Code Do Not Modify
#include "org/allbinary/animation/RotationAnimationFactory.h"
#include "org/allbinary/game/configuration/GameConfigurationCentral.h"
#include "org/allbinary/math/AngleFactory.h"
#include "org/allbinary/math/AngleInfo.h"
#include "org/allbinary/media/ScaleProperties.h"
#include "org/allbinary/animation/AnimationInterfaceFactoryInterface.h"
#include "org/allbinary/animation/ProceduralAnimationInterfaceFactoryInterface.h"
#include "org/allbinary/animation/NullRotationAnimation.h"
#include "org/allbinary/animation/AnimationBehavior.h"
#include "org/allbinary/animation/Animation.h"



void RotationAnimationFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation RotationAnimationFactory

- (void) initFields {
    
    
}


+ (RotationAnimationFactory*) createFactory {
        int16_t totalAngle = [AngleFactory getInstance]->TOTAL_ANGLE;
        return [((RotationAnimationFactory*) [RotationAnimationFactory alloc]) init:totalAngle :((int16_t) (((int32_t) totalAngle) / [[GameConfigurationCentral getInstance] getGameControlFidelity]))];
}


- (instancetype) init:(int16_t)totalAngle :(int16_t)angleIncrement {
    self = [super init];
    [self initFields];
        self->totalAngle = totalAngle;
        self->angleIncrement = angleIncrement;
    return self;
}


// throws Exception
- (Animation*) getInstance:(int32_t)instanceId {
        return [NullRotationAnimation createTotalAngle:[AngleInfo getInstance:self->angleIncrement] :self->totalAngle :[AnimationBehavior getInstance]];
}


// throws Exception
- (Animation*) getInstanceAnimation:(Animation*)animationInterface {
        return [NullRotationAnimation createTotalAngle:[AngleInfo getInstance:self->angleIncrement] :self->totalAngle :[AnimationBehavior getInstance]];
}


- (void) setInitialScale:(ScaleProperties*)scaleProperties {
}

@end

