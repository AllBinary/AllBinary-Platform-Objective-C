// Generated Code Do Not Modify
#include "org/allbinary/game/ag/ai/StopAtEdgeAI.h"
#include "org/allbinary/game/input/GameInput.h"
#include "org/allbinary/game/physics/velocity/BasicVelocityProperties.h"
#include "org/allbinary/game/physics/velocity/VelocityInterfaceCompositeInterface.h"
#include "org/allbinary/graphics/displayable/DisplayInfoSingleton.h"
#include "org/allbinary/layer/AllBinaryLayer.h"
#include "org/allbinary/layer/AllBinaryLayerManager.h"
#if __has_include("org/allbinary/game/ag/ai/BasicDecimal.h")
#include "org/allbinary/game/ag/ai/BasicDecimal.h"
#endif
#if __has_include("org/allbinary/game/ai/BasicDecimal.h")
#include "org/allbinary/game/ai/BasicDecimal.h"
#endif
#if __has_include("org/allbinary/game/input/BasicDecimal.h")
#include "org/allbinary/game/input/BasicDecimal.h"
#endif
#if __has_include("org/allbinary/game/physics/velocity/BasicDecimal.h")
#include "org/allbinary/game/physics/velocity/BasicDecimal.h"
#endif
#if __has_include("org/allbinary/game/physics/velocity/BasicDecimal.h")
#include "org/allbinary/game/physics/velocity/BasicDecimal.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/BasicDecimal.h")
#include "org/allbinary/graphics/displayable/BasicDecimal.h"
#endif
#if __has_include("org/allbinary/layer/BasicDecimal.h")
#include "org/allbinary/layer/BasicDecimal.h"
#endif
#if __has_include("org/allbinary/layer/BasicDecimal.h")
#include "org/allbinary/layer/BasicDecimal.h"
#endif
#if __has_include("org/allbinary/game/ag/ai/BasicDecimal.h")
#include "org/allbinary/game/ag/ai/BasicDecimal.h"
#endif
#if __has_include("org/allbinary/game/ai/BasicDecimal.h")
#include "org/allbinary/game/ai/BasicDecimal.h"
#endif
#if __has_include("org/allbinary/game/input/BasicDecimal.h")
#include "org/allbinary/game/input/BasicDecimal.h"
#endif
#if __has_include("org/allbinary/game/physics/velocity/BasicDecimal.h")
#include "org/allbinary/game/physics/velocity/BasicDecimal.h"
#endif
#if __has_include("org/allbinary/game/physics/velocity/BasicDecimal.h")
#include "org/allbinary/game/physics/velocity/BasicDecimal.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/BasicDecimal.h")
#include "org/allbinary/graphics/displayable/BasicDecimal.h"
#endif
#if __has_include("org/allbinary/layer/BasicDecimal.h")
#include "org/allbinary/layer/BasicDecimal.h"
#endif
#if __has_include("org/allbinary/layer/BasicDecimal.h")
#include "org/allbinary/layer/BasicDecimal.h"
#endif
#if __has_include("org/allbinary/game/ag/ai/BasicDecimal.h")
#include "org/allbinary/game/ag/ai/BasicDecimal.h"
#endif
#if __has_include("org/allbinary/game/ai/BasicDecimal.h")
#include "org/allbinary/game/ai/BasicDecimal.h"
#endif
#if __has_include("org/allbinary/game/input/BasicDecimal.h")
#include "org/allbinary/game/input/BasicDecimal.h"
#endif
#if __has_include("org/allbinary/game/physics/velocity/BasicDecimal.h")
#include "org/allbinary/game/physics/velocity/BasicDecimal.h"
#endif
#if __has_include("org/allbinary/game/physics/velocity/BasicDecimal.h")
#include "org/allbinary/game/physics/velocity/BasicDecimal.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/BasicDecimal.h")
#include "org/allbinary/graphics/displayable/BasicDecimal.h"
#endif
#if __has_include("org/allbinary/layer/BasicDecimal.h")
#include "org/allbinary/layer/BasicDecimal.h"
#endif
#if __has_include("org/allbinary/layer/BasicDecimal.h")
#include "org/allbinary/layer/BasicDecimal.h"
#endif
#if __has_include("org/allbinary/game/ag/ai/BasicDecimal.h")
#include "org/allbinary/game/ag/ai/BasicDecimal.h"
#endif
#if __has_include("org/allbinary/game/ai/BasicDecimal.h")
#include "org/allbinary/game/ai/BasicDecimal.h"
#endif
#if __has_include("org/allbinary/game/input/BasicDecimal.h")
#include "org/allbinary/game/input/BasicDecimal.h"
#endif
#if __has_include("org/allbinary/game/physics/velocity/BasicDecimal.h")
#include "org/allbinary/game/physics/velocity/BasicDecimal.h"
#endif
#if __has_include("org/allbinary/game/physics/velocity/BasicDecimal.h")
#include "org/allbinary/game/physics/velocity/BasicDecimal.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/BasicDecimal.h")
#include "org/allbinary/graphics/displayable/BasicDecimal.h"
#endif
#if __has_include("org/allbinary/layer/BasicDecimal.h")
#include "org/allbinary/layer/BasicDecimal.h"
#endif
#if __has_include("org/allbinary/layer/BasicDecimal.h")
#include "org/allbinary/layer/BasicDecimal.h"
#endif
#if __has_include("org/allbinary/game/ag/ai/BasicDecimal.h")
#include "org/allbinary/game/ag/ai/BasicDecimal.h"
#endif
#if __has_include("org/allbinary/game/ai/BasicDecimal.h")
#include "org/allbinary/game/ai/BasicDecimal.h"
#endif
#if __has_include("org/allbinary/game/input/BasicDecimal.h")
#include "org/allbinary/game/input/BasicDecimal.h"
#endif
#if __has_include("org/allbinary/game/physics/velocity/BasicDecimal.h")
#include "org/allbinary/game/physics/velocity/BasicDecimal.h"
#endif
#if __has_include("org/allbinary/game/physics/velocity/BasicDecimal.h")
#include "org/allbinary/game/physics/velocity/BasicDecimal.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/BasicDecimal.h")
#include "org/allbinary/graphics/displayable/BasicDecimal.h"
#endif
#if __has_include("org/allbinary/layer/BasicDecimal.h")
#include "org/allbinary/layer/BasicDecimal.h"
#endif
#if __has_include("org/allbinary/layer/BasicDecimal.h")
#include "org/allbinary/layer/BasicDecimal.h"
#endif
#if __has_include("org/allbinary/game/ag/ai/BasicDecimal.h")
#include "org/allbinary/game/ag/ai/BasicDecimal.h"
#endif
#if __has_include("org/allbinary/game/ai/BasicDecimal.h")
#include "org/allbinary/game/ai/BasicDecimal.h"
#endif
#if __has_include("org/allbinary/game/input/BasicDecimal.h")
#include "org/allbinary/game/input/BasicDecimal.h"
#endif
#if __has_include("org/allbinary/game/physics/velocity/BasicDecimal.h")
#include "org/allbinary/game/physics/velocity/BasicDecimal.h"
#endif
#if __has_include("org/allbinary/game/physics/velocity/BasicDecimal.h")
#include "org/allbinary/game/physics/velocity/BasicDecimal.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/BasicDecimal.h")
#include "org/allbinary/graphics/displayable/BasicDecimal.h"
#endif
#if __has_include("org/allbinary/layer/BasicDecimal.h")
#include "org/allbinary/layer/BasicDecimal.h"
#endif
#if __has_include("org/allbinary/layer/BasicDecimal.h")
#include "org/allbinary/layer/BasicDecimal.h"
#endif
#if __has_include("org/allbinary/game/ag/ai/BasicDecimal.h")
#include "org/allbinary/game/ag/ai/BasicDecimal.h"
#endif
#if __has_include("org/allbinary/game/ai/BasicDecimal.h")
#include "org/allbinary/game/ai/BasicDecimal.h"
#endif
#if __has_include("org/allbinary/game/input/BasicDecimal.h")
#include "org/allbinary/game/input/BasicDecimal.h"
#endif
#if __has_include("org/allbinary/game/physics/velocity/BasicDecimal.h")
#include "org/allbinary/game/physics/velocity/BasicDecimal.h"
#endif
#if __has_include("org/allbinary/game/physics/velocity/BasicDecimal.h")
#include "org/allbinary/game/physics/velocity/BasicDecimal.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/BasicDecimal.h")
#include "org/allbinary/graphics/displayable/BasicDecimal.h"
#endif
#if __has_include("org/allbinary/layer/BasicDecimal.h")
#include "org/allbinary/layer/BasicDecimal.h"
#endif
#if __has_include("org/allbinary/layer/BasicDecimal.h")
#include "org/allbinary/layer/BasicDecimal.h"
#endif
#if __has_include("org/allbinary/game/ag/ai/BasicDecimal.h")
#include "org/allbinary/game/ag/ai/BasicDecimal.h"
#endif
#if __has_include("org/allbinary/game/ai/BasicDecimal.h")
#include "org/allbinary/game/ai/BasicDecimal.h"
#endif
#if __has_include("org/allbinary/game/input/BasicDecimal.h")
#include "org/allbinary/game/input/BasicDecimal.h"
#endif
#if __has_include("org/allbinary/game/physics/velocity/BasicDecimal.h")
#include "org/allbinary/game/physics/velocity/BasicDecimal.h"
#endif
#if __has_include("org/allbinary/game/physics/velocity/BasicDecimal.h")
#include "org/allbinary/game/physics/velocity/BasicDecimal.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/BasicDecimal.h")
#include "org/allbinary/graphics/displayable/BasicDecimal.h"
#endif
#if __has_include("org/allbinary/layer/BasicDecimal.h")
#include "org/allbinary/layer/BasicDecimal.h"
#endif
#if __has_include("org/allbinary/layer/BasicDecimal.h")
#include "org/allbinary/layer/BasicDecimal.h"
#endif



void StopAtEdgeAI_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation StopAtEdgeAI


- (instancetype) init:(AllBinaryLayer*)ownerLayerInterface :(GameInput*)gameInput {
        self = [super init:ownerLayerInterface :gameInput];
    return self;
}


// throws Exception
- (void) processAI:(AllBinaryLayerManager*)allBinaryLayerManager {
        AllBinaryLayer* ownerLayerInterface = [self getOwnerLayerInterface];
        VelocityInterfaceCompositeInterface* velocityInterfaceCompositeInterface = (((VelocityInterfaceCompositeInterface*) ownerLayerInterface));
        BasicVelocityProperties* velocityProperties = [velocityInterfaceCompositeInterface getVelocityProperties];
        int32_t x = [ownerLayerInterface getXP];
        int32_t y = [ownerLayerInterface getYP];
        int32_t x2 = [ownerLayerInterface getX2];
        int32_t y2 = [ownerLayerInterface getY2];
        int32_t width = [ownerLayerInterface getWidth];
        int32_t height = [ownerLayerInterface getHeight];
        DisplayInfoSingleton* displayInfo = [DisplayInfoSingleton getInstance];
        if (x2 + [[velocityProperties getVelocityXBasicDecimalP] getScaled] > [displayInfo getLastWidth]) {
            [ownerLayerInterface setPosition:[displayInfo getLastWidth] - width :y :[ownerLayerInterface getZP]];
            [[velocityProperties getVelocityYBasicDecimalP] setint:0];
        }
        if (y2 + [[velocityProperties getVelocityYBasicDecimalP] getScaled] > [displayInfo getLastHeight]) {
            [ownerLayerInterface setPosition:x :[displayInfo getLastHeight] - height :[ownerLayerInterface getZP]];
            [[velocityProperties getVelocityXBasicDecimalP] setint:0];
        }
        if (x + [[velocityProperties getVelocityXBasicDecimalP] getScaled] < 0) {
            [ownerLayerInterface setPosition:0 :y :[ownerLayerInterface getZP]];
            [[velocityProperties getVelocityYBasicDecimalP] setint:0];
        }
        if (y + [[velocityProperties getVelocityYBasicDecimalP] getScaled] < 0) {
            [ownerLayerInterface setPosition:x :0 :[ownerLayerInterface getZP]];
            [[velocityProperties getVelocityXBasicDecimalP] setint:0];
        }
}

@end

