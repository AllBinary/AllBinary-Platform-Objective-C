// Generated Code Do Not Modify
#include "org/allbinary/graphics/opengles/shader/SimpleShaderInitializer.h"
#include "org/allbinary/graphics/opengles/shader/ShaderInitializer.h"


static SimpleShaderInitializer* SimpleShaderInitializer_instanceC;

void SimpleShaderInitializer_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    SimpleShaderInitializer_instanceC = [((SimpleShaderInitializer*) [SimpleShaderInitializer alloc]) init];
}

@implementation SimpleShaderInitializer

- (instancetype) init {
    self = [super init];
    return self;
}


+ (SimpleShaderInitializer*) getInstance {
        return (SimpleShaderInitializer_staticInit(), SimpleShaderInitializer_instanceC);
}

@end

