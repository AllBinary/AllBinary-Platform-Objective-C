// Generated Code Do Not Modify
#include "org/allbinary/game/collision/CollidableAlwaysPickupNeverCollideBehaviorFactory.h"
#include "org/allbinary/game/collision/CollidableBaseBehaviorFactory.h"
#include "org/allbinary/game/collision/CollidableAlwaysPickupNeverCollideBehavior.h"
#include "org/allbinary/game/collision/CollidableBaseBehavior.h"


static CollidableAlwaysPickupNeverCollideBehaviorFactory* CollidableAlwaysPickupNeverCollideBehaviorFactory_instanceC;

void CollidableAlwaysPickupNeverCollideBehaviorFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    CollidableAlwaysPickupNeverCollideBehaviorFactory_instanceC = ((CollidableAlwaysPickupNeverCollideBehaviorFactory*) [((CollidableAlwaysPickupNeverCollideBehaviorFactory*) [CollidableAlwaysPickupNeverCollideBehaviorFactory alloc]) init]);
}

@implementation CollidableAlwaysPickupNeverCollideBehaviorFactory

- (void) initFields {
    self->instance = ((CollidableAlwaysPickupNeverCollideBehavior*) [((CollidableAlwaysPickupNeverCollideBehavior*) [CollidableAlwaysPickupNeverCollideBehavior alloc]) init]);
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (CollidableAlwaysPickupNeverCollideBehaviorFactory*) getInstance {
        return (CollidableAlwaysPickupNeverCollideBehaviorFactory_staticInit(), CollidableAlwaysPickupNeverCollideBehaviorFactory_instanceC);
}


- (CollidableBaseBehavior*) createBehavior {
        return self->instance;
}

@end

