#ifndef ORG_ALLBINARY_EMULATOR_DEVICE_TRUETYPEFONTUTIL_H
#define ORG_ALLBINARY_EMULATOR_DEVICE_TRUETYPEFONTUTIL_H
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
// package org.allbinary.emulator.device

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class TrueTypeFontUtil;
@class GL10;
@class Image;
@class BasicColor;
@class OpenGLESImage;
@class TrueTypeFontUtilBase;
#if __has_include("org/allbinary/image/opengles/OpenGLESImage.h")
#include "org/allbinary/image/opengles/OpenGLESImage.h"
#endif
#include "org/allbinary/emulator/device/TrueTypeFontUtilBase.h"

@interface TrueTypeFontUtil : TrueTypeFontUtilBase {
@public
    OpenGLESImage* fontImage;
}
- (instancetype) init;
- (void) initFields;
+ (TrueTypeFontUtil*) getInstance;
- (int32_t) getAsTextureSize:(int32_t)textureSize;
- (int32_t) getCellSize:(int32_t)cellSize;
- (Image*) getFontBitmap:(const char*)filename :(int32_t)fontSize :(int32_t)cellSize :(BasicColor*)basicColor;
- (void) saveFontAtlasAsFile;
- (Image*) getFontBitmapGL:(GL10*)gl :(const char*)filename :(int32_t)cellSize :(BasicColor*)basicColor;
- (int32_t*) getFontWidths:(const char*)filename :(int32_t)fontSize;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void TrueTypeFontUtil_staticInit(void);

#if __has_include("javax/microedition/lcdui/Image.h")
#include "javax/microedition/lcdui/Image.h"
#endif

#endif // ORG_ALLBINARY_EMULATOR_DEVICE_TRUETYPEFONTUTIL_H
