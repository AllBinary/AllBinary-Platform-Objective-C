// Generated Code Do Not Modify
#include "org/allbinary/graphics/RendererStateFactory.h"


static RendererStateFactory* RendererStateFactory_instance;

void RendererStateFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    RendererStateFactory_instance = [((RendererStateFactory*) [RendererStateFactory alloc]) init];
}

@implementation RendererStateFactory

- (void) initFields {
    self->loaded = false;
    self->surfaceChanged = false;
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (RendererStateFactory*) getInstance {
        return (RendererStateFactory_staticInit(), RendererStateFactory_instance);
}


- (void) setLoaded:(bool)loaded {
        self->loaded = loaded;
}


- (bool) isLoaded {
        return self->loaded;
}


- (void) setSurfaceChanged:(bool)initialized {
        self->surfaceChanged = initialized;
}


- (bool) isSurfaceChanged {
        return self->surfaceChanged;
}

@end

