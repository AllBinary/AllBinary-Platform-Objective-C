// Generated Code Do Not Modify
#include "org/allbinary/image/opengles/OpenGLImageSpecificFactory.h"


static OpenGLImageSpecificFactory* OpenGLImageSpecificFactory_instance;

void OpenGLImageSpecificFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    OpenGLImageSpecificFactory_instance = ((OpenGLImageSpecificFactory*) [((OpenGLImageSpecificFactory*) [OpenGLImageSpecificFactory alloc]) init]);
}

@implementation OpenGLImageSpecificFactory

- (void) initFields {
    self->updating = false;
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (OpenGLImageSpecificFactory*) getInstance {
        return (OpenGLImageSpecificFactory_staticInit(), OpenGLImageSpecificFactory_instance);
}

@end

