// Generated Code Do Not Modify
#include "org/allbinary/game/ag/ai/HorizontaRotationManeuverAI.h"
#include "javax/microedition/lcdui/Canvas.h"
#include "org/allbinary/ai/ArtificialIntelligence.h"
#include "org/allbinary/animation/IndexedAnimation.h"
#include "org/allbinary/animation/RotationAnimationInterface.h"
#include "org/allbinary/animation/RotationAnimationInterfaceCompositeInterface.h"
#include "org/allbinary/game/input/GameInput.h"
#include "org/allbinary/game/physics/velocity/BasicVelocityProperties.h"
#include "org/allbinary/game/physics/velocity/VelocityInterface.h"
#include "org/allbinary/game/physics/velocity/VelocityInterfaceCompositeInterface.h"
#include "org/allbinary/graphics/displayable/DisplayInfoSingleton.h"
#include "org/allbinary/layer/AllBinaryLayer.h"
#include "org/allbinary/layer/AllBinaryLayerManager.h"
#include "org/allbinary/math/AngleIncrementInfo.h"
#include "org/allbinary/util/CircularIndexUtil.h"
#if __has_include("org/allbinary/game/ag/ai/AngleInfo.h")
#include "org/allbinary/game/ag/ai/AngleInfo.h"
#endif
#if __has_include("javax/microedition/lcdui/AngleInfo.h")
#include "javax/microedition/lcdui/AngleInfo.h"
#endif
#if __has_include("org/allbinary/ai/AngleInfo.h")
#include "org/allbinary/ai/AngleInfo.h"
#endif
#if __has_include("org/allbinary/ai/AngleInfo.h")
#include "org/allbinary/ai/AngleInfo.h"
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
#if __has_include("org/allbinary/game/ai/AngleInfo.h")
#include "org/allbinary/game/ai/AngleInfo.h"
#endif
#if __has_include("org/allbinary/game/input/AngleInfo.h")
#include "org/allbinary/game/input/AngleInfo.h"
#endif
#if __has_include("org/allbinary/game/physics/velocity/AngleInfo.h")
#include "org/allbinary/game/physics/velocity/AngleInfo.h"
#endif
#if __has_include("org/allbinary/game/physics/velocity/AngleInfo.h")
#include "org/allbinary/game/physics/velocity/AngleInfo.h"
#endif
#if __has_include("org/allbinary/game/physics/velocity/AngleInfo.h")
#include "org/allbinary/game/physics/velocity/AngleInfo.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/AngleInfo.h")
#include "org/allbinary/graphics/displayable/AngleInfo.h"
#endif
#if __has_include("org/allbinary/layer/AngleInfo.h")
#include "org/allbinary/layer/AngleInfo.h"
#endif
#if __has_include("org/allbinary/layer/AngleInfo.h")
#include "org/allbinary/layer/AngleInfo.h"
#endif
#if __has_include("org/allbinary/math/AngleInfo.h")
#include "org/allbinary/math/AngleInfo.h"
#endif
#if __has_include("org/allbinary/util/AngleInfo.h")
#include "org/allbinary/util/AngleInfo.h"
#endif
#if __has_include("org/allbinary/game/ag/ai/AngleInfo.h")
#include "org/allbinary/game/ag/ai/AngleInfo.h"
#endif
#if __has_include("javax/microedition/lcdui/AngleInfo.h")
#include "javax/microedition/lcdui/AngleInfo.h"
#endif
#if __has_include("org/allbinary/ai/AngleInfo.h")
#include "org/allbinary/ai/AngleInfo.h"
#endif
#if __has_include("org/allbinary/ai/AngleInfo.h")
#include "org/allbinary/ai/AngleInfo.h"
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
#if __has_include("org/allbinary/game/ai/AngleInfo.h")
#include "org/allbinary/game/ai/AngleInfo.h"
#endif
#if __has_include("org/allbinary/game/input/AngleInfo.h")
#include "org/allbinary/game/input/AngleInfo.h"
#endif
#if __has_include("org/allbinary/game/physics/velocity/AngleInfo.h")
#include "org/allbinary/game/physics/velocity/AngleInfo.h"
#endif
#if __has_include("org/allbinary/game/physics/velocity/AngleInfo.h")
#include "org/allbinary/game/physics/velocity/AngleInfo.h"
#endif
#if __has_include("org/allbinary/game/physics/velocity/AngleInfo.h")
#include "org/allbinary/game/physics/velocity/AngleInfo.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/AngleInfo.h")
#include "org/allbinary/graphics/displayable/AngleInfo.h"
#endif
#if __has_include("org/allbinary/layer/AngleInfo.h")
#include "org/allbinary/layer/AngleInfo.h"
#endif
#if __has_include("org/allbinary/layer/AngleInfo.h")
#include "org/allbinary/layer/AngleInfo.h"
#endif
#if __has_include("org/allbinary/math/AngleInfo.h")
#include "org/allbinary/math/AngleInfo.h"
#endif
#if __has_include("org/allbinary/util/AngleInfo.h")
#include "org/allbinary/util/AngleInfo.h"
#endif
#if __has_include("org/allbinary/game/ag/ai/AngleInfo.h")
#include "org/allbinary/game/ag/ai/AngleInfo.h"
#endif
#if __has_include("javax/microedition/lcdui/AngleInfo.h")
#include "javax/microedition/lcdui/AngleInfo.h"
#endif
#if __has_include("org/allbinary/ai/AngleInfo.h")
#include "org/allbinary/ai/AngleInfo.h"
#endif
#if __has_include("org/allbinary/ai/AngleInfo.h")
#include "org/allbinary/ai/AngleInfo.h"
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
#if __has_include("org/allbinary/game/ai/AngleInfo.h")
#include "org/allbinary/game/ai/AngleInfo.h"
#endif
#if __has_include("org/allbinary/game/input/AngleInfo.h")
#include "org/allbinary/game/input/AngleInfo.h"
#endif
#if __has_include("org/allbinary/game/physics/velocity/AngleInfo.h")
#include "org/allbinary/game/physics/velocity/AngleInfo.h"
#endif
#if __has_include("org/allbinary/game/physics/velocity/AngleInfo.h")
#include "org/allbinary/game/physics/velocity/AngleInfo.h"
#endif
#if __has_include("org/allbinary/game/physics/velocity/AngleInfo.h")
#include "org/allbinary/game/physics/velocity/AngleInfo.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/AngleInfo.h")
#include "org/allbinary/graphics/displayable/AngleInfo.h"
#endif
#if __has_include("org/allbinary/layer/AngleInfo.h")
#include "org/allbinary/layer/AngleInfo.h"
#endif
#if __has_include("org/allbinary/layer/AngleInfo.h")
#include "org/allbinary/layer/AngleInfo.h"
#endif
#if __has_include("org/allbinary/math/AngleInfo.h")
#include "org/allbinary/math/AngleInfo.h"
#endif
#if __has_include("org/allbinary/util/AngleInfo.h")
#include "org/allbinary/util/AngleInfo.h"
#endif
#if __has_include("org/allbinary/game/ag/ai/AngleInfo.h")
#include "org/allbinary/game/ag/ai/AngleInfo.h"
#endif
#if __has_include("javax/microedition/lcdui/AngleInfo.h")
#include "javax/microedition/lcdui/AngleInfo.h"
#endif
#if __has_include("org/allbinary/ai/AngleInfo.h")
#include "org/allbinary/ai/AngleInfo.h"
#endif
#if __has_include("org/allbinary/ai/AngleInfo.h")
#include "org/allbinary/ai/AngleInfo.h"
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
#if __has_include("org/allbinary/game/ai/AngleInfo.h")
#include "org/allbinary/game/ai/AngleInfo.h"
#endif
#if __has_include("org/allbinary/game/input/AngleInfo.h")
#include "org/allbinary/game/input/AngleInfo.h"
#endif
#if __has_include("org/allbinary/game/physics/velocity/AngleInfo.h")
#include "org/allbinary/game/physics/velocity/AngleInfo.h"
#endif
#if __has_include("org/allbinary/game/physics/velocity/AngleInfo.h")
#include "org/allbinary/game/physics/velocity/AngleInfo.h"
#endif
#if __has_include("org/allbinary/game/physics/velocity/AngleInfo.h")
#include "org/allbinary/game/physics/velocity/AngleInfo.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/AngleInfo.h")
#include "org/allbinary/graphics/displayable/AngleInfo.h"
#endif
#if __has_include("org/allbinary/layer/AngleInfo.h")
#include "org/allbinary/layer/AngleInfo.h"
#endif
#if __has_include("org/allbinary/layer/AngleInfo.h")
#include "org/allbinary/layer/AngleInfo.h"
#endif
#if __has_include("org/allbinary/math/AngleInfo.h")
#include "org/allbinary/math/AngleInfo.h"
#endif
#if __has_include("org/allbinary/util/AngleInfo.h")
#include "org/allbinary/util/AngleInfo.h"
#endif



void HorizontaRotationManeuverAI_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation HorizontaRotationManeuverAI

- (void) initFields {
    self->circularIndexUtil = [CircularIndexUtil createInstanceAt:10 :(Integer_staticInit(), Integer_MAX_VALUE)];
    self->currentSpeedDivisor = 5;
    
    
    
}


- (instancetype) init:(AllBinaryLayer*)ownerLayerInterface :(GameInput*)gameInput {
        self = [super init:ownerLayerInterface :gameInput];
        [self initFields];
        RotationAnimationInterfaceCompositeInterface* rotationAnimationInterfaceCompositeInterface = ((RotationAnimationInterfaceCompositeInterface*) [self getOwnerLayerInterface]);
        self->rotationAnimationInterface = [rotationAnimationInterfaceCompositeInterface getRotationAnimationInterface];
        VelocityInterfaceCompositeInterface* velocityInterfaceCompositeInterface = ((VelocityInterfaceCompositeInterface*) [self getOwnerLayerInterface]);
        self->baseVelocityInterface = [velocityInterfaceCompositeInterface getVelocityProperties];
        self->velocityInterface = ((VelocityInterface*) self->baseVelocityInterface);
        RotationAnimationInterface* rotationAnimationInterface = ((RotationAnimationInterface*) self->rotationAnimationInterface);
        AngleIncrementInfo* angleIncrementInfo = [[rotationAnimationInterface getAngleInfoP] getAngleIncrementInfo];
        [rotationAnimationInterfaceCompositeInterface setFrame:((int32_t) (angleIncrementInfo->RIGHT_FRAME))];
    return self;
}


- (void) transition {
        RotationAnimationInterface* rotationAnimationInterface = ((RotationAnimationInterface*) self->rotationAnimationInterface);
        AngleIncrementInfo* angleIncrementInfo = [[rotationAnimationInterface getAngleInfoP] getAngleIncrementInfo];
        RotationAnimationInterfaceCompositeInterface* rotationAnimationInterfaceCompositeInterface = ((RotationAnimationInterfaceCompositeInterface*) [self getOwnerLayerInterface]);
        [rotationAnimationInterfaceCompositeInterface setFrame:((int32_t) (angleIncrementInfo->RIGHT_FRAME))];
        AllBinaryLayer* allbinaryLayer = [self getOwnerLayerInterface];
        [allbinaryLayer setPosition:[allbinaryLayer getXP] :1 :[allbinaryLayer getZP]];
}


// throws Exception
- (void) processAI:(AllBinaryLayerManager*)allBinaryLayerManager {
        RotationAnimationInterface* rotationAnimationInterface = (((RotationAnimationInterface*) self->rotationAnimationInterface));
        AngleIncrementInfo* angleIncrementInfo = [[rotationAnimationInterface getAngleInfoP] getAngleIncrementInfo];
        int32_t frame = [self->rotationAnimationInterface getFrame];
        AllBinaryLayer* ownerLayerInterface = [self getOwnerLayerInterface];
        if ([ownerLayerInterface getXP] - [ownerLayerInterface getWidth] <= 0 && frame == ((int32_t) (angleIncrementInfo->LEFT_FRAME))) {
            [self reverse];
            [self drop];
        }
        DisplayInfoSingleton* displayInfo = [DisplayInfoSingleton getInstance];
        if ([ownerLayerInterface getX2] + [ownerLayerInterface getWidth] > [displayInfo getLastWidth] && frame == ((int32_t) (angleIncrementInfo->RIGHT_FRAME))) {
            [self reverse];
            [self accelerate];
            [self drop];
        }
        int32_t index = [self->circularIndexUtil getIndex];
        if (index % self->currentSpeedDivisor == 0 && index % 2 == 0) {
            [super processKeyAI:(Canvas_staticInit(), Canvas_UP)];
            [self->velocityInterface limitMaxXYVelocity:[self->velocityInterface getMaxForwardVelocity] / self->currentSpeedDivisor];
        }
        [self->circularIndexUtil next];
        if (frame == ((int32_t) (angleIncrementInfo->LEFT_FRAME))) {
            [super processKeyAI:(Canvas_staticInit(), Canvas_KEY_NUM0)];
        } else if (frame == ((int32_t) (angleIncrementInfo->RIGHT_FRAME))) {
            [super processKeyAI:(Canvas_staticInit(), Canvas_KEY_POUND)];
        }
}


- (void) reverse {
        RotationAnimationInterface* rotationAnimationInterface = ((RotationAnimationInterface*) self->rotationAnimationInterface);
        AngleIncrementInfo* angleIncrementInfo = [[rotationAnimationInterface getAngleInfoP] getAngleIncrementInfo];
        int32_t frame = [self->rotationAnimationInterface getFrame];
        if (frame == ((int32_t) (angleIncrementInfo->LEFT_FRAME))) {
            RotationAnimationInterfaceCompositeInterface* rotationAnimationInterfaceCompositeInterface = ((RotationAnimationInterfaceCompositeInterface*) [self getOwnerLayerInterface]);
            [rotationAnimationInterfaceCompositeInterface setFrame:((int32_t) (angleIncrementInfo->RIGHT_FRAME))];
            [self->baseVelocityInterface zero];
        } else if (frame == ((int32_t) (angleIncrementInfo->RIGHT_FRAME))) {
            RotationAnimationInterfaceCompositeInterface* rotationAnimationInterfaceCompositeInterface = ((RotationAnimationInterfaceCompositeInterface*) [self getOwnerLayerInterface]);
            [rotationAnimationInterfaceCompositeInterface setFrame:((int32_t) (angleIncrementInfo->LEFT_FRAME))];
            [self->baseVelocityInterface zero];
        }
}


- (void) accelerate {
        if (self->currentSpeedDivisor > 1) {
            self->currentSpeedDivisor--;
        }
}


- (void) drop {
        DisplayInfoSingleton* displayInfo = [DisplayInfoSingleton getInstance];
        AllBinaryLayer* ownerLayerInterface = [self getOwnerLayerInterface];
        int32_t y = [ownerLayerInterface getYP];
        if ([ownerLayerInterface getY2] + [ownerLayerInterface getHeight] > [displayInfo getLastHeight]) {
            y = 0;
        } else {
            y += [ownerLayerInterface getHeight] + 1;
        }
        [ownerLayerInterface setPosition:[ownerLayerInterface getXP] :y :[ownerLayerInterface getZP]];
}


- (int32_t) getId {
        return (ArtificialIntelligence_staticInit(), ArtificialIntelligence_AI_ID);
}

@end

