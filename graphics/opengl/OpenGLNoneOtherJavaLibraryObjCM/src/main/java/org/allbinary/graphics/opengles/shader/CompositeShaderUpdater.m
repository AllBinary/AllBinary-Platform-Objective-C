// Generated Code Do Not Modify
#include "org/allbinary/graphics/opengles/shader/CompositeShaderUpdater.h"
#include "javax/microedition/khronos/egl/EGLConfig.h"
#include "javax/microedition/khronos/opengles/GL10.h"
#include "org/allbinary/logic/NullUtil.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/string/CommonSeps.h"
#include "org/allbinary/graphics/opengles/shader/ShaderUpdater.h"


static CompositeShaderUpdater* CompositeShaderUpdater_instanceC;

void CompositeShaderUpdater_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    CompositeShaderUpdater_instanceC = [((CompositeShaderUpdater*) [CompositeShaderUpdater alloc]) init:[[StringUtil getInstance] getArrayInstance] :[[StringUtil getInstance] getArrayInstance] :[[StringUtil getInstance] getArrayInstance] :[NullUtil getInstance]->NULL_INT_ARRAY];
}

@implementation CompositeShaderUpdater

- (void) initFields {
    self->commonSeps = [CommonSeps getInstance];
}


+ (CompositeShaderUpdater*) getInstance {
        return (CompositeShaderUpdater_staticInit(), CompositeShaderUpdater_instanceC);
}


- (instancetype) init:(const char**)uniformBlockArray :(const char**)uniformArray :(const char**)attributeArray :(int32_t*)attributeHandleArray {
    self = [super init];
    [self initFields];
    return self;
}


- (void) onSurfaceCreated:(GL10*)gl :(EGLConfig*)eglConfig :(int32_t)programHandle {
}


- (void) onSurfaceDestroyed:(GL10*)gl {
}

@end

