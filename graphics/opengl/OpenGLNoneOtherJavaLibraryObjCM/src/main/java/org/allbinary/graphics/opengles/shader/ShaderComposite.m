// Generated Code Do Not Modify
#include "org/allbinary/graphics/opengles/shader/ShaderComposite.h"
#include "javax/microedition/khronos/opengles/GL10.h"
#include "org/allbinary/graphics/opengles/NullOpenGLProcessorFactory.h"
#include "org/allbinary/graphics/opengles/OpenGLProcessor.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/graphics/opengles/shader/Shader.h"
#include "org/allbinary/graphics/opengles/shader/ShaderInitializer.h"
#include "org/allbinary/graphics/opengles/shader/CompositeShaderUpdater.h"
#include "org/allbinary/graphics/opengles/shader/ModelViewProjection.h"
#include "org/allbinary/graphics/opengles/shader/NullOpenGLTextureProcessor.h"
#include "org/allbinary/graphics/opengles/shader/OpenGLObject3dProcessor.h"
#if __has_include("org/allbinary/logic/string/StringUtil.h")
#include "org/allbinary/logic/string/StringUtil.h"
#endif



void ShaderComposite_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation ShaderComposite

- (void) initFields {
    
    
    
    
    
    
    
    
    self->useProgramShaderOpenGLProcessor = [NullOpenGLProcessorFactory getInstance];
    self->shaderMatrixOpenGLProcessor = [NullOpenGLProcessorFactory getInstance];
    self->colorEnableVertexAttribArrayOpenGLProcessor = [NullOpenGLProcessorFactory getInstance];
    self->normalEnableVertexAttribArrayOpenGLProcessor = [NullOpenGLProcessorFactory getInstance];
    self->vertexEnableVertexAttribArrayOpenGLProcessor = [NullOpenGLProcessorFactory getInstance];
    self->textureEnableVertexAttribArrayOpenGLProcessor = [NullOpenGLProcessorFactory getInstance];
    self->colorDisableVertexAttribArrayOpenGLProcessor = [NullOpenGLProcessorFactory getInstance];
    self->normalDisableVertexAttribArrayOpenGLProcessor = [NullOpenGLProcessorFactory getInstance];
    self->vertexDisableVertexAttribArrayOpenGLProcessor = [NullOpenGLProcessorFactory getInstance];
    self->textureDisableVertexAttribArrayOpenGLProcessor = [NullOpenGLProcessorFactory getInstance];
    self->uniformLightPositionOpenGLProcessor = [NullOpenGLTextureProcessor getInstance];
    self->uniformLightColorOpenGLProcessor = [NullOpenGLTextureProcessor getInstance];
    self->uniformCameraPositionOpenGLProcessor = [NullOpenGLTextureProcessor getInstance];
    self->uniformTextureUnitOpenGLProcessor = [NullOpenGLTextureProcessor getInstance];
    self->programHandle = 0;
}


- (instancetype) init:(const char*)requiresOpenGLVersion :(Shader**)shaderArray :(CompositeShaderUpdater*)compositeShaderUpdater :(ShaderInitializer*)shaderInitializer :(ModelViewProjection*)modelViewProjection :(OpenGLProcessor*)colorOpenGLProcessor :(OpenGLProcessor*)vertexOpenGLProcessor :(OpenGLProcessor*)disableProgramShaderOpenGLProcessor {
    self = [super init];
    [self initFields];
        self->requiresOpenGLVersion = requiresOpenGLVersion;
        self->shaderArray = shaderArray;
        self->shaderInitializer = shaderInitializer;
        self->compositeShaderUpdater = compositeShaderUpdater;
        self->modelViewProjection = modelViewProjection;
        self->colorOpenGLProcessor = colorOpenGLProcessor;
        self->vertexOpenGLProcessor = vertexOpenGLProcessor;
        self->disableProgramShaderOpenGLProcessor = disableProgramShaderOpenGLProcessor;
    return self;
}


- (void) initMethod:(GL10*)gl {
        self->programHandle = [self->shaderInitializer initMethod:gl :self->shaderArray :[[StringUtil getInstance] getArrayInstance]];
}

@end

