#ifndef ORG_ALLBINARY_MEDIA_IMAGE_IMAGEMODIFIERUTIL_H
#define ORG_ALLBINARY_MEDIA_IMAGE_IMAGEMODIFIERUTIL_H
/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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
@class ImageModifierUtil;
@class Image;
@class BasicColor;

@interface ImageModifierUtil : ABObject {
@public
}
- (instancetype) init;
+ (ImageModifierUtil*) getInstanceOrCreate;
- (void) setColor:(Image*)unusedOriginalImage :(Image*)image :(int32_t)imageIndex :(BasicColor*)basicColor;
- (void) changeColor:(Image*)unusedOriginalImage :(Image*)image :(int32_t)imageIndex :(BasicColor*)basicColor;
- (void) setAlpha:(Image*)originalImage :(Image*)image :(int32_t)imageIndex :(int32_t)alphaInt;
- (Image**) getImageArray:(Image**)originalImageArray;
- (void) handleImage:(Image**)imageArray :(int32_t)index :(Image*)image;
- (void) reset;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void ImageModifierUtil_staticInit(void);


#endif // ORG_ALLBINARY_MEDIA_IMAGE_IMAGEMODIFIERUTIL_H
