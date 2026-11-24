// Generated Code Do Not Modify
#include "org/allbinary/device/OpenGLESNullGraphicsFactory.h"
#include "org/allbinary/device/OpenGLESGraphics.h"


static OpenGLESGraphics* OpenGLESNullGraphicsFactory_instance;

void OpenGLESNullGraphicsFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    OpenGLESNullGraphicsFactory_instance = ((OpenGLESGraphics*) [((OpenGLESGraphics*) [OpenGLESGraphics alloc]) init]);
}

@implementation OpenGLESNullGraphicsFactory

- (instancetype) init {
    self = [super init];
    return self;
}


+ (OpenGLESGraphics*) getInstance {
        return (OpenGLESNullGraphicsFactory_staticInit(), OpenGLESNullGraphicsFactory_instance);
}

@end

