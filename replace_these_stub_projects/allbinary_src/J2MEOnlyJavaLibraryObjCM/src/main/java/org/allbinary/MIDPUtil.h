#ifndef ORG_ALLBINARY_MIDPUTIL_H
#define ORG_ALLBINARY_MIDPUTIL_H
/*
 *
 * AllBinary Open License Version 1
 * Copyright (c) 2026 AllBinary
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
// package org.allbinary

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class MIDPUtil;
@class Form;
@class Image;
@class Item;
@class Manager;
@class MediaException;
@class Player;
#include "java/io/IOException.h"
#include "java/io/InputStream.h"

//like microemu-playn, so the languages without overloading can be generated. J2ME uses the MIDP overloads.
@interface MIDPUtil : ABObject {
@public
}
- (instancetype) init;
+ (MIDPUtil*) getInstance;
- (Image*) createImageWH:(int32_t)width :(int32_t)height;
- (Image*) createImageFromByteArray:(int8_t*)imageData :(int32_t)imageOffset :(int32_t)imageLength;
- (Image*) createImageFromInputStream:(InputStream*)inputStream;
- (Player*) createPlayerFromInputStream:(InputStream*)inputStream :(const char*)type;
- (int32_t) appendItem:(Form*)form :(Item*)item;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void MIDPUtil_staticInit(void);

#if __has_include("javax/microedition/lcdui/Image.h")
#include "javax/microedition/lcdui/Image.h"
#endif
#if __has_include("javax/microedition/media/Player.h")
#include "javax/microedition/media/Player.h"
#endif

#endif // ORG_ALLBINARY_MIDPUTIL_H
