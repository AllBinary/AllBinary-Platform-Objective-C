// Generated Code Do Not Modify
#include "org/allbinary/graphics/opengles/shader/ShaderManagerFactory.h"
#include "org/allbinary/graphics/opengles/shader/ShaderManager.h"


static ShaderManagerFactory* ShaderManagerFactory_instance;

void ShaderManagerFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    ShaderManagerFactory_instance = ((ShaderManagerFactory*) [((ShaderManagerFactory*) [ShaderManagerFactory alloc]) init]);
}

@implementation ShaderManagerFactory

- (instancetype) init {
    self = [super init];
    return self;
}


+ (ShaderManagerFactory*) getInstance {
        return (ShaderManagerFactory_staticInit(), ShaderManagerFactory_instance);
}


- (ShaderManager*) create {
        return [ShaderManager getInstance];
}

@end

