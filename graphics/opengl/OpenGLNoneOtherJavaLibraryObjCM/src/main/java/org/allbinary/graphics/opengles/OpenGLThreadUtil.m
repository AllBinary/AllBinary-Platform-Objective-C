// Generated Code Do Not Modify
#include "org/allbinary/graphics/opengles/OpenGLThreadUtil.h"


static OpenGLThreadUtil* OpenGLThreadUtil_instance;

void OpenGLThreadUtil_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    OpenGLThreadUtil_instance = ((OpenGLThreadUtil*) [((OpenGLThreadUtil*) [OpenGLThreadUtil alloc]) init]);
}

@implementation OpenGLThreadUtil

- (instancetype) init {
    self = [super init];
    return self;
}


+ (OpenGLThreadUtil*) getInstance {
        return (OpenGLThreadUtil_staticInit(), OpenGLThreadUtil_instance);
}


- (void) set:(id)glSurfaceView {
}


- (void) onPause {
}


- (void) onResume {
}

@end

