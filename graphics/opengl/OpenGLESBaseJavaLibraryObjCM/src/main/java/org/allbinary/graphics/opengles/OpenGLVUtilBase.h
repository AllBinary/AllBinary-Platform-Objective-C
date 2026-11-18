#ifndef ORG_ALLBINARY_GRAPHICS_OPENGLES_OPENGLVUTILBASE_H
#define ORG_ALLBINARY_GRAPHICS_OPENGLES_OPENGLVUTILBASE_H
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
// package org.allbinary.graphics.opengles

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class OpenGLVUtilBase;
@class GL10;

@interface OpenGLVUtilBase : ABObject {
@public
}
- (instancetype) init;
- (void) glTexEnvix:(GL10*)gl :(int32_t)target :(int32_t)pname :(int32_t)param;
- (void) glTexParameterix:(GL10*)gl :(int32_t)target :(int32_t)pname :(int32_t)param;
- (void) glGenerateMipmap:(GL10*)gl :(int32_t)textureId :(int32_t)target :(bool)generateMipMap;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void OpenGLVUtilBase_staticInit(void);


#endif // ORG_ALLBINARY_GRAPHICS_OPENGLES_OPENGLVUTILBASE_H
