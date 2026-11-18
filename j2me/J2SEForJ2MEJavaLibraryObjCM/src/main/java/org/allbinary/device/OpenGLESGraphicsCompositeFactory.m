// Generated Code Do Not Modify
#include "org/allbinary/device/OpenGLESGraphicsCompositeFactory.h"
#include "org/allbinary/device/OpenGLESGraphicsFactory.h"


static OpenGLESGraphicsCompositeFactory* OpenGLESGraphicsCompositeFactory_instance;

void OpenGLESGraphicsCompositeFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    OpenGLESGraphicsCompositeFactory_instance = [((OpenGLESGraphicsCompositeFactory*) [OpenGLESGraphicsCompositeFactory alloc]) init];
}

@implementation OpenGLESGraphicsCompositeFactory

- (void) initFields {
    self->openGLESGraphicsFactory = [((OpenGLESGraphicsFactory*) [OpenGLESGraphicsFactory alloc]) init];
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (OpenGLESGraphicsCompositeFactory*) getInstance {
        return (OpenGLESGraphicsCompositeFactory_staticInit(), OpenGLESGraphicsCompositeFactory_instance);
}


- (void) set:(OpenGLESGraphicsFactory*)openGLESGraphicsFactory {
        self->openGLESGraphicsFactory = openGLESGraphicsFactory;
}


- (OpenGLESGraphicsFactory*) get {
        return self->openGLESGraphicsFactory;
}

@end

