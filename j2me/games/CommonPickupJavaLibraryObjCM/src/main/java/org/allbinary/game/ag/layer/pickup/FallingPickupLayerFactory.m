// Generated Code Do Not Modify
#include "org/allbinary/game/ag/layer/pickup/FallingPickupLayerFactory.h"
#include "org/allbinary/game/multiplayer/layer/RemoteInfo.h"
#include "org/allbinary/layer/AllBinaryLayer.h"
#include "org/allbinary/game/ag/layer/pickup/FallingPickupLayer.h"



void FallingPickupLayerFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation FallingPickupLayerFactory

- (instancetype) init {
    self = [super init];
    return self;
}


// throws Exception
- (AllBinaryLayer*) getInstance {
        return ((FallingPickupLayer*) [((FallingPickupLayer*) [FallingPickupLayer alloc]) init:(RemoteInfo_staticInit(), RemoteInfo_REMOTE_INFO)]);
}

@end

