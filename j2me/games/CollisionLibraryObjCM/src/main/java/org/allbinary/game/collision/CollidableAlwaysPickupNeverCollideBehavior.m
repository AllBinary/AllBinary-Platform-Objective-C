// Generated Code Do Not Modify
#include "org/allbinary/game/collision/CollidableAlwaysPickupNeverCollideBehavior.h"
#include "org/allbinary/layer/AllBinaryLayer.h"
#include "org/allbinary/game/collision/CollidableNeverCollideBehavior.h"
#include "org/allbinary/game/collision/CollisionTypeFactory.h"
#include "org/allbinary/game/collision/CollisionType.h"



void CollidableAlwaysPickupNeverCollideBehavior_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation CollidableAlwaysPickupNeverCollideBehavior


- (instancetype) init {
        self = [super init:true];
    return self;
}


- (CollisionType*) getCollisionTypeWith:(AllBinaryLayer*)layerInterface {
        return [CollisionTypeFactory getInstance]->PICKUP;
}

@end

