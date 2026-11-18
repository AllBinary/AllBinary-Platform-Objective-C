// Generated Code Do Not Modify
#include "org/allbinary/game/collision/CollidableNeverCollideBehavior.h"
#include "org/allbinary/game/layer/CollidableCompositeLayer.h"
#include "org/allbinary/game/collision/CollidableBaseBehavior.h"
#include "org/allbinary/game/collision/CollidableInterfaceCompositeInterface.h"



void CollidableNeverCollideBehavior_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation CollidableNeverCollideBehavior


- (instancetype) init:(bool)isCollidable {
        self = [super init:isCollidable];
    return self;
}


- (bool) isCollision:(CollidableCompositeLayer*)ownerLayer :(CollidableCompositeLayer*)allbinaryCollidableLayer {
        return false;
}


// throws Exception
- (void) collide:(CollidableCompositeLayer*)ownerLayer :(CollidableCompositeLayer*)allbinaryCollidableLayer {
}


- (void) collideInterface:(CollidableCompositeLayer*)ownerLayer :(CollidableInterfaceCompositeInterface*)collidableInterfaceCompositeInterface {
}


- (bool) isCollisionInterface:(CollidableCompositeLayer*)ownerLayer :(CollidableInterfaceCompositeInterface*)collidableInterfaceCompositeInterface {
        return false;
}

@end

