// Generated Code Do Not Modify
#include "org/allbinary/image/opengles/ModifierOpenGLESImageProcessor.h"
#include "org/allbinary/image/opengles/OpenGLESImageProcessor.h"


static ModifierOpenGLESImageProcessor* ModifierOpenGLESImageProcessor_instanceC;

void ModifierOpenGLESImageProcessor_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    ModifierOpenGLESImageProcessor_instanceC = ((ModifierOpenGLESImageProcessor*) [((ModifierOpenGLESImageProcessor*) [ModifierOpenGLESImageProcessor alloc]) init]);
}

@implementation ModifierOpenGLESImageProcessor

- (instancetype) init {
    self = [super init];
    return self;
}


+ (ModifierOpenGLESImageProcessor*) getInstance {
        return (ModifierOpenGLESImageProcessor_staticInit(), ModifierOpenGLESImageProcessor_instanceC);
}

@end

