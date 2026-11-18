// Generated Code Do Not Modify
#include "org/allbinary/graphics/opengles/OpenGLVUtilBase.h"
#include "javax/microedition/khronos/opengles/GL10.h"



void OpenGLVUtilBase_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation OpenGLVUtilBase

- (instancetype) init {
    self = [super init];
    return self;
}


- (void) glTexEnvix:(GL10*)gl :(int32_t)target :(int32_t)pname :(int32_t)param {
}


- (void) glTexParameterix:(GL10*)gl :(int32_t)target :(int32_t)pname :(int32_t)param {
}


- (void) glGenerateMipmap:(GL10*)gl :(int32_t)textureId :(int32_t)target :(bool)generateMipMap {
}

@end

