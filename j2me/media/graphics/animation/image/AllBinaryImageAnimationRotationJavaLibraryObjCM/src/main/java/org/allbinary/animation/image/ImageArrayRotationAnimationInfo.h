#ifndef ORG_ALLBINARY_ANIMATION_IMAGE_IMAGEARRAYROTATIONANIMATIONINFO_H
#define ORG_ALLBINARY_ANIMATION_IMAGE_IMAGEARRAYROTATIONANIMATIONINFO_H
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
// package org.allbinary.animation.image

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class ImageArrayRotationAnimationInfo;
@class Image;
@class AngleInfo;
#if __has_include("javax/microedition/lcdui/Image.h")
#include "javax/microedition/lcdui/Image.h"
#endif

@interface ImageArrayRotationAnimationInfo : ABObject {
@public
    Image** imageArray;
    int32_t angleIncrement;
    int32_t totalAngle;
    int32_t dx;
    int32_t dy;
}
- (instancetype) init:(Image**)imageArray :(int32_t)angleIncrement :(int32_t)totalAngle :(int32_t)dx :(int32_t)dy;
- (void) initFields;
- (void) setImageArray:(Image**)imageArray;
- (Image**) getImageArray;
- (AngleInfo*) getAngleInfoP;
- (void) setTotalAngle:(int32_t)totalAngle;
- (int32_t) getTotalAngle;
- (void) setDx:(int32_t)dx;
- (int32_t) getDx;
- (void) setDy:(int32_t)dy;
- (int32_t) getDy;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void ImageArrayRotationAnimationInfo_staticInit(void);

#if __has_include("org/allbinary/math/AngleInfo.h")
#include "org/allbinary/math/AngleInfo.h"
#endif

#endif // ORG_ALLBINARY_ANIMATION_IMAGE_IMAGEARRAYROTATIONANIMATIONINFO_H
