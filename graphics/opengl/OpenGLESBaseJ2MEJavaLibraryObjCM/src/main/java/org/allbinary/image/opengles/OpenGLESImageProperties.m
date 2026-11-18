// Generated Code Do Not Modify
#include "org/allbinary/image/opengles/OpenGLESImageProperties.h"



void OpenGLESImageProperties_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation OpenGLESImageProperties

- (void) initFields {
    self->textureID = -1;
    self->scaleX = 1.0f;
    self->scaleY = 1.0f;
    self->scaleX2 = 1.0f;
    self->scaleY2 = 1.0f;
    self->angle = 0;
    self->redf = 1.0f;
    self->greenf = 1.0f;
    self->bluef = 1.0f;
    self->alphaf = 0.0f;
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}

@end

