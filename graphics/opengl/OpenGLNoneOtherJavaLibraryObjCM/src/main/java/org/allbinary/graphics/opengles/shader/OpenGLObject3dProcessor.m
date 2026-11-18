// Generated Code Do Not Modify
#include "org/allbinary/graphics/opengles/shader/OpenGLObject3dProcessor.h"
#include "javax/microedition/khronos/opengles/GL10.h"
#include "org/allbinary/string/CommonStrings.h"



void OpenGLObject3dProcessor_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation OpenGLObject3dProcessor

- (void) initFields {
    self->commonStrings = [CommonStrings getInstance];
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


- (void) process:(GL10*)gl :(id)object3d {
}


- (void) process:(GL10*)gl :(id)object3d :(int32_t)index {
}

@end

