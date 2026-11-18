// Generated Code Do Not Modify
#include "org/allbinary/graphics/opengles/OpenGLCapabilities.h"
#include "org/allbinary/logic/string/StringUtil.h"


static OpenGLCapabilities* OpenGLCapabilities_instance;

void OpenGLCapabilities_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    OpenGLCapabilities_instance = [((OpenGLCapabilities*) [OpenGLCapabilities alloc]) init];
}

@implementation OpenGLCapabilities

- (void) initFields {
    self->CUSTOM_GL_SURFACE_VIEW = true;
    self->VERSION_1_0 = "1.0";
    self->VERSION_1_1 = "1.1";
    self->VERSION_2_0 = "2.0";
    self->VERSION_3_0 = "3.0";
    self->VERSION_3_1 = "3.1";
    self->VERSION_3_2 = "3.2";
    self->VERSION_HIGHER_THAN_EXISTS = "999.999";
    self->glVersion = [StringUtil getInstance]->EMPTY_STRING;
    self->shaderVersion = 0;
    self->glInstanceVersion = [StringUtil getInstance]->EMPTY_STRING;
    self->maxTextureSize = 64;
}


+ (OpenGLCapabilities*) getInstance {
        return (OpenGLCapabilities_staticInit(), OpenGLCapabilities_instance);
}


- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


- (bool) isInitialized {
        return true;
}


- (void) initCapabilities:(id)gl {
}


- (bool) isGlExtensionDrawTexture {
        return false;
}


- (const char*) getGlVersion {
        return self->glVersion;
}


- (bool) isVertexBufferObjectSupport {
        return false;
}


- (bool) isTextureSizeValid:(int32_t)widthAndHeight {
        return true;
}

@end

