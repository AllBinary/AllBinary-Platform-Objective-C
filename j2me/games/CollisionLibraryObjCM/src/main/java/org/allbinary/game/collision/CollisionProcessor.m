// Generated Code Do Not Modify
#include "org/allbinary/game/collision/CollisionProcessor.h"
#include "org/allbinary/layer/AllBinaryLayer.h"



void CollisionProcessor_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation CollisionProcessor

- (instancetype) init {
    self = [super init];
    return self;
}


- (bool) isCollision:(AllBinaryLayer*)myLayer :(AllBinaryLayer*)myLayer2 {
        return false;
}

@end

