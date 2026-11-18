#ifndef ORG_ALLBINARY_GRAPHICS_OPENGLES_SHADER_SHADERMANAGER_H
#define ORG_ALLBINARY_GRAPHICS_OPENGLES_SHADER_SHADERMANAGER_H
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
@class ShaderManager;
@class GL10;
@class CommonStrings;
@class BasicArrayList;
#if __has_include("org/allbinary/string/CommonStrings.h")
#include "org/allbinary/string/CommonStrings.h"
#endif

@interface ShaderManager : ABObject {
@public
    const char* LOAD_SHADER;
    CommonStrings* commonStrings;
    int32_t GL_VERTEX_SHADER;
    int32_t GL_FRAGMENT_SHADER;
}
- (instancetype) init:(int32_t)GL_VERTEX_SHADER :(int32_t)GL_FRAGMENT_SHADER;
- (void) initFields;
+ (ShaderManager*) getInstance;
- (int32_t) load_:(GL10*)gl :(const char*)resource :(const char**)shaderAsStringArray :(int32_t)shaderType;
- (int32_t) loadShader:(GL10*)gl :(const char*)resource :(BasicArrayList*)stringList :(int32_t)shaderType;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void ShaderManager_staticInit(void);


#endif // ORG_ALLBINARY_GRAPHICS_OPENGLES_SHADER_SHADERMANAGER_H
