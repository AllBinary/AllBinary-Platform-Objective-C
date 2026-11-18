#ifndef ORG_ALLBINARY_IMAGE_SPRITE_ANIMATIONFACTORYSPRITESCALEUTIL_H
#define ORG_ALLBINARY_IMAGE_SPRITE_ANIMATIONFACTORYSPRITESCALEUTIL_H
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
// package org.allbinary.image.sprite

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class AnimationFactorySpriteScaleUtil;
@class Image;
@class Sprite;
@class SpriteFactory;
@class OpenGLUtil;
@class ImageCache;
@class ImageCacheFactory;
@class OpenGLESImageExclusionUtil;
@class LogUtil;
@class J2SEMath;
@class StringMaker;
@class ImageScaleUtil;
@class CommonLabels;
@class CommonStrings;
#if __has_include("org/allbinary/graphics/opengles/OpenGLUtil.h")
#include "org/allbinary/graphics/opengles/OpenGLUtil.h"
#endif
#if __has_include("org/allbinary/image/ImageCache.h")
#include "org/allbinary/image/ImageCache.h"
#endif
#if __has_include("org/allbinary/image/opengles/OpenGLESImageExclusionUtil.h")
#include "org/allbinary/image/opengles/OpenGLESImageExclusionUtil.h"
#endif
// #include "org/allbinary/logic/communication/log/LogUtil.h"
#if __has_include("org/allbinary/logic/math/J2SEMath.h")
#include "org/allbinary/logic/math/J2SEMath.h"
#endif
// #include "org/allbinary/logic/string/StringMaker.h"
#if __has_include("org/allbinary/media/image/ImageScaleUtil.h")
#include "org/allbinary/media/image/ImageScaleUtil.h"
#endif
// #include "org/allbinary/string/CommonLabels.h"
// #include "org/allbinary/string/CommonStrings.h"

@interface AnimationFactorySpriteScaleUtil : ABObject {
@public
    ImageCache* imageCache;
    ImageScaleUtil* imageScaleUtil;
    OpenGLUtil* openGLUtil;
    J2SEMath* j2seMath;
    OpenGLESImageExclusionUtil* openGLESImageExclusionUtil;
}
- (instancetype) init;
- (void) initFields;
+ (AnimationFactorySpriteScaleUtil*) getInstance;
- (Sprite*) createImage:(Image*)image :(int32_t)width :(int32_t)height :(int32_t)scaleWidth :(int32_t)scaleHeight;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void AnimationFactorySpriteScaleUtil_staticInit(void);

#if __has_include("javax/microedition/lcdui/game/Sprite.h")
#include "javax/microedition/lcdui/game/Sprite.h"
#endif

#endif // ORG_ALLBINARY_IMAGE_SPRITE_ANIMATIONFACTORYSPRITESCALEUTIL_H
