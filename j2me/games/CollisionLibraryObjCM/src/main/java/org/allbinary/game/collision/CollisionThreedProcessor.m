// Generated Code Do Not Modify
#include "org/allbinary/game/collision/CollisionThreedProcessor.h"
#include "org/allbinary/layer/AllBinaryLayer.h"
#include "org/allbinary/game/collision/CollisionProcessor.h"



void CollisionThreedProcessor_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation CollisionThreedProcessor

- (instancetype) init {
    self = [super init];
    return self;
}


- (bool) isCollision:(AllBinaryLayer*)myLayer :(AllBinaryLayer*)myLayer2 {
        if ([myLayer2 getXP] >= [myLayer getX2] || [myLayer2 getYP] >= [myLayer getY2] || [myLayer2 getX2] <= [myLayer getXP] || [myLayer2 getY2] <= [myLayer getYP] || [myLayer2 getZP] < [myLayer getZ2] || [myLayer2 getZ2] > [myLayer getZP]) {
            return false;
        } else {
            return true;
        }
}

@end

