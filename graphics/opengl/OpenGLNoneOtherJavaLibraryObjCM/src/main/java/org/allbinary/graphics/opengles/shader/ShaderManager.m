// Generated Code Do Not Modify
#include "org/allbinary/graphics/opengles/shader/ShaderManager.h"
#include "javax/microedition/khronos/opengles/GL10.h"
#include "org/allbinary/string/CommonStrings.h"
#include "org/allbinary/util/BasicArrayList.h"


static ShaderManager* ShaderManager_instance;

void ShaderManager_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    ShaderManager_instance = [((ShaderManager*) [ShaderManager alloc]) init:-1 :-1];
}

@implementation ShaderManager

- (void) initFields {
    self->LOAD_SHADER = "loadShader";
    self->commonStrings = [CommonStrings getInstance];
    
    
}


+ (ShaderManager*) getInstance {
        return (ShaderManager_staticInit(), ShaderManager_instance);
}


- (instancetype) init:(int32_t)GL_VERTEX_SHADER :(int32_t)GL_FRAGMENT_SHADER {
    self = [super init];
    [self initFields];
        self->GL_VERTEX_SHADER = GL_VERTEX_SHADER;
        self->GL_FRAGMENT_SHADER = GL_FRAGMENT_SHADER;
    return self;
}


- (int32_t) load_:(GL10*)gl :(const char*)resource :(const char**)shaderAsStringArray :(int32_t)shaderType {
        return -1;
}


- (int32_t) loadShader:(GL10*)gl :(const char*)resource :(BasicArrayList*)stringList :(int32_t)shaderType {
        return -1;
}

@end

