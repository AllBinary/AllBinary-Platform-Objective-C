// Generated Code Do Not Modify
#include "org/allbinary/game/layer/pickup/PickedUpLayerInterfaceFactoryBase.h"
#include "org/allbinary/animation/Animation.h"
#include "org/allbinary/layer/AllBinaryLayer.h"
#include "org/allbinary/game/layer/pickup/PickedUpLayerInterfaceFactoryInterface.h"
#include "org/allbinary/game/layer/pickup/PickedUpLayerType.h"


PickedUpLayerInterfaceFactoryBase* PickedUpLayerInterfaceFactoryBase_NULL_PICKED_UP_LAYER_FACTORY_BASE;

void PickedUpLayerInterfaceFactoryBase_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    PickedUpLayerInterfaceFactoryBase_NULL_PICKED_UP_LAYER_FACTORY_BASE = [((PickedUpLayerInterfaceFactoryBase*) [PickedUpLayerInterfaceFactoryBase alloc]) init];
}

@implementation PickedUpLayerInterfaceFactoryBase

- (instancetype) init {
    self = [super init];
    return self;
}


- (AllBinaryLayer*) getIconLayer {
        java_throw(java_exception_new("RuntimeException", ""));
}


- (Animation*) getAnimationInterface {
        java_throw(java_exception_new("RuntimeException", ""));
}


- (PickedUpLayerType*) getPickedUpLayerType {
        java_throw(java_exception_new("RuntimeException", ""));
}

@end

