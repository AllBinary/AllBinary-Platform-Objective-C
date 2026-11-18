#ifndef ORG_ALLBINARY_MEDIA_IMAGE_IMAGECOPYUTIL_H
#define ORG_ALLBINARY_MEDIA_IMAGE_IMAGECOPYUTIL_H
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
@class ImageCopyUtil;
@class Graphics;
@class Image;
@class Features;
@class GameFeatureFactory;
@class Anchor;
@class LogUtil;
@class CommonStrings;
@class ImageCreationUtil;
#if __has_include("org/allbinary/game/configuration/feature/Features.h")
#include "org/allbinary/game/configuration/feature/Features.h"
#endif
#if __has_include("org/allbinary/game/configuration/feature/GameFeatureFactory.h")
#include "org/allbinary/game/configuration/feature/GameFeatureFactory.h"
#endif
#if __has_include("org/allbinary/logic/communication/log/LogUtil.h")
#include "org/allbinary/logic/communication/log/LogUtil.h"
#endif
#if __has_include("org/allbinary/string/CommonStrings.h")
#include "org/allbinary/string/CommonStrings.h"
#endif
#if __has_include("org/allbinary/media/image/ImageCreationUtil.h")
#include "org/allbinary/media/image/ImageCreationUtil.h"
#endif

@interface ImageCopyUtil : ABObject {
@public
    LogUtil* logUtil;
    CommonStrings* commonStrings;
    ImageCreationUtil* imageCreationUtil;
    int32_t anchor;
    GameFeatureFactory* gameFeatureFactory;
    Features* features;
    const char* NO_COPY;
}
- (instancetype) init;
- (void) initFields;
+ (ImageCopyUtil*) getInstance;
- (Image*) createImageForRotation:(Image*)originalImage;
- (Image*) createImage:(Image*)originalImage;
- (Image*) createImageScale:(Image*)originalImage :(float)canvasScale :(bool)resize;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void ImageCopyUtil_staticInit(void);

#if __has_include("javax/microedition/lcdui/Image.h")
#include "javax/microedition/lcdui/Image.h"
#endif

#endif // ORG_ALLBINARY_MEDIA_IMAGE_IMAGECOPYUTIL_H
