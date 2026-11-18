// Generated Code Do Not Modify
#include "org/allbinary/game/layer/pickup/PickupLayerCircularStaticPool.h"
#include "org/allbinary/game/layer/pickup/PickupLayer.h"
#include "org/allbinary/game/layer/pickup/PickedUpLayerInterface.h"
#include "org/allbinary/game/layer/pickup/PickedUpLayerInterfaceFactoryInterface.h"


static PickupLayerCircularStaticPool* PickupLayerCircularStaticPool_SINGLETON;

void PickupLayerCircularStaticPool_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    PickupLayerCircularStaticPool_SINGLETON = [((PickupLayerCircularStaticPool*) [PickupLayerCircularStaticPool alloc]) init];
}

@implementation PickupLayerCircularStaticPool


- (instancetype) init {
    self = [super init];
    return self;
}


+ (PickupLayerCircularStaticPool*) getInstance {
        return (PickupLayerCircularStaticPool_staticInit(), PickupLayerCircularStaticPool_SINGLETON);
}


// throws Exception
- (PickedUpLayerInterface*) getInstanceXYZ:(PickedUpLayerInterfaceFactoryInterface*)pickedUpLayerInterfaceFactoryInterface :(int32_t)x :(int32_t)y :(int32_t)z {
        PickupLayer* pickupLayer = ((PickupLayer*) [self getNextInstance]);
        [pickupLayer initXYZ:x :y :z];
        [pickupLayer init_:pickedUpLayerInterfaceFactoryInterface :[pickedUpLayerInterfaceFactoryInterface getAnimationInterface]];
        return pickupLayer;
}

@end

