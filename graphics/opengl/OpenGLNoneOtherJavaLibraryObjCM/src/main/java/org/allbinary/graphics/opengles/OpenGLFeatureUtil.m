// Generated Code Do Not Modify
#include "org/allbinary/graphics/opengles/OpenGLFeatureUtil.h"


static OpenGLFeatureUtil* OpenGLFeatureUtil_instance;

void OpenGLFeatureUtil_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    OpenGLFeatureUtil_instance = ((OpenGLFeatureUtil*) [((OpenGLFeatureUtil*) [OpenGLFeatureUtil alloc]) init]);
}

@implementation OpenGLFeatureUtil


+ (OpenGLFeatureUtil*) getInstance {
        return (OpenGLFeatureUtil_staticInit(), OpenGLFeatureUtil_instance);
}


- (instancetype) init {
    self = [super init];
    return self;
}


- (bool) isAnyThreed {
        return false;
}

@end

