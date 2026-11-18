#ifndef ORG_ALLBINARY_MEDIA_IMAGE_IMAGESCALEUTIL_H
#define ORG_ALLBINARY_MEDIA_IMAGE_IMAGESCALEUTIL_H
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
@class ImageScaleUtil;
@class Image;
@class ImageCache;

@interface ImageScaleUtil : ABObject {
@public
}
- (instancetype) init;
+ (ImageScaleUtil*) getInstance;
- (Image*) createImage2:(ImageCache*)imageCache :(Image*)originalImage :(float)scaleNominatorX :(float)scaleDenominatorX :(float)scaleNominatorY :(float)scaleDenominatorY :(bool)cached;
- (Image*) createImage3:(ImageCache*)imageCache :(Image*)originalImage :(float)scaleNominatorX :(float)scaleDenominatorX :(float)scaleNominatorY :(float)scaleDenominatorY :(bool)cached :(bool)mutable;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void ImageScaleUtil_staticInit(void);

#if __has_include("javax/microedition/lcdui/Image.h")
#include "javax/microedition/lcdui/Image.h"
#endif

#endif // ORG_ALLBINARY_MEDIA_IMAGE_IMAGESCALEUTIL_H
