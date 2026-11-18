#ifndef ORG_ALLBINARY_IMAGE_IMAGEFACTORY_H
#define ORG_ALLBINARY_IMAGE_IMAGEFACTORY_H
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
// package org.allbinary.image

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class ImageFactory;
@class Image;
@class MIDPUtil;
#include "java/io/InputStream.h"

//ImageCacheBaseJavaLibrary - J2ME
@interface ImageFactory : ABObject {
@public
}
- (instancetype) init;
+ (ImageFactory*) getInstance;
- (Image*) createImageUrl:(const char*)url;
- (Image*) createImage:(const char*)caller :(int32_t)width :(int32_t)height;
- (Image*) createImageFromInputStream:(id)key :(InputStream*)inputStream;
- (Image*) createImageFromInputStream:(InputStream*)inputStream;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void ImageFactory_staticInit(void);

#if __has_include("javax/microedition/lcdui/Image.h")
#include "javax/microedition/lcdui/Image.h"
#endif

#endif // ORG_ALLBINARY_IMAGE_IMAGEFACTORY_H
