// Generated Code Do Not Modify
#include "org/allbinary/graphics/opengles/shader/NullOpenGLTextureProcessor.h"
#include "org/allbinary/graphics/opengles/shader/OpenGLObject3dProcessor.h"


static OpenGLObject3dProcessor* NullOpenGLTextureProcessor_instance;

void NullOpenGLTextureProcessor_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    NullOpenGLTextureProcessor_instance = ((OpenGLObject3dProcessor*) [((OpenGLObject3dProcessor*) [OpenGLObject3dProcessor alloc]) init]);
}

@implementation NullOpenGLTextureProcessor

- (instancetype) init {
    self = [super init];
    return self;
}


+ (OpenGLObject3dProcessor*) getInstance {
        return (NullOpenGLTextureProcessor_staticInit(), NullOpenGLTextureProcessor_instance);
}

@end

