// Generated Code Do Not Modify
#include "org/allbinary/input/motion/button/NoButtonsTouchInputFactory.h"
#include "org/allbinary/input/motion/button/BaseTouchInput.h"


static BaseTouchInput* NoButtonsTouchInputFactory_instance;

void NoButtonsTouchInputFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    NoButtonsTouchInputFactory_instance = [((BaseTouchInput*) [BaseTouchInput alloc]) init];
}

@implementation NoButtonsTouchInputFactory

- (instancetype) init {
    self = [super init];
    return self;
}


+ (BaseTouchInput*) getInstance {
        return (NoButtonsTouchInputFactory_staticInit(), NoButtonsTouchInputFactory_instance);
}

@end

