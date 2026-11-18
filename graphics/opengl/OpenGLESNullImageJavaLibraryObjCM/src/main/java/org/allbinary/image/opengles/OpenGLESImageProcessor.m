// Generated Code Do Not Modify
#include "org/allbinary/image/opengles/OpenGLESImageProcessor.h"
#include "javax/microedition/khronos/opengles/GL10.h"


static OpenGLESImageProcessor* OpenGLESImageProcessor_instance;

void OpenGLESImageProcessor_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    OpenGLESImageProcessor_instance = [((OpenGLESImageProcessor*) [OpenGLESImageProcessor alloc]) init];
}

@implementation OpenGLESImageProcessor

- (instancetype) init {
    self = [super init];
    return self;
}


+ (OpenGLESImageProcessor*) getInstance {
        return (OpenGLESImageProcessor_staticInit(), OpenGLESImageProcessor_instance);
}


- (void) translate:(GL10*)gl :(float)translateX :(float)translateY {
}


- (void) rotate:(GL10*)gl :(float)angle {
}


- (void) scale:(GL10*)gl :(float)scaleX :(float)scaleY {
}


- (void) colorMask:(GL10*)gl :(float)red :(float)green :(float)blue :(float)alpha {
}

@end

