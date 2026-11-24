// Generated Code Do Not Modify
#include "org/allbinary/game/ag/ai/ReverseVelocityBoundsVisitor.h"
#include "org/allbinary/game/physics/velocity/VelocityInterface.h"
#include "org/allbinary/game/physics/velocity/VelocityInterfaceCompositeInterface.h"
#include "org/allbinary/layer/LayerInterface.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#if __has_include("org/allbinary/game/ag/ai/BasicDecimal.h")
#include "org/allbinary/game/ag/ai/BasicDecimal.h"
#endif
#if __has_include("org/allbinary/bounds/BasicDecimal.h")
#include "org/allbinary/bounds/BasicDecimal.h"
#endif
#if __has_include("org/allbinary/game/physics/velocity/BasicDecimal.h")
#include "org/allbinary/game/physics/velocity/BasicDecimal.h"
#endif
#if __has_include("org/allbinary/game/physics/velocity/BasicDecimal.h")
#include "org/allbinary/game/physics/velocity/BasicDecimal.h"
#endif
#if __has_include("org/allbinary/layer/BasicDecimal.h")
#include "org/allbinary/layer/BasicDecimal.h"
#endif
#if __has_include("org/allbinary/logic/communication/log/BasicDecimal.h")
#include "org/allbinary/logic/communication/log/BasicDecimal.h"
#endif
#if __has_include("org/allbinary/game/ag/ai/BasicDecimal.h")
#include "org/allbinary/game/ag/ai/BasicDecimal.h"
#endif
#if __has_include("org/allbinary/bounds/BasicDecimal.h")
#include "org/allbinary/bounds/BasicDecimal.h"
#endif
#if __has_include("org/allbinary/game/physics/velocity/BasicDecimal.h")
#include "org/allbinary/game/physics/velocity/BasicDecimal.h"
#endif
#if __has_include("org/allbinary/game/physics/velocity/BasicDecimal.h")
#include "org/allbinary/game/physics/velocity/BasicDecimal.h"
#endif
#if __has_include("org/allbinary/layer/BasicDecimal.h")
#include "org/allbinary/layer/BasicDecimal.h"
#endif
#if __has_include("org/allbinary/logic/communication/log/BasicDecimal.h")
#include "org/allbinary/logic/communication/log/BasicDecimal.h"
#endif
#if __has_include("org/allbinary/game/ag/ai/BasicDecimal.h")
#include "org/allbinary/game/ag/ai/BasicDecimal.h"
#endif
#if __has_include("org/allbinary/bounds/BasicDecimal.h")
#include "org/allbinary/bounds/BasicDecimal.h"
#endif
#if __has_include("org/allbinary/game/physics/velocity/BasicDecimal.h")
#include "org/allbinary/game/physics/velocity/BasicDecimal.h"
#endif
#if __has_include("org/allbinary/game/physics/velocity/BasicDecimal.h")
#include "org/allbinary/game/physics/velocity/BasicDecimal.h"
#endif
#if __has_include("org/allbinary/layer/BasicDecimal.h")
#include "org/allbinary/layer/BasicDecimal.h"
#endif
#if __has_include("org/allbinary/logic/communication/log/BasicDecimal.h")
#include "org/allbinary/logic/communication/log/BasicDecimal.h"
#endif
#if __has_include("org/allbinary/game/ag/ai/BasicDecimal.h")
#include "org/allbinary/game/ag/ai/BasicDecimal.h"
#endif
#if __has_include("org/allbinary/bounds/BasicDecimal.h")
#include "org/allbinary/bounds/BasicDecimal.h"
#endif
#if __has_include("org/allbinary/game/physics/velocity/BasicDecimal.h")
#include "org/allbinary/game/physics/velocity/BasicDecimal.h"
#endif
#if __has_include("org/allbinary/game/physics/velocity/BasicDecimal.h")
#include "org/allbinary/game/physics/velocity/BasicDecimal.h"
#endif
#if __has_include("org/allbinary/layer/BasicDecimal.h")
#include "org/allbinary/layer/BasicDecimal.h"
#endif
#if __has_include("org/allbinary/logic/communication/log/BasicDecimal.h")
#include "org/allbinary/logic/communication/log/BasicDecimal.h"
#endif
#if __has_include("org/allbinary/game/ag/ai/BasicDecimal.h")
#include "org/allbinary/game/ag/ai/BasicDecimal.h"
#endif
#if __has_include("org/allbinary/bounds/BasicDecimal.h")
#include "org/allbinary/bounds/BasicDecimal.h"
#endif
#if __has_include("org/allbinary/game/physics/velocity/BasicDecimal.h")
#include "org/allbinary/game/physics/velocity/BasicDecimal.h"
#endif
#if __has_include("org/allbinary/game/physics/velocity/BasicDecimal.h")
#include "org/allbinary/game/physics/velocity/BasicDecimal.h"
#endif
#if __has_include("org/allbinary/layer/BasicDecimal.h")
#include "org/allbinary/layer/BasicDecimal.h"
#endif
#if __has_include("org/allbinary/logic/communication/log/BasicDecimal.h")
#include "org/allbinary/logic/communication/log/BasicDecimal.h"
#endif
#if __has_include("org/allbinary/game/ag/ai/BasicDecimal.h")
#include "org/allbinary/game/ag/ai/BasicDecimal.h"
#endif
#if __has_include("org/allbinary/bounds/BasicDecimal.h")
#include "org/allbinary/bounds/BasicDecimal.h"
#endif
#if __has_include("org/allbinary/game/physics/velocity/BasicDecimal.h")
#include "org/allbinary/game/physics/velocity/BasicDecimal.h"
#endif
#if __has_include("org/allbinary/game/physics/velocity/BasicDecimal.h")
#include "org/allbinary/game/physics/velocity/BasicDecimal.h"
#endif
#if __has_include("org/allbinary/layer/BasicDecimal.h")
#include "org/allbinary/layer/BasicDecimal.h"
#endif
#if __has_include("org/allbinary/logic/communication/log/BasicDecimal.h")
#include "org/allbinary/logic/communication/log/BasicDecimal.h"
#endif
#if __has_include("org/allbinary/game/ag/ai/BasicDecimal.h")
#include "org/allbinary/game/ag/ai/BasicDecimal.h"
#endif
#if __has_include("org/allbinary/bounds/BasicDecimal.h")
#include "org/allbinary/bounds/BasicDecimal.h"
#endif
#if __has_include("org/allbinary/game/physics/velocity/BasicDecimal.h")
#include "org/allbinary/game/physics/velocity/BasicDecimal.h"
#endif
#if __has_include("org/allbinary/game/physics/velocity/BasicDecimal.h")
#include "org/allbinary/game/physics/velocity/BasicDecimal.h"
#endif
#if __has_include("org/allbinary/layer/BasicDecimal.h")
#include "org/allbinary/layer/BasicDecimal.h"
#endif
#if __has_include("org/allbinary/logic/communication/log/BasicDecimal.h")
#include "org/allbinary/logic/communication/log/BasicDecimal.h"
#endif
#if __has_include("org/allbinary/game/ag/ai/BasicDecimal.h")
#include "org/allbinary/game/ag/ai/BasicDecimal.h"
#endif
#if __has_include("org/allbinary/bounds/BasicDecimal.h")
#include "org/allbinary/bounds/BasicDecimal.h"
#endif
#if __has_include("org/allbinary/game/physics/velocity/BasicDecimal.h")
#include "org/allbinary/game/physics/velocity/BasicDecimal.h"
#endif
#if __has_include("org/allbinary/game/physics/velocity/BasicDecimal.h")
#include "org/allbinary/game/physics/velocity/BasicDecimal.h"
#endif
#if __has_include("org/allbinary/layer/BasicDecimal.h")
#include "org/allbinary/layer/BasicDecimal.h"
#endif
#if __has_include("org/allbinary/logic/communication/log/BasicDecimal.h")
#include "org/allbinary/logic/communication/log/BasicDecimal.h"
#endif



void ReverseVelocityBoundsVisitor_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation ReverseVelocityBoundsVisitor

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
    
    
}


- (instancetype) init:(LayerInterface*)layerInterface {
    self = [super init];
    [self initFields];
        self->layerInterface = layerInterface;
        VelocityInterfaceCompositeInterface* velocityInterfaceCompositeInterface = ((VelocityInterfaceCompositeInterface*) layerInterface);
        self->velocityInterface = ((VelocityInterface*) [((id<VelocityInterfaceCompositeInterface>) velocityInterfaceCompositeInterface) getVelocityProperties]);
    return self;
}


- (int32_t) getX {
        return [((id<LayerInterface>) self->layerInterface) getXP];
}


- (int32_t) getY {
        return [((id<LayerInterface>) self->layerInterface) getYP];
}


- (void) minX {
        if ([[((id<VelocityInterface>) self->velocityInterface) getVelocityXBasicDecimalP] getUnscaled] < 0LL) {
            [[((id<VelocityInterface>) self->velocityInterface) getVelocityXBasicDecimalP] multiplyint:-1];
        }
}


- (void) maxX {
        if ([[((id<VelocityInterface>) self->velocityInterface) getVelocityXBasicDecimalP] getUnscaled] > 0LL) {
            [[((id<VelocityInterface>) self->velocityInterface) getVelocityXBasicDecimalP] multiplyint:-1];
        }
}


- (void) minY {
        if ([[((id<VelocityInterface>) self->velocityInterface) getVelocityYBasicDecimalP] getUnscaled] < 0LL) {
            [[((id<VelocityInterface>) self->velocityInterface) getVelocityYBasicDecimalP] multiplyint:-1];
        }
}


- (void) maxY {
        if ([[((id<VelocityInterface>) self->velocityInterface) getVelocityYBasicDecimalP] getUnscaled] > 0LL) {
            [[((id<VelocityInterface>) self->velocityInterface) getVelocityYBasicDecimalP] multiplyint:-1];
        }
}

@end

