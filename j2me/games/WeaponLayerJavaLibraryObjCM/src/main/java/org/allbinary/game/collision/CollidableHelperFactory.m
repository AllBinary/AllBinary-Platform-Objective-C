// Generated Code Do Not Modify
#include "org/allbinary/game/collision/CollidableHelperFactory.h"
#include "org/allbinary/game/configuration/feature/Features.h"
#include "org/allbinary/game/configuration/feature/GameFeatureFactory.h"
#include "org/allbinary/layer/AllBinaryLayer.h"
#include "org/allbinary/game/collision/SourceCollisionHelper.h"
#include "org/allbinary/game/collision/CollisionHelper.h"
#if __has_include("org/allbinary/game/configuration/feature/Features.h")
#include "org/allbinary/game/configuration/feature/Features.h"
#endif
#if __has_include("org/allbinary/game/configuration/feature/GameFeatureFactory.h")
#include "org/allbinary/game/configuration/feature/GameFeatureFactory.h"
#endif



void CollidableHelperFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation CollidableHelperFactory

- (instancetype) init {
    self = [super init];
    return self;
}


+ (CollisionHelper*) getInstance {
        if ([[Features getInstance] isFeature:[GameFeatureFactory getInstance]->COLLISIONS_WITH_SOURCE]) {
            return ((CollisionHelper*) [((CollisionHelper*) [CollisionHelper alloc]) init:(AllBinaryLayer_staticInit(), AllBinaryLayer_NULL_ALLBINARY_LAYER)]);
        } else {
            return ((SourceCollisionHelper*) [((SourceCollisionHelper*) [SourceCollisionHelper alloc]) init:(AllBinaryLayer_staticInit(), AllBinaryLayer_NULL_ALLBINARY_LAYER)]);
        }
}

@end

