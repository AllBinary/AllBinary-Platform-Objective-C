#ifndef ORG_ALLBINARY_IMAGE_ANIMATIONFACTORYIMAGESCALEUTIL_H
#define ORG_ALLBINARY_IMAGE_ANIMATIONFACTORYIMAGESCALEUTIL_H
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
// package org.allbinary.image

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class AnimationFactoryImageScaleUtil;
@class Image;
@class AnimationFactoryInitializationVisitor;
@class BaseImageAnimationFactory;
@class LogUtil;
@class StringMaker;
@class ScaleProperties;
@class ImageJ2MEScaleUtil;
@class CommonLabels;
@class CommonStrings;
// #include "org/allbinary/logic/communication/log/LogUtil.h"
// #include "org/allbinary/logic/string/StringMaker.h"
#if __has_include("org/allbinary/media/image/ImageJ2MEScaleUtil.h")
#include "org/allbinary/media/image/ImageJ2MEScaleUtil.h"
#endif
// #include "org/allbinary/string/CommonLabels.h"
// #include "org/allbinary/string/CommonStrings.h"

@interface AnimationFactoryImageScaleUtil : ABObject {
@public
    ImageJ2MEScaleUtil* imageScaleUtil;
}
- (instancetype) init;
- (void) initFields;
+ (AnimationFactoryImageScaleUtil*) getInstance;
- (Image*) createImage:(Image*)image :(int32_t)width :(int32_t)height :(int32_t)scaleWidth :(int32_t)scaleHeight;
- (void) processAdjust:(BaseImageAnimationFactory*)baseImageAnimationFactory;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void AnimationFactoryImageScaleUtil_staticInit(void);

#if __has_include("javax/microedition/lcdui/Image.h")
#include "javax/microedition/lcdui/Image.h"
#endif

#endif // ORG_ALLBINARY_IMAGE_ANIMATIONFACTORYIMAGESCALEUTIL_H
