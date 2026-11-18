#ifndef ORG_ALLBINARY_GRAPHICS_OPENGLES_SHADER_PLATFORMSHADERCOMPOSITE_H
#define ORG_ALLBINARY_GRAPHICS_OPENGLES_SHADER_PLATFORMSHADERCOMPOSITE_H
/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
 *  
 * By agreeing to this license you and any business entity you represent are 
 * legally bound to the AllBinary Open License Version 1 legal agreement. 
 *  
 * You may obtain the AllBinary Open License Version 1 legal agreement from 
 * AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
 *  
 * Created By: Travis Berthelot 
 *   
 */
// Generated Code Do Not Modify
// package org.allbinary.graphics.opengles.shader

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class PlatformShaderComposite;
@class NullOpenGLProcessorFactory;
@class OpenGLProcessor;
@class ShaderComposite;
@class Shader;
@class CompositeShaderUpdater;
@class ShaderInitializer;
@class ModelViewProjection;
#include "org/allbinary/graphics/opengles/shader/ShaderComposite.h"

@interface PlatformShaderComposite : ShaderComposite {
@public
}
- (instancetype) init:(const char*)requiresOpenGLVersion :(Shader**)shaderArray :(CompositeShaderUpdater*)compositeShaderUpdater :(ShaderInitializer*)shaderInitializer :(ModelViewProjection*)modelViewProjection :(OpenGLProcessor*)colorOpenGLProcessor :(OpenGLProcessor*)vertexOpenGLProcessor;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void PlatformShaderComposite_staticInit(void);


#endif // ORG_ALLBINARY_GRAPHICS_OPENGLES_SHADER_PLATFORMSHADERCOMPOSITE_H
