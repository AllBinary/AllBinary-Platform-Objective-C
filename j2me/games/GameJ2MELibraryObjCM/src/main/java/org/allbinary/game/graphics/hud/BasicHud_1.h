#ifndef ORG_ALLBINARY_GAME_GRAPHICS_HUD_BASICHUD_1_H
#define ORG_ALLBINARY_GAME_GRAPHICS_HUD_BASICHUD_1_H
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
// package org.allbinary.game.graphics.hud

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class BasicHud_1;
@class Graphics;
@class Anchor;
@class GPoint;
@class PointFactory;
@class BasicColor;
@class BasicColorFactory;
@class BasicColorSetUtil;
@class CanvasStrings;
@class DisplayInfoSingleton;
@class DisplayChangeEvent;
@class MyFontProcessor;
@class UpdateMyFontInterface;
@class UpdateMyFontProcessor;
@class ForcedLogUtil;
@class LogUtil;
@class StringMaker;
@class AllBinaryEventObject;
@class EventStrings;
@class CommonStrings;
@class HudGraphicsPosition;
@class BasicHudFactory;
#if __has_include("org/allbinary/graphics/color/BasicColor.h")
#include "org/allbinary/graphics/color/BasicColor.h"
#endif
#if __has_include("org/allbinary/graphics/color/BasicColorSetUtil.h")
#include "org/allbinary/graphics/color/BasicColorSetUtil.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/CanvasStrings.h")
#include "org/allbinary/graphics/displayable/CanvasStrings.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/DisplayInfoSingleton.h")
#include "org/allbinary/graphics/displayable/DisplayInfoSingleton.h"
#endif
#if __has_include("org/allbinary/graphics/font/MyFontProcessor.h")
#include "org/allbinary/graphics/font/MyFontProcessor.h"
#endif
#include "org/allbinary/graphics/font/UpdateMyFontInterface.h"
#if __has_include("org/allbinary/logic/communication/log/LogUtil.h")
#include "org/allbinary/logic/communication/log/LogUtil.h"
#endif
// #include "org/allbinary/logic/string/StringMaker.h"
#if __has_include("org/allbinary/string/CommonStrings.h")
#include "org/allbinary/string/CommonStrings.h"
#endif
#if __has_include("org/allbinary/game/graphics/hud/HudGraphicsPosition.h")
#include "org/allbinary/game/graphics/hud/HudGraphicsPosition.h"
#endif

@interface BasicHud_1 : ABObject <UpdateMyFontInterface> {
@public
    LogUtil* logUtil;
    CommonStrings* commonStrings;
    CanvasStrings* canvasStrings;
    BasicColorSetUtil* basicSetColorUtil;
    DisplayInfoSingleton* displayInfo;
    MyFontProcessor* updateMyFontProcessor;
    MyFontProcessor* myFontProcessor;
    int32_t location;
    int32_t direction;
    int32_t bufferZone;
    HudGraphicsPosition* hudGraphicsPosition;
    int32_t x;
    int32_t y;
    BasicColor* basicColor;
    int32_t color;
    int32_t updateMaxWidth;
    int32_t updateMaxHeight;
    int32_t offsetY;
}
- (instancetype) init:(int32_t)location :(int32_t)direction :(int32_t)bufferZone :(BasicColor*)basicColor;
- (void) initFields;
- (void) updateMeasurement:(Graphics*)graphics;
- (int32_t) getLocation;
- (int32_t) getDirection;
- (HudGraphicsPosition*) getHudGraphicsPositionWH:(int32_t)width :(int32_t)height :(int32_t)maxWidth :(int32_t)maxHeight;
- (void) onEvent:(AllBinaryEventObject*)eventObject;
- (void) onDisplayChangeEvent:(DisplayChangeEvent*)displayChangeEvent;
- (GPoint*) getPoint:(int32_t)x :(int32_t)y;
- (int32_t) getBufferZone;
- (void) setBufferZone:(int32_t)bufferZone;
- (void) setLocation:(int32_t)location;
- (void) setDirection:(int32_t)direction;
- (HudGraphicsPosition*) getHudGraphicsPosition;
- (int32_t) getColor;
- (int32_t) getX;
- (void) setX:(int32_t)x;
- (void) setBasicColorP:(BasicColor*)basicColor;
- (BasicColor*) getBasicColorP;
- (void) setY:(int32_t)y;
- (int32_t) getY;
- (void) paintSSO:(Graphics*)graphics :(const char*)string :(const char*)string2 :(int32_t)offset;
- (void) paintSSOO:(Graphics*)graphics :(const char*)string :(const char*)string2 :(int32_t)offset :(int32_t)offset2;
- (void) paintDXY:(Graphics*)graphics :(uint16_t*)charArray :(int32_t)offset :(int32_t)len :(uint16_t*)charArray2 :(int32_t)offset2 :(int32_t)len2 :(int32_t)xOffset :(int32_t)xOffset2;
- (void) paintDX:(Graphics*)graphics :(uint16_t*)charArray :(int32_t)offset :(int32_t)len :(uint16_t*)charArray2 :(int32_t)offset2 :(int32_t)len2 :(int32_t)xOffset;
- (void) paintOffsetAndLength:(Graphics*)graphics :(uint16_t*)charArray :(int32_t)offset :(int32_t)len;
- (void) paintString:(Graphics*)graphics :(const char*)string;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void BasicHud_1_staticInit(void);

#if __has_include("org/allbinary/graphics/GPoint.h")
#include "org/allbinary/graphics/GPoint.h"
#endif
#if __has_include("org/allbinary/graphics/color/BasicColor.h")
#include "org/allbinary/graphics/color/BasicColor.h"
#endif

#endif // ORG_ALLBINARY_GAME_GRAPHICS_HUD_BASICHUD_1_H
