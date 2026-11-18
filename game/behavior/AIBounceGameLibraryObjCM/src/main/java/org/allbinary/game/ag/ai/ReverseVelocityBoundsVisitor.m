// Generated Code Do Not Modify
#include "org/allbinary/game/ag/ai/ReverseVelocityBoundsVisitor.h"
#include "org/allbinary/game/physics/velocity/VelocityInterface.h"
#include "org/allbinary/game/physics/velocity/VelocityInterfaceCompositeInterface.h"
#include "org/allbinary/layer/LayerInterface.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"



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
        self->velocityInterface = ((VelocityInterface*) [velocityInterfaceCompositeInterface getVelocityProperties]);
    return self;
}


- (int32_t) getX {
        return [self->layerInterface getXP];
}


- (int32_t) getY {
        return [self->layerInterface getYP];
}


- (void) minX {
        if ([[self->velocityInterface getVelocityXBasicDecimalP] getUnscaled] < 0LL) {
            [[self->velocityInterface getVelocityXBasicDecimalP] multiplyint:-1];
        }
}


- (void) maxX {
        if ([[self->velocityInterface getVelocityXBasicDecimalP] getUnscaled] > 0LL) {
            [[self->velocityInterface getVelocityXBasicDecimalP] multiplyint:-1];
        }
}


- (void) minY {
        if ([[self->velocityInterface getVelocityYBasicDecimalP] getUnscaled] < 0LL) {
            [[self->velocityInterface getVelocityYBasicDecimalP] multiplyint:-1];
        }
}


- (void) maxY {
        if ([[self->velocityInterface getVelocityYBasicDecimalP] getUnscaled] > 0LL) {
            [[self->velocityInterface getVelocityYBasicDecimalP] multiplyint:-1];
        }
}

@end

