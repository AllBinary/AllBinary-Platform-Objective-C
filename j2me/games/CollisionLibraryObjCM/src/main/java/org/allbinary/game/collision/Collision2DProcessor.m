// Generated Code Do Not Modify
#include "org/allbinary/game/collision/Collision2DProcessor.h"
#include "org/allbinary/layer/AllBinaryLayer.h"
#include "org/allbinary/game/collision/CollisionProcessor.h"



void Collision2DProcessor_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation Collision2DProcessor

- (instancetype) init {
    self = [super init];
    return self;
}


- (bool) isCollision:(AllBinaryLayer*)myLayer :(AllBinaryLayer*)myLayer2 {
        if ([myLayer2 getXP] >= [myLayer getX2] || [myLayer2 getYP] >= [myLayer getY2] || [myLayer2 getX2] <= [myLayer getXP] || [myLayer2 getY2] <= [myLayer getYP]) {
            return false;
        } else {
            return true;
        }
}

@end

