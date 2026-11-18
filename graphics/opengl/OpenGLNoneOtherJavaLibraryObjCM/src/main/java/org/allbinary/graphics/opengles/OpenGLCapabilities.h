#ifndef ORG_ALLBINARY_GRAPHICS_OPENGLES_OPENGLCAPABILITIES_H
#define ORG_ALLBINARY_GRAPHICS_OPENGLES_OPENGLCAPABILITIES_H
/*
 *
 * AllBinary Open License Version 1
 * Copyright (c) 2011 AllBinary
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
// package org.allbinary.graphics.opengles

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class OpenGLCapabilities;
@class StringUtil;

@interface OpenGLCapabilities : ABObject {
@public
    bool CUSTOM_GL_SURFACE_VIEW;
    const char* VERSION_1_0;
    const char* VERSION_1_1;
    const char* VERSION_2_0;
    const char* VERSION_3_0;
    const char* VERSION_3_1;
    const char* VERSION_3_2;
    const char* VERSION_HIGHER_THAN_EXISTS;
    const char* glVersion;
    int32_t shaderVersion;
    const char* glInstanceVersion;
    int32_t maxTextureSize;
}
- (instancetype) init;
- (void) initFields;
+ (OpenGLCapabilities*) getInstance;
- (bool) isInitialized;
- (void) initCapabilities:(id)gl;
- (bool) isGlExtensionDrawTexture;
- (const char*) getGlVersion;
- (bool) isVertexBufferObjectSupport;
- (bool) isTextureSizeValid:(int32_t)widthAndHeight;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void OpenGLCapabilities_staticInit(void);


#endif // ORG_ALLBINARY_GRAPHICS_OPENGLES_OPENGLCAPABILITIES_H
