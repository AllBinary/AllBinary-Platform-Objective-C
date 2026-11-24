// Generated Code Do Not Modify
#include "org/allbinary/game/collision/CollidableNeverCollideBehaviorFactory.h"
#include "org/allbinary/game/collision/CollidableBaseBehaviorFactory.h"
#include "org/allbinary/game/collision/CollidableNeverCollideBehavior.h"
#include "org/allbinary/game/collision/CollidableBaseBehavior.h"


static CollidableNeverCollideBehaviorFactory* CollidableNeverCollideBehaviorFactory_instanceC;

void CollidableNeverCollideBehaviorFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    CollidableNeverCollideBehaviorFactory_instanceC = ((CollidableNeverCollideBehaviorFactory*) [((CollidableNeverCollideBehaviorFactory*) [CollidableNeverCollideBehaviorFactory alloc]) init]);
}

@implementation CollidableNeverCollideBehaviorFactory

- (void) initFields {
    self->instance = ((CollidableNeverCollideBehavior*) [((CollidableNeverCollideBehavior*) [CollidableNeverCollideBehavior alloc]) init:false]);
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (CollidableNeverCollideBehaviorFactory*) getInstance {
        return (CollidableNeverCollideBehaviorFactory_staticInit(), CollidableNeverCollideBehaviorFactory_instanceC);
}


- (CollidableBaseBehavior*) createBehavior {
        return self->instance;
}

@end

