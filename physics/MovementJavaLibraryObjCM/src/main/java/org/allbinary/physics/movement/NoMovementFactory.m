// Generated Code Do Not Modify
#include "org/allbinary/physics/movement/NoMovementFactory.h"
#include "org/allbinary/physics/movement/Movement.h"


static NoMovementFactory* NoMovementFactory_instance;

void NoMovementFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    NoMovementFactory_instance = [((NoMovementFactory*) [NoMovementFactory alloc]) init];
}

@implementation NoMovementFactory

- (void) initFields {
    self->movement = [((Movement*) [Movement alloc]) init];
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (NoMovementFactory*) getInstance {
        return (NoMovementFactory_staticInit(), NoMovementFactory_instance);
}


- (Movement*) getMovmentInstance {
        return self->movement;
}

@end

