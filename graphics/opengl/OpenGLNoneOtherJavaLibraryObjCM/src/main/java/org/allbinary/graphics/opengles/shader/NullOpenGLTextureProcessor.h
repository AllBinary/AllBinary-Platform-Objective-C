#ifndef ORG_ALLBINARY_GRAPHICS_OPENGLES_SHADER_NULLOPENGLTEXTUREPROCESSOR_H
#define ORG_ALLBINARY_GRAPHICS_OPENGLES_SHADER_NULLOPENGLTEXTUREPROCESSOR_H
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
@class NullOpenGLTextureProcessor;
@class OpenGLObject3dProcessor;
#if __has_include("org/allbinary/graphics/opengles/shader/OpenGLObject3dProcessor.h")
#include "org/allbinary/graphics/opengles/shader/OpenGLObject3dProcessor.h"
#endif

@interface NullOpenGLTextureProcessor : ABObject {
@public
}
- (instancetype) init;
+ (OpenGLObject3dProcessor*) getInstance;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void NullOpenGLTextureProcessor_staticInit(void);


#endif // ORG_ALLBINARY_GRAPHICS_OPENGLES_SHADER_NULLOPENGLTEXTUREPROCESSOR_H
