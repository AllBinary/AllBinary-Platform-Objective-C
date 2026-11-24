// Generated Code Do Not Modify
#include "org/allbinary/graphics/opengles/shader/ShaderInitializer.h"
#include "javax/microedition/khronos/opengles/GL10.h"
#include "org/allbinary/string/CommonStrings.h"
#include "org/allbinary/graphics/opengles/shader/Shader.h"


static ShaderInitializer* ShaderInitializer_instance;

void ShaderInitializer_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    ShaderInitializer_instance = ((ShaderInitializer*) [((ShaderInitializer*) [ShaderInitializer alloc]) init]);
}

@implementation ShaderInitializer

- (void) initFields {
    self->commonStrings = [CommonStrings getInstance];
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (ShaderInitializer*) getInstance {
        return (ShaderInitializer_staticInit(), ShaderInitializer_instance);
}


- (int32_t) initMethod:(GL10*)gl :(Shader**)shader :(const char**)attributeArray {
        return -1;
}

@end

