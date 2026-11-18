// Generated Code Do Not Modify
#include "org/allbinary/game/layer/pickup/PickedUpLayerInterfaceFactory.h"
#include "org/allbinary/animation/Animation.h"
#include "org/allbinary/layer/AllBinaryLayer.h"
#include "org/allbinary/game/layer/pickup/PickedUpLayerInterfaceFactoryBase.h"
#include "org/allbinary/game/layer/pickup/PickedUpLayerType.h"
#include "org/allbinary/game/layer/pickup/IconLayer.h"



void PickedUpLayerInterfaceFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation PickedUpLayerInterfaceFactory

- (void) initFields {
    
    
    
}


- (instancetype) init:(PickedUpLayerType*)pickeUpLayerType :(IconLayer*)iconLayer :(Animation*)animationInterface {
    self = [super init];
    [self initFields];
        self->pickedUpLayerType = pickeUpLayerType;
        self->animationInterface = animationInterface;
        self->iconLayer = iconLayer;
    return self;
}


- (AllBinaryLayer*) getIconLayer {
        return self->iconLayer;
}


- (Animation*) getAnimationInterface {
        return self->animationInterface;
}


- (PickedUpLayerType*) getPickedUpLayerType {
        return self->pickedUpLayerType;
}

@end

