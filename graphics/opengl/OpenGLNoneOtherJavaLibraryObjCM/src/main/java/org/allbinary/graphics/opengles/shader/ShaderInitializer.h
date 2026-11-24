#ifndef ORG_ALLBINARY_GRAPHICS_OPENGLES_SHADER_SHADERINITIALIZER_H
#define ORG_ALLBINARY_GRAPHICS_OPENGLES_SHADER_SHADERINITIALIZER_H
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
@class ShaderInitializer;
@class GL10;
@class CommonStrings;
@class Shader;
#if __has_include("org/allbinary/string/CommonStrings.h")
#include "org/allbinary/string/CommonStrings.h"
#endif

@interface ShaderInitializer : ABObject {
@public
    CommonStrings* commonStrings;
}
- (instancetype) init;
- (void) initFields;
+ (ShaderInitializer*) getInstance;
- (int32_t) initMethod:(GL10*)gl :(Shader**)shader :(const char**)attributeArray;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void ShaderInitializer_staticInit(void);


#endif // ORG_ALLBINARY_GRAPHICS_OPENGLES_SHADER_SHADERINITIALIZER_H
