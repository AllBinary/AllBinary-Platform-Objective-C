#ifndef ORG_ALLBINARY_GRAPHICS_OPENGLES_SHADER_UNIFORMTEXTUREOPENGLPROCESSOR_H
#define ORG_ALLBINARY_GRAPHICS_OPENGLES_SHADER_UNIFORMTEXTUREOPENGLPROCESSOR_H
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
@class UniformTextureOpenGLProcessor;
@class GL10;
@class OpenGLObject3dProcessor;
@class ShaderComposite;
#include "org/allbinary/graphics/opengles/shader/OpenGLObject3dProcessor.h"

@interface UniformTextureOpenGLProcessor : OpenGLObject3dProcessor {
@public
}
- (instancetype) init:(ShaderComposite*)shaderComposite :(int32_t)handleIndex;
- (void) process:(GL10*)gl :(id)unused :(int32_t)index;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void UniformTextureOpenGLProcessor_staticInit(void);


#endif // ORG_ALLBINARY_GRAPHICS_OPENGLES_SHADER_UNIFORMTEXTUREOPENGLPROCESSOR_H
