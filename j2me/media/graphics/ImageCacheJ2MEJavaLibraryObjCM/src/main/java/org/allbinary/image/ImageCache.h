#ifndef ORG_ALLBINARY_IMAGE_IMAGECACHE_H
#define ORG_ALLBINARY_IMAGE_IMAGECACHE_H
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
// package org.allbinary.image

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class ImageCache;
@class Image;
@class NullImage;
@class J2MEUtil;
@class TsUtil;
@class ResourceUtil;
@class GDResources;
@class ABSystemWrapper;
@class StringMaker;
@class StringUtil;
@class CommonStrings;
@class Memory;
@class ImageCacheBase;
#include "java/io/InputStream.h"
#if __has_include("org/allbinary/TsUtil.h")
#include "org/allbinary/TsUtil.h"
#endif
// #include "org/allbinary/logic/ABSystemWrapper.h"
#if __has_include("org/allbinary/string/CommonStrings.h")
#include "org/allbinary/string/CommonStrings.h"
#endif
#include "java/lang/Thread.h"
#include "org/allbinary/image/ImageCacheBase.h"

@interface ImageCache : ImageCacheBase {
@public
    CommonStrings* commonStrings;
    TsUtil* tsUtil;
}
- (instancetype) init;
- (void) initFields;
- (void) addListener:(id)renderer;
- (int32_t) getIndex:(id)key;
- (Image*) get:(const char*)caller :(int32_t)width :(int32_t)height;
- (Image*) getWithKey:(id)key;
- (void) loadImageForAnimation;
- (void) progressEnded;
- (void) runTask;
- (bool) isLazy;
@end

extern ImageCache* ImageCache_NULL_IMAGE_CACHE;
// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void ImageCache_staticInit(void);

#if __has_include("javax/microedition/lcdui/Image.h")
#include "javax/microedition/lcdui/Image.h"
#endif

#endif // ORG_ALLBINARY_IMAGE_IMAGECACHE_H
