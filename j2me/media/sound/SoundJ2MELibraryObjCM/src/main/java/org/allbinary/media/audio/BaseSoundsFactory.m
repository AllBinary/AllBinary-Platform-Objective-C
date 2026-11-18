// Generated Code Do Not Modify
#include "org/allbinary/media/audio/BaseSoundsFactory.h"
#include "org/allbinary/media/audio/SoundsFactoryInterface.h"
#include "org/allbinary/media/audio/Sound.h"



void BaseSoundsFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation BaseSoundsFactory

- (void) initFields {
    self->initialized = false;
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


- (void) init_ {
}


// throws Exception
- (Sound**) getSoundInterfaceArray {
        return ((Sound**) java_array_new(sizeof(Sound*), 0));
}


- (void) setInitialized:(bool)initialized {
        self->initialized = initialized;
}


- (bool) isInitialized {
        return self->initialized;
}

@end

