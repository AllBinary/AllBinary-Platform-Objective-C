#ifndef ORG_ALLBINARY_GRAPHICS_OPENGLES_SHADER_SHADEROPENGLPROCESSOR_H
#define ORG_ALLBINARY_GRAPHICS_OPENGLES_SHADER_SHADEROPENGLPROCESSOR_H
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
@class ShaderOpenGLProcessor;
@class GL10;
@class OpenGLProcessor;
#include "org/allbinary/graphics/opengles/OpenGLProcessor.h"

@interface ShaderOpenGLProcessor : OpenGLProcessor {
@public
}
- (instancetype) init;
- (void) process0:(GL10*)gl;
- (void) process1:(GL10*)gl;
- (void) process:(GL10*)gl;
- (void) process2:(GL10*)gl;
- (void) process3:(GL10*)gl;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void ShaderOpenGLProcessor_staticInit(void);


#endif // ORG_ALLBINARY_GRAPHICS_OPENGLES_SHADER_SHADEROPENGLPROCESSOR_H
