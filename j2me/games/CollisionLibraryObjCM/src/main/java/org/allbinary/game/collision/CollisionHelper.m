// Generated Code Do Not Modify
#include "org/allbinary/game/collision/CollisionHelper.h"
#include "org/allbinary/game/layer/CollidableCompositeLayer.h"
#include "org/allbinary/layer/AllBinaryLayer.h"



void CollisionHelper_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation CollisionHelper

- (void) initFields {
    
}


- (instancetype) init:(AllBinaryLayer*)sourceLayerInterface {
    self = [super init];
    [self initFields];
        self->sourceLayerInterface = sourceLayerInterface;
    return self;
}


- (bool) isCollidable:(CollidableCompositeLayer*)layerInterface {
        return true;
}


- (AllBinaryLayer*) getOwnerLayerInterface {
        return self->sourceLayerInterface;
}


- (void) setOwnerLayerInterface:(AllBinaryLayer*)sourceLayerInterface {
        self->sourceLayerInterface = sourceLayerInterface;
}

@end

