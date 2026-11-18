#ifndef ORG_ALLBINARY_IMAGE_OPENGLES_OPENGLESIMAGE_H
#define ORG_ALLBINARY_IMAGE_OPENGLES_OPENGLESIMAGE_H
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
// package org.allbinary.image.opengles

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class OpenGLESImage;
@class GL;
@class GL10;
@class Image;
@class NullImage;
@class PlatformBitmapBase;
@class PlatformBitmapBaseFactory;
@class PlatformTextureBaseFactory;
@class CommonStrings;
@class BasicArrayList;
@class BasicArrayListD;
@class OpenGLSurfaceChangedInterface;
@class OpenGLESImageProperties;
@class OpenGLESImageProcessor;
@class OpenGLESImageTranslate;
#include "javax/microedition/lcdui/Image.h"
#if __has_include("org/allbinary/platform/graphics/PlatformBitmapBase.h")
#include "org/allbinary/platform/graphics/PlatformBitmapBase.h"
#endif
#if __has_include("org/allbinary/platform/opengles/PlatformTextureBaseFactory.h")
#include "org/allbinary/platform/opengles/PlatformTextureBaseFactory.h"
#endif
#if __has_include("org/allbinary/string/CommonStrings.h")
#include "org/allbinary/string/CommonStrings.h"
#endif
#if __has_include("org/allbinary/util/BasicArrayList.h")
#include "org/allbinary/util/BasicArrayList.h"
#endif
#include "org/allbinary/image/opengles/OpenGLSurfaceChangedInterface.h"
#if __has_include("org/allbinary/image/opengles/OpenGLESImageProperties.h")
#include "org/allbinary/image/opengles/OpenGLESImageProperties.h"
#endif
#if __has_include("org/allbinary/image/opengles/OpenGLESImageProcessor.h")
#include "org/allbinary/image/opengles/OpenGLESImageProcessor.h"
#endif
#if __has_include("org/allbinary/image/opengles/OpenGLESImageTranslate.h")
#include "org/allbinary/image/opengles/OpenGLESImageTranslate.h"
#endif

//OpenGLESNullImageJavaLibrary
@interface OpenGLESImage : Image <OpenGLSurfaceChangedInterface> {
@public
    CommonStrings* commonStrings;
    PlatformTextureBaseFactory* textureFactory;
    PlatformBitmapBase* openGLBitmap;
    OpenGLESImageProperties* openGLESImageProperties;
    OpenGLESImageProcessor* imageProcessor;
    OpenGLESImageTranslate* openGLESImageTranslate;
}
- (instancetype) init:(Image*)image :(PlatformBitmapBaseFactory*)bitmapFactory :(PlatformTextureBaseFactory*)textureFactory;
- (void) initFields;
- (void) set:(GL*)gl;
- (bool) initTexture:(GL10*)gl;
- (void) drawRegion:(GL10*)gl :(int32_t)viewHeight :(float)x_src :(float)y_src :(float)width :(float)height :(int32_t)x :(int32_t)y :(int32_t)z;
- (void) draw:(GL10*)gl :(int32_t)x :(int32_t)y :(int32_t)z;
- (int32_t) getType;
@end

extern OpenGLESImage* OpenGLESImage_NULL_OPENGL_IMAGE;
extern BasicArrayList* OpenGLESImage_texture2dList;
static constexpr int32_t OpenGLESImage_TYPE = 4;
// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void OpenGLESImage_staticInit(void);


#endif // ORG_ALLBINARY_IMAGE_OPENGLES_OPENGLESIMAGE_H
