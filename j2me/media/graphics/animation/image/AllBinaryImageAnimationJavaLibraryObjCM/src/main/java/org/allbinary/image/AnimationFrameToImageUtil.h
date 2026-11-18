#ifndef ORG_ALLBINARY_IMAGE_ANIMATIONFRAMETOIMAGEUTIL_H
#define ORG_ALLBINARY_IMAGE_ANIMATIONFRAMETOIMAGEUTIL_H
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
@class AnimationFrameToImageUtil;
@class Graphics;
@class Image;
@class Animation;
@class GameFeatureImageCacheFactory;

@interface AnimationFrameToImageUtil : ABObject {
@public
}
- (instancetype) init;
+ (AnimationFrameToImageUtil*) getInstance;
- (Image*) getInstanceTranslate:(int32_t)width :(int32_t)height :(Animation*)animationInterface;
- (Image*) getInstanceWH:(int32_t)width :(int32_t)height :(Animation*)animationInterface;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void AnimationFrameToImageUtil_staticInit(void);

#if __has_include("javax/microedition/lcdui/Image.h")
#include "javax/microedition/lcdui/Image.h"
#endif

#endif // ORG_ALLBINARY_IMAGE_ANIMATIONFRAMETOIMAGEUTIL_H
