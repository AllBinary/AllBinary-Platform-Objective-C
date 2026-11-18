#ifndef ORG_ALLBINARY_GRAPHICS_OPENGLES_SHADER_OPENGLOBJECT3DPROCESSOR_H
#define ORG_ALLBINARY_GRAPHICS_OPENGLES_SHADER_OPENGLOBJECT3DPROCESSOR_H
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
@class OpenGLObject3dProcessor;
@class GL10;
@class CommonStrings;
#if __has_include("org/allbinary/string/CommonStrings.h")
#include "org/allbinary/string/CommonStrings.h"
#endif

@interface OpenGLObject3dProcessor : ABObject {
@public
    CommonStrings* commonStrings;
}
- (instancetype) init;
- (void) initFields;
- (void) process:(GL10*)gl :(id)object3d;
- (void) process:(GL10*)gl :(id)object3d :(int32_t)index;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void OpenGLObject3dProcessor_staticInit(void);


#endif // ORG_ALLBINARY_GRAPHICS_OPENGLES_SHADER_OPENGLOBJECT3DPROCESSOR_H
