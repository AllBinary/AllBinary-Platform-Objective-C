#ifndef ORG_ALLBINARY_MEDIA_IMAGE_IMAGEROTATIONUTIL_H
#define ORG_ALLBINARY_MEDIA_IMAGE_IMAGEROTATIONUTIL_H
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
// package org.allbinary.media.image

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class ImageRotationUtil;
@class Image;
@class Anchor;

@interface ImageRotationUtil : ABObject {
@public
    int32_t anchor;
}
- (instancetype) init;
- (void) initFields;
+ (ImageRotationUtil*) getInstance;
- (Image*) createRotatedImage:(Image*)originalImage :(int32_t)rotationInDegrees;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void ImageRotationUtil_staticInit(void);

#if __has_include("javax/microedition/lcdui/Image.h")
#include "javax/microedition/lcdui/Image.h"
#endif

#endif // ORG_ALLBINARY_MEDIA_IMAGE_IMAGEROTATIONUTIL_H
