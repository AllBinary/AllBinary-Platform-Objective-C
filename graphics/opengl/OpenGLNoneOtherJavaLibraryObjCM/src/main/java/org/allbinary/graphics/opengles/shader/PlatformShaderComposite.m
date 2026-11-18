// Generated Code Do Not Modify
#include "org/allbinary/graphics/opengles/shader/PlatformShaderComposite.h"
#include "org/allbinary/graphics/opengles/NullOpenGLProcessorFactory.h"
#include "org/allbinary/graphics/opengles/OpenGLProcessor.h"
#include "org/allbinary/graphics/opengles/shader/ShaderComposite.h"
#include "org/allbinary/graphics/opengles/shader/Shader.h"
#include "org/allbinary/graphics/opengles/shader/CompositeShaderUpdater.h"
#include "org/allbinary/graphics/opengles/shader/ShaderInitializer.h"
#include "org/allbinary/graphics/opengles/shader/ModelViewProjection.h"



void PlatformShaderComposite_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation PlatformShaderComposite


- (instancetype) init:(const char*)requiresOpenGLVersion :(Shader**)shaderArray :(CompositeShaderUpdater*)compositeShaderUpdater :(ShaderInitializer*)shaderInitializer :(ModelViewProjection*)modelViewProjection :(OpenGLProcessor*)colorOpenGLProcessor :(OpenGLProcessor*)vertexOpenGLProcessor {
        self = [super init:requiresOpenGLVersion :shaderArray :compositeShaderUpdater :shaderInitializer :modelViewProjection :colorOpenGLProcessor :vertexOpenGLProcessor :[NullOpenGLProcessorFactory getInstance]];
    return self;
}

@end

