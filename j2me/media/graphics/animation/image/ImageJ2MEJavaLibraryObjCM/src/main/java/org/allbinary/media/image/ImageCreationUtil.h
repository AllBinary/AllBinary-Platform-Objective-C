#ifndef ORG_ALLBINARY_MEDIA_IMAGE_IMAGECREATIONUTIL_H
#define ORG_ALLBINARY_MEDIA_IMAGE_IMAGECREATIONUTIL_H
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
@class ImageCreationUtil;
@class Image;
@class GameFeatureImageCacheFactory;

@interface ImageCreationUtil : ABObject {
@public
}
- (instancetype) init;
+ (ImageCreationUtil*) getInstance;
- (Image*) createImageWH:(int32_t)width :(int32_t)height;
- (Image*) createImage:(int32_t)width :(int32_t)height :(float)maxScaleX :(float)maxScaleY;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void ImageCreationUtil_staticInit(void);

#if __has_include("javax/microedition/lcdui/Image.h")
#include "javax/microedition/lcdui/Image.h"
#endif

#endif // ORG_ALLBINARY_MEDIA_IMAGE_IMAGECREATIONUTIL_H
