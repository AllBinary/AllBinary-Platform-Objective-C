#ifndef ORG_ALLBINARY_GAME_DISPLAYABLE_CANVAS_BASICPOPUPMENUPAINTABLE_H
#define ORG_ALLBINARY_GAME_DISPLAYABLE_CANVAS_BASICPOPUPMENUPAINTABLE_H
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
// package org.allbinary.game.displayable.canvas

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class BasicPopupMenuPaintable;
@class Font;
@class Graphics;
@class AndroidUtil;
@class J2MEUtil;
@class Animation;
@class NullAnimationFactory;
@class RectangleFilledAnimation;
@class Features;
@class SWTUtil;
@class GPoint;
@class Rectangle;
@class BasicColor;
@class BasicColorFactory;
@class BasicColorSetUtil;
@class DrawVerticalStringUtil;
@class MyFontProcessor;
@class UpdateMyFontInterface;
@class UpdateMyFontProcessor;
@class OpenGLFeatureFactory;
@class OpenGLFeatureUtil;
@class Paintable;
@class SWTJOGLProcessor;
#if __has_include("org/allbinary/animation/Animation.h")
#include "org/allbinary/animation/Animation.h"
#endif
#if __has_include("org/allbinary/graphics/Rectangle.h")
#include "org/allbinary/graphics/Rectangle.h"
#endif
#if __has_include("org/allbinary/graphics/color/BasicColor.h")
#include "org/allbinary/graphics/color/BasicColor.h"
#endif
#if __has_include("org/allbinary/graphics/color/BasicColorSetUtil.h")
#include "org/allbinary/graphics/color/BasicColorSetUtil.h"
#endif
#if __has_include("org/allbinary/graphics/draw/DrawVerticalStringUtil.h")
#include "org/allbinary/graphics/draw/DrawVerticalStringUtil.h"
#endif
#if __has_include("org/allbinary/graphics/font/MyFontProcessor.h")
#include "org/allbinary/graphics/font/MyFontProcessor.h"
#endif
#include "org/allbinary/graphics/font/UpdateMyFontInterface.h"
#include "org/allbinary/graphics/paint/Paintable.h"

@interface BasicPopupMenuPaintable : Paintable <UpdateMyFontInterface> {
@public
    BasicColorSetUtil* basicSetColorUtil;
    DrawVerticalStringUtil* drawStringUtil;
    const char* label;
    BasicColor* foregroundBasicColor;
    MyFontProcessor* myFontProcessor;
    Rectangle* rectangle;
    int32_t BORDER;
    int32_t heightOffset;
    int32_t offset;
    Animation* animationInterface;
}
- (instancetype) init:(Rectangle*)rectangle :(BasicColor*)backgroundBasicColor :(BasicColor*)foregroundBasicColor;
- (void) initFields;
- (void) updateMeasurement:(Graphics*)graphics;
- (void) init_:(Rectangle*)rectangle;
- (void) paint:(Graphics*)graphics;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void BasicPopupMenuPaintable_staticInit(void);


#endif // ORG_ALLBINARY_GAME_DISPLAYABLE_CANVAS_BASICPOPUPMENUPAINTABLE_H
