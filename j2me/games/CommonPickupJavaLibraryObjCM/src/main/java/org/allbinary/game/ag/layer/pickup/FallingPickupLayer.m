// Generated Code Do Not Modify
#include "org/allbinary/game/ag/layer/pickup/FallingPickupLayer.h"
#include "org/allbinary/animation/NullAnimationFactory.h"
#include "org/allbinary/game/layer/pickup/CountedPickedUpLayerInterfaceFactory.h"
#include "org/allbinary/game/multiplayer/layer/RemoteInfo.h"
#include "org/allbinary/graphics/PointFactory.h"
#include "org/allbinary/graphics/Rectangle.h"
#include "org/allbinary/layer/AllBinaryLayerManager.h"
#include "org/allbinary/view/ViewPosition.h"
#if __has_include("org/allbinary/animation/NullAnimationFactory.h")
#include "org/allbinary/animation/NullAnimationFactory.h"
#endif
#if __has_include("org/allbinary/graphics/PointFactory.h")
#include "org/allbinary/graphics/PointFactory.h"
#endif


static const char* FallingPickupLayer_NAME = "FallingPickupLayer";

void FallingPickupLayer_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation FallingPickupLayer


- (instancetype) init:(RemoteInfo*)remoteInfo {
        self = [super init:FallingPickupLayer_NAME :remoteInfo :0 :(CountedPickedUpLayerInterfaceFactory_staticInit(), CountedPickedUpLayerInterfaceFactory_NULL_COUNTED_PICKUP_LAYER_FACTORY) :[[NullAnimationFactory getFactoryInstance] getInstance:0] :((Rectangle*) [((Rectangle*) [Rectangle alloc]) init:[PointFactory getInstance]->ZERO_ZERO :0 :0]) :[ViewPosition getInstanceD]];
    return self;
}


- (void) processTick:(AllBinaryLayerManager*)allBinaryLayerManager {
        [self setPosition:self->x :self->y + 1 :self->z];
}


- (bool) implmentsTickableInterface {
        return true;
}

@end

