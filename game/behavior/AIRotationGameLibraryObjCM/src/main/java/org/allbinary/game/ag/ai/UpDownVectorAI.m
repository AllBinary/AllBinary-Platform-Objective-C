// Generated Code Do Not Modify
#include "org/allbinary/game/ag/ai/UpDownVectorAI.h"
#include "org/allbinary/game/input/GameInput.h"
#include "org/allbinary/game/physics/velocity/BasicVelocityProperties.h"
#include "org/allbinary/game/physics/velocity/VelocityInterfaceCompositeInterface.h"
#include "org/allbinary/layer/AllBinaryLayer.h"
#include "org/allbinary/layer/AllBinaryLayerManager.h"
#include "org/allbinary/logic/math/BasicDecimal.h"
#if __has_include("org/allbinary/logic/math/BasicDecimal.h")
#include "org/allbinary/logic/math/BasicDecimal.h"
#endif
#if __has_include("org/allbinary/layer/AllBinaryLayer.h")
#include "org/allbinary/layer/AllBinaryLayer.h"
#endif



void UpDownVectorAI_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation UpDownVectorAI

- (void) initFields {
    
    self->index = 0;
}


- (instancetype) init:(AllBinaryLayer*)ownerLayerInterface :(GameInput*)gameInput {
        self = [super init:ownerLayerInterface :gameInput];
        [self initFields];
        VelocityInterfaceCompositeInterface* velocityInterfaceCompositeInterface = ((VelocityInterfaceCompositeInterface*) [self getOwnerLayerInterface]);
        self->velocityInterface = [((id<VelocityInterfaceCompositeInterface>) velocityInterfaceCompositeInterface) getVelocityProperties];
        [[self->velocityInterface getVelocityYBasicDecimalP] setint:0];
    return self;
}


// throws Exception
- (void) processAI:(AllBinaryLayerManager*)allBinaryLayerManager {
        int32_t y = [[self getOwnerLayerInterface] getHeight] * 270;
        if (self->index < 5) {
            BasicDecimal* basicDecimal = [self->velocityInterface getVelocityYBasicDecimalP];
            [basicDecimal setint:0];
            [basicDecimal addint:y];
            self->index++;
        } else if (self->index < 10) {
            BasicDecimal* basicDecimal = [self->velocityInterface getVelocityYBasicDecimalP];
            [basicDecimal setint:0];
            [basicDecimal subtractint:y];
            self->index++;
        } else {
            self->index = 0;
            [self processAI:allBinaryLayerManager];
        }
}

@end

