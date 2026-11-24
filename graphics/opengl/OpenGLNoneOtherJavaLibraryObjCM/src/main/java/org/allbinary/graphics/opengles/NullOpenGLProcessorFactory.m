// Generated Code Do Not Modify
#include "org/allbinary/graphics/opengles/NullOpenGLProcessorFactory.h"
#include "org/allbinary/graphics/opengles/OpenGLProcessor.h"


static OpenGLProcessor* NullOpenGLProcessorFactory_instance;

void NullOpenGLProcessorFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    NullOpenGLProcessorFactory_instance = ((OpenGLProcessor*) [((OpenGLProcessor*) [OpenGLProcessor alloc]) init]);
}

@implementation NullOpenGLProcessorFactory

- (instancetype) init {
    self = [super init];
    return self;
}


+ (OpenGLProcessor*) getInstance {
        return (NullOpenGLProcessorFactory_staticInit(), NullOpenGLProcessorFactory_instance);
}

@end

