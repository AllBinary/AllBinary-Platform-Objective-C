// Generated Code Do Not Modify
#include "org/allbinary/emulator/InitEmulatorFactory.h"


static InitEmulatorFactory* InitEmulatorFactory_instance;

void InitEmulatorFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    InitEmulatorFactory_instance = [((InitEmulatorFactory*) [InitEmulatorFactory alloc]) init];
}

@implementation InitEmulatorFactory

- (void) initFields {
    self->initEmulator = false;
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (InitEmulatorFactory*) getInstance {
        return (InitEmulatorFactory_staticInit(), InitEmulatorFactory_instance);
}


- (void) setInitEmulator:(bool)initEmulator {
        self->initEmulator = initEmulator;
}


- (bool) isInitEmulator {
        return self->initEmulator;
}

@end

