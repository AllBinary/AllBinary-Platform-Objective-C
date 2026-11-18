// Generated Code Do Not Modify
#include "org/allbinary/game/collision/CollidableBaseBehaviorFactory.h"
#include "org/allbinary/game/collision/CollidableBaseBehaviorFactoryInterface.h"
#include "org/allbinary/game/collision/CollidableBaseBehavior.h"



void CollidableBaseBehaviorFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation CollidableBaseBehaviorFactory

- (instancetype) init {
    self = [super init];
    return self;
}


- (CollidableBaseBehavior*) createBehavior {
        java_throw(java_exception_new("RuntimeException", ""));
}

@end

