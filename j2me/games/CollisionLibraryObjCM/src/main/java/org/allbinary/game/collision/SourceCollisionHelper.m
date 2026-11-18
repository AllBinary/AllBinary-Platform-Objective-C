// Generated Code Do Not Modify
#include "org/allbinary/game/collision/SourceCollisionHelper.h"
#include "org/allbinary/game/layer/CollidableCompositeLayer.h"
#include "org/allbinary/layer/AllBinaryLayer.h"
#include "org/allbinary/game/collision/CollisionHelper.h"



void SourceCollisionHelper_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation SourceCollisionHelper


- (instancetype) init:(AllBinaryLayer*)layerInterface {
        self = [super init:layerInterface];
    return self;
}


- (bool) isCollidable:(CollidableCompositeLayer*)layerInterface {
        if (self->sourceLayerInterface != layerInterface) {
            return true;
        }
        return false;
}

@end

