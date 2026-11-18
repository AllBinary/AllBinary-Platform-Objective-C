#ifndef ORG_ALLBINARY_MEDIA_IMAGE_IMAGEJ2MESCALEUTIL_H
#define ORG_ALLBINARY_MEDIA_IMAGE_IMAGEJ2MESCALEUTIL_H
/*
 *
 * AllBinary Open License Version 1
 * Copyright (c) 2023 AllBinary
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
// package org.allbinary.media.image

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class ImageJ2MEScaleUtil;
@class Image;

@interface ImageJ2MEScaleUtil : ABObject {
@public
}
- (instancetype) init;
+ (ImageJ2MEScaleUtil*) getInstance;
- (Image**) scaleArray:(Image**)images :(int32_t)width :(int32_t)height;
- (Image*) scale:(Image*)image :(int32_t)width :(int32_t)height;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void ImageJ2MEScaleUtil_staticInit(void);

#if __has_include("javax/microedition/lcdui/Image.h")
#include "javax/microedition/lcdui/Image.h"
#endif

#endif // ORG_ALLBINARY_MEDIA_IMAGE_IMAGEJ2MESCALEUTIL_H
