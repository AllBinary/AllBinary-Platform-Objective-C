#ifndef ORG_ALLBINARY_PLATFORM_GRAPHICS_PLATFORMBITMAPBASE_H
#define ORG_ALLBINARY_PLATFORM_GRAPHICS_PLATFORMBITMAPBASE_H
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
// package org.allbinary.platform.graphics

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class PlatformBitmapBase;
@class Image;
@class NullImage;
@class BasicColor;
@class BasicColorFactory;
#if __has_include("org/allbinary/graphics/color/BasicColor.h")
#include "org/allbinary/graphics/color/BasicColor.h"
#endif

@interface PlatformBitmapBase : ABObject {
@public
    int32_t alpha;
    BasicColor* basicColor;
}
- (instancetype) init;
- (void) initFields;
- (int32_t) getWidth;
- (int32_t) getHeight;
- (Image*) getImage;
@end

extern PlatformBitmapBase* PlatformBitmapBase_NULL_PLATFORM_BITMAP_BASE;
// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void PlatformBitmapBase_staticInit(void);

#if __has_include("javax/microedition/lcdui/Image.h")
#include "javax/microedition/lcdui/Image.h"
#endif

#endif // ORG_ALLBINARY_PLATFORM_GRAPHICS_PLATFORMBITMAPBASE_H
