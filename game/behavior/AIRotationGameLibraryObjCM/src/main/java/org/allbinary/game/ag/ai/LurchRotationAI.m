// Generated Code Do Not Modify
#include "org/allbinary/game/ag/ai/LurchRotationAI.h"
#include "org/allbinary/animation/IndexedAnimation.h"
#include "org/allbinary/animation/RotationAnimationInterface.h"
#include "org/allbinary/animation/RotationAnimationInterfaceCompositeInterface.h"
#include "org/allbinary/game/input/GameInput.h"
#include "org/allbinary/layer/AllBinaryLayer.h"
#include "org/allbinary/math/AngleIncrementInfo.h"
#if __has_include("org/allbinary/game/ag/ai/AngleInfo.h")
#include "org/allbinary/game/ag/ai/AngleInfo.h"
#endif
#if __has_include("org/allbinary/animation/AngleInfo.h")
#include "org/allbinary/animation/AngleInfo.h"
#endif
#if __has_include("org/allbinary/animation/AngleInfo.h")
#include "org/allbinary/animation/AngleInfo.h"
#endif
#if __has_include("org/allbinary/animation/AngleInfo.h")
#include "org/allbinary/animation/AngleInfo.h"
#endif
#if __has_include("org/allbinary/game/ag/ai/tactical/AngleInfo.h")
#include "org/allbinary/game/ag/ai/tactical/AngleInfo.h"
#endif
#if __has_include("org/allbinary/game/input/AngleInfo.h")
#include "org/allbinary/game/input/AngleInfo.h"
#endif
#if __has_include("org/allbinary/layer/AngleInfo.h")
#include "org/allbinary/layer/AngleInfo.h"
#endif
#if __has_include("org/allbinary/math/AngleInfo.h")
#include "org/allbinary/math/AngleInfo.h"
#endif
#if __has_include("org/allbinary/game/ag/ai/AngleInfo.h")
#include "org/allbinary/game/ag/ai/AngleInfo.h"
#endif
#if __has_include("org/allbinary/animation/AngleInfo.h")
#include "org/allbinary/animation/AngleInfo.h"
#endif
#if __has_include("org/allbinary/animation/AngleInfo.h")
#include "org/allbinary/animation/AngleInfo.h"
#endif
#if __has_include("org/allbinary/animation/AngleInfo.h")
#include "org/allbinary/animation/AngleInfo.h"
#endif
#if __has_include("org/allbinary/game/ag/ai/tactical/AngleInfo.h")
#include "org/allbinary/game/ag/ai/tactical/AngleInfo.h"
#endif
#if __has_include("org/allbinary/game/input/AngleInfo.h")
#include "org/allbinary/game/input/AngleInfo.h"
#endif
#if __has_include("org/allbinary/layer/AngleInfo.h")
#include "org/allbinary/layer/AngleInfo.h"
#endif
#if __has_include("org/allbinary/math/AngleInfo.h")
#include "org/allbinary/math/AngleInfo.h"
#endif



void LurchRotationAI_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation LurchRotationAI

- (void) initFields {
    
}


- (instancetype) init:(AllBinaryLayer*)ownerLayerInterface :(GameInput*)gameInput {
        self = [super init:ownerLayerInterface :gameInput];
        [self initFields];
        RotationAnimationInterfaceCompositeInterface* rotationAnimationInterfaceCompositeInterface = ((RotationAnimationInterfaceCompositeInterface*) [self getOwnerLayerInterface]);
        self->rotationAnimationInterface = [((id<RotationAnimationInterfaceCompositeInterface>) rotationAnimationInterfaceCompositeInterface) getRotationAnimationInterface];
        [self update];
    return self;
}


- (void) reverse {
        [super reverse];
        [self update];
}


- (void) update {
        if (self->currentRelativeAngle == 0) {
            RotationAnimationInterface* rotationAnimationInterface = ((RotationAnimationInterface*) self->rotationAnimationInterface);
            AngleIncrementInfo* angleIncrementInfo = [[((id<RotationAnimationInterface>) rotationAnimationInterface) getAngleInfoP] getAngleIncrementInfo];
            RotationAnimationInterfaceCompositeInterface* rotationAnimationInterfaceCompositeInterface = ((RotationAnimationInterfaceCompositeInterface*) [self getOwnerLayerInterface]);
            [((id<RotationAnimationInterfaceCompositeInterface>) rotationAnimationInterfaceCompositeInterface) setFrame:((int32_t) (angleIncrementInfo->RIGHT_FRAME))];
        } else if (self->currentRelativeAngle == 180) {
            RotationAnimationInterface* rotationAnimationInterface = ((RotationAnimationInterface*) self->rotationAnimationInterface);
            AngleIncrementInfo* angleIncrementInfo = [[((id<RotationAnimationInterface>) rotationAnimationInterface) getAngleInfoP] getAngleIncrementInfo];
            RotationAnimationInterfaceCompositeInterface* rotationAnimationInterfaceCompositeInterface = ((RotationAnimationInterfaceCompositeInterface*) [self getOwnerLayerInterface]);
            [((id<RotationAnimationInterfaceCompositeInterface>) rotationAnimationInterfaceCompositeInterface) setFrame:((int32_t) (angleIncrementInfo->LEFT_FRAME))];
        }
}

@end

