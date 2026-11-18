#ifndef ORG_ALLBINARY_IMAGE_OPENGLES_OPENGLIMAGEFACTORY_H
#define ORG_ALLBINARY_IMAGE_OPENGLES_OPENGLIMAGEFACTORY_H
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
@class OpenGLImageFactory;
@class Image;
@class PlatformBitmapBaseFactory;
@class PlatformTextureBaseFactory;

@interface OpenGLImageFactory : ABObject {
@public
}
- (instancetype) init;
- (Image*) getInstance:(Image*)image :(PlatformBitmapBaseFactory*)bitmapFactory :(PlatformTextureBaseFactory*)textureFactory;
@end

extern OpenGLImageFactory* OpenGLImageFactory_NULL_OPENGL_IMAGE_FACTORY;
// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void OpenGLImageFactory_staticInit(void);

#if __has_include("javax/microedition/lcdui/Image.h")
#include "javax/microedition/lcdui/Image.h"
#endif

#endif // ORG_ALLBINARY_IMAGE_OPENGLES_OPENGLIMAGEFACTORY_H
