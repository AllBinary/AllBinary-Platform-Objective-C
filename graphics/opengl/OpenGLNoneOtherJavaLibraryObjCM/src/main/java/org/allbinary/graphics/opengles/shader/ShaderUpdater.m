// Generated Code Do Not Modify
#include "org/allbinary/graphics/opengles/shader/ShaderUpdater.h"
#include "javax/microedition/khronos/egl/EGLConfig.h"
#include "javax/microedition/khronos/opengles/GL10.h"
#include "org/allbinary/graphics/opengles/renderer/RendererStrings.h"
#include "org/allbinary/string/CommonStrings.h"


static ShaderUpdater* ShaderUpdater_instance;

void ShaderUpdater_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    ShaderUpdater_instance = [((ShaderUpdater*) [ShaderUpdater alloc]) init];
}

@implementation ShaderUpdater

- (void) initFields {
    self->commonStrings = [CommonStrings getInstance];
    self->rendererStrings = [RendererStrings getInstance];
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (ShaderUpdater*) getInstance {
        return (ShaderUpdater_staticInit(), ShaderUpdater_instance);
}


- (void) onSurfaceCreated:(GL10*)gl :(EGLConfig*)eglConfig {
}

@end

