#ifndef ORG_ALLBINARY_GAME_PAINT_OWNERSHIPPAINTABLE_H
#define ORG_ALLBINARY_GAME_PAINT_OWNERSHIPPAINTABLE_H
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
// package org.allbinary.game.paint

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class OwnershipPaintable;
@class Font;
@class Graphics;
@class Anchor;
@class BasicColor;
@class BasicColorFactory;
@class DisplayInfoSingleton;
@class MyFontProcessor;
@class UpdateMyFontInterface;
@class UpdateMyFontProcessor;
@class Paintable;
@class LogUtil;
#if __has_include("org/allbinary/graphics/color/BasicColor.h")
#include "org/allbinary/graphics/color/BasicColor.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/DisplayInfoSingleton.h")
#include "org/allbinary/graphics/displayable/DisplayInfoSingleton.h"
#endif
#if __has_include("org/allbinary/graphics/font/MyFontProcessor.h")
#include "org/allbinary/graphics/font/MyFontProcessor.h"
#endif
#include "org/allbinary/graphics/font/UpdateMyFontInterface.h"
#include "org/allbinary/graphics/paint/Paintable.h"
#if __has_include("org/allbinary/logic/communication/log/LogUtil.h")
#include "org/allbinary/logic/communication/log/LogUtil.h"
#endif

//J2MEForJ2ME
@interface OwnershipPaintable : Paintable <UpdateMyFontInterface> {
@public
    LogUtil* logUtil;
    DisplayInfoSingleton* displayInfo;
    MyFontProcessor* myFontProcessor;
    const char* COPYRIGHT;
    BasicColor* basicColor;
    int32_t color;
    int32_t anchor;
    int32_t COPYRIGHT_Y;
    int32_t beginWidth;
}
- (instancetype) init;
- (void) initFields;
+ (OwnershipPaintable*) getInstance;
- (void) updateMeasurement:(Graphics*)graphics;
- (void) setBasicColorP:(BasicColor*)basicColor;
- (BasicColor*) getBasicColorP;
- (void) paint:(Graphics*)graphics;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void OwnershipPaintable_staticInit(void);

#if __has_include("org/allbinary/graphics/color/BasicColor.h")
#include "org/allbinary/graphics/color/BasicColor.h"
#endif

#endif // ORG_ALLBINARY_GAME_PAINT_OWNERSHIPPAINTABLE_H
