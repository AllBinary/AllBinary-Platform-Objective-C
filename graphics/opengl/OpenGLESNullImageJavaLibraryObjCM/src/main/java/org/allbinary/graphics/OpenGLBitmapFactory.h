#ifndef ORG_ALLBINARY_GRAPHICS_OPENGLBITMAPFACTORY_H
#define ORG_ALLBINARY_GRAPHICS_OPENGLBITMAPFACTORY_H
// Generated Code Do Not Modify
// package org.allbinary.graphics

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class OpenGLBitmapFactory;
@class Image;
@class NullUtil;
@class PlatformBitmapBase;
@class PlatformBitmapBaseFactory;
@class OpenGLBitmapConfig;
@class OpenGLBitmap;
#include "java/io/IOException.h"
#include "java/io/InputStream.h"
#include "org/allbinary/platform/graphics/PlatformBitmapBaseFactory.h"
#if __has_include("org/allbinary/graphics/OpenGLBitmapConfig.h")
#include "org/allbinary/graphics/OpenGLBitmapConfig.h"
#endif

@interface OpenGLBitmapFactory : PlatformBitmapBaseFactory {
@public
    OpenGLBitmapConfig* ARGB_8888;
}
- (instancetype) init;
- (void) initFields;
+ (OpenGLBitmapFactory*) getInstance;
- (OpenGLBitmap*) createBitmap:(int32_t)width :(int32_t)height :(OpenGLBitmapConfig*)config;
- (OpenGLBitmap*) decodeStream:(InputStream*)inputStream;
- (PlatformBitmapBase*) createBitmap:(Image*)image;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void OpenGLBitmapFactory_staticInit(void);

#if __has_include("org/allbinary/platform/graphics/PlatformBitmapBase.h")
#include "org/allbinary/platform/graphics/PlatformBitmapBase.h"
#endif

#endif // ORG_ALLBINARY_GRAPHICS_OPENGLBITMAPFACTORY_H
