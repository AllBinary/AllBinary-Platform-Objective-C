#ifndef ORG_ALLBINARY_IMAGE_OPENGLES_OPENGLIMAGEUTILBASE_H
#define ORG_ALLBINARY_IMAGE_OPENGLES_OPENGLIMAGEUTILBASE_H
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
// package org.allbinary.image.opengles

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class OpenGLImageUtilBase;
@class OpenGLBitmap;
@class BasicColor;
#include "java/io/IOException.h"
#include "java/io/InputStream.h"

@interface OpenGLImageUtilBase : ABObject {
@public
}
- (instancetype) init;
- (OpenGLBitmap*) paint:(OpenGLBitmap*)alphaBitmap :(OpenGLBitmap*)originalBitmap :(int32_t)index;
- (OpenGLBitmap*) paint:(OpenGLBitmap*)colorBitmap :(OpenGLBitmap*)originalBitmap :(int32_t)alpha :(BasicColor*)basicColor;
- (OpenGLBitmap*) createImage:(const char*)name;
- (OpenGLBitmap*) createImageFromInputStream:(InputStream*)inputStream;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void OpenGLImageUtilBase_staticInit(void);

#if __has_include("org/allbinary/graphics/OpenGLBitmap.h")
#include "org/allbinary/graphics/OpenGLBitmap.h"
#endif

#endif // ORG_ALLBINARY_IMAGE_OPENGLES_OPENGLIMAGEUTILBASE_H
