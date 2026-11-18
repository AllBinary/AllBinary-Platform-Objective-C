#ifndef ORG_ALLBINARY_GRAPHICS_OPENGLES_SHADER_SHADERUPDATER_H
#define ORG_ALLBINARY_GRAPHICS_OPENGLES_SHADER_SHADERUPDATER_H
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
@class ShaderUpdater;
@class EGLConfig;
@class GL10;
@class RendererStrings;
@class CommonStrings;
#if __has_include("org/allbinary/graphics/opengles/renderer/RendererStrings.h")
#include "org/allbinary/graphics/opengles/renderer/RendererStrings.h"
#endif
#if __has_include("org/allbinary/string/CommonStrings.h")
#include "org/allbinary/string/CommonStrings.h"
#endif

@interface ShaderUpdater : ABObject {
@public
    CommonStrings* commonStrings;
    RendererStrings* rendererStrings;
}
- (instancetype) init;
- (void) initFields;
+ (ShaderUpdater*) getInstance;
- (void) onSurfaceCreated:(GL10*)gl :(EGLConfig*)eglConfig;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void ShaderUpdater_staticInit(void);


#endif // ORG_ALLBINARY_GRAPHICS_OPENGLES_SHADER_SHADERUPDATER_H
