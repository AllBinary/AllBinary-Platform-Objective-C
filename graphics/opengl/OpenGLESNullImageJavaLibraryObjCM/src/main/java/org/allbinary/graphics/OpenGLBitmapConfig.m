// Generated Code Do Not Modify
#include "org/allbinary/graphics/OpenGLBitmapConfig.h"



void OpenGLBitmapConfig_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation OpenGLBitmapConfig

- (void) initFields {
    
}


- (instancetype) init:(id)bitmapConfig {
    self = [super init];
    [self initFields];
        self->bitmapConfig = bitmapConfig;
    return self;
}

@end

