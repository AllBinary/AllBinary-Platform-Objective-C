// Generated Code Do Not Modify
#include "org/allbinary/device/OpenGLESGraphicsFactory.h"
#include "org/allbinary/device/OpenGLESNullGraphicsFactory.h"
#include "org/allbinary/device/OpenGLESGraphics.h"



void OpenGLESGraphicsFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation OpenGLESGraphicsFactory

- (instancetype) init {
    self = [super init];
    return self;
}


- (OpenGLESGraphics*) getOpenGLESGraphicsInstance {
        return [OpenGLESNullGraphicsFactory getInstance];
}

@end

