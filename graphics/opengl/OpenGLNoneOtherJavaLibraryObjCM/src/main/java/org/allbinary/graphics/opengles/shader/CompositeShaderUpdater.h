#ifndef ORG_ALLBINARY_GRAPHICS_OPENGLES_SHADER_COMPOSITESHADERUPDATER_H
#define ORG_ALLBINARY_GRAPHICS_OPENGLES_SHADER_COMPOSITESHADERUPDATER_H
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
@class CompositeShaderUpdater;
@class EGLConfig;
@class GL10;
@class NullUtil;
@class StringUtil;
@class CommonSeps;
@class ShaderUpdater;
#if __has_include("org/allbinary/string/CommonSeps.h")
#include "org/allbinary/string/CommonSeps.h"
#endif
#include "org/allbinary/graphics/opengles/shader/ShaderUpdater.h"

@interface CompositeShaderUpdater : ShaderUpdater {
@public
    CommonSeps* commonSeps;
}
- (instancetype) init:(const char**)uniformBlockArray :(const char**)uniformArray :(const char**)attributeArray :(int32_t*)attributeHandleArray;
- (void) initFields;
+ (CompositeShaderUpdater*) getInstance;
- (void) onSurfaceCreated:(GL10*)gl :(EGLConfig*)eglConfig :(int32_t)programHandle;
- (void) onSurfaceDestroyed:(GL10*)gl;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void CompositeShaderUpdater_staticInit(void);


#endif // ORG_ALLBINARY_GRAPHICS_OPENGLES_SHADER_COMPOSITESHADERUPDATER_H
