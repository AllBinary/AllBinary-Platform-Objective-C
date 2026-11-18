// Generated Code Do Not Modify
#include "org/allbinary/animation/transition/shake/ShakeEventFactory.h"
#include "org/allbinary/animation/transition/shake/ShakeEvent.h"


static ShakeEventFactory* ShakeEventFactory_instance;

void ShakeEventFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    ShakeEventFactory_instance = [((ShakeEventFactory*) [ShakeEventFactory alloc]) init];
}

@implementation ShakeEventFactory

- (void) initFields {
    self->MICRO = [((ShakeEvent*) [ShakeEvent alloc]) init];
    self->SMALL = [((ShakeEvent*) [ShakeEvent alloc]) init];
    self->MEDIUM = [((ShakeEvent*) [ShakeEvent alloc]) init];
    self->LARGE = [((ShakeEvent*) [ShakeEvent alloc]) init];
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (ShakeEventFactory*) getInstance {
        return (ShakeEventFactory_staticInit(), ShakeEventFactory_instance);
}


- (void) init_ {
}

@end

