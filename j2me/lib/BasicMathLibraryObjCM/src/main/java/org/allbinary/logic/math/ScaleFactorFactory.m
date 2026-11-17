// Generated Code Do Not Modify
#include "org/allbinary/logic/math/ScaleFactorFactory.h"


static ScaleFactorFactory* ScaleFactorFactory_instance;

void ScaleFactorFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    ScaleFactorFactory_instance = [((ScaleFactorFactory*) [ScaleFactorFactory alloc]) init];
}

@implementation ScaleFactorFactory

- (void) initFields {
    self->DEFAULT_SCALE_FACTOR = 10;
    self->DEFAULT_SCALE_VALUE = 1024;
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (ScaleFactorFactory*) getInstance {
        return (ScaleFactorFactory_staticInit(), ScaleFactorFactory_instance);
}

@end

