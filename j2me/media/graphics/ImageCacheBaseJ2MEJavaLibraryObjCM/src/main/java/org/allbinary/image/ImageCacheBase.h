#ifndef ORG_ALLBINARY_IMAGE_IMAGECACHEBASE_H
#define ORG_ALLBINARY_IMAGE_IMAGECACHEBASE_H
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
@class ImageCacheBase;
@class Image;
@class NullImage;
@class StdUtil;
@class LogUtil;
@class StringMaker;
@class CommonLabels;
@class CommonSeps;
@class ABHashtable;
@class BasicArrayList;
@class BasicArrayListD;
@class ImageFactory;
#include "java/io/InputStream.h"
#if __has_include("org/allbinary/logic/communication/log/LogUtil.h")
#include "org/allbinary/logic/communication/log/LogUtil.h"
#endif
#if __has_include("org/allbinary/util/ABHashtable.h")
#include "org/allbinary/util/ABHashtable.h"
#endif
#if __has_include("org/allbinary/util/BasicArrayList.h")
#include "org/allbinary/util/BasicArrayList.h"
#endif
#if __has_include("org/allbinary/image/ImageFactory.h")
#include "org/allbinary/image/ImageFactory.h"
#endif

@interface ImageCacheBase : ABObject {
@public
    LogUtil* logUtil;
    ImageFactory* imageFactory;
    ABHashtable* hashtable;
    int32_t SIZE;
    int32_t* widths;
    int32_t* heights;
    BasicArrayList** listOfList;
    BasicArrayList** availableListOfList;
    int32_t volume;
    int32_t nextIndex;
}
- (instancetype) init;
- (void) initFields;
- (Image*) getImage:(id)resourceId;
- (void) releaseAll;
- (int32_t) getIndexWH:(int32_t)width :(int32_t)height;
- (Image*) getFromAvailable:(int32_t)foundIndex :(int32_t)width :(int32_t)height;
- (Image*) get:(const char*)caller :(int32_t)width :(int32_t)height;
- (Image*) getWithKey:(id)key;
- (Image*) createImage:(const char*)caller :(int32_t)width :(int32_t)height;
- (Image*) createImageFromInputStream:(id)key :(InputStream*)inputStream;
- (const char*) toString;
- (ABHashtable*) getHashtableP;
- (void) init_:(Image*)image;
- (void) initProgress;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void ImageCacheBase_staticInit(void);

#if __has_include("javax/microedition/lcdui/Image.h")
#include "javax/microedition/lcdui/Image.h"
#endif
#if __has_include("org/allbinary/util/ABHashtable.h")
#include "org/allbinary/util/ABHashtable.h"
#endif

#endif // ORG_ALLBINARY_IMAGE_IMAGECACHEBASE_H
