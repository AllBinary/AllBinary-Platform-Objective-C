// Generated Code Do Not Modify
#include "org/allbinary/image/opengles/OpenGLESImageExclusionUtil.h"
#include "javax/microedition/lcdui/Image.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/util/BasicArrayListD.h"


static OpenGLESImageExclusionUtil* OpenGLESImageExclusionUtil_instance;

void OpenGLESImageExclusionUtil_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    OpenGLESImageExclusionUtil_instance = [((OpenGLESImageExclusionUtil*) [OpenGLESImageExclusionUtil alloc]) init];
}

@implementation OpenGLESImageExclusionUtil

- (void) initFields {
    self->list = [((BasicArrayListD*) [BasicArrayListD alloc]) init];
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (OpenGLESImageExclusionUtil*) getInstance {
        return (OpenGLESImageExclusionUtil_staticInit(), OpenGLESImageExclusionUtil_instance);
}


- (bool) isCustomScaling:(Image*)image {
        return false;
}

@end

