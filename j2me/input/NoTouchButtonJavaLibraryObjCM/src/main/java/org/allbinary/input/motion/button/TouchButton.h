#ifndef ORG_ALLBINARY_INPUT_MOTION_BUTTON_TOUCHBUTTON_H
#define ORG_ALLBINARY_INPUT_MOTION_BUTTON_TOUCHBUTTON_H
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
// package org.allbinary.input.motion.button

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class TouchButton;
@class Graphics;
@class Animation;
@class AnimationInterface;
@class CellPosition;
@class GPoint;
@class PointFactory;
@class Rectangle;
@class RectangleFactory;
@class Paintable;
@class LogUtil;
@class StringMaker;
@class StringUtil;
@class CommonStrings;
@class TouchButtonInput;
#if __has_include("org/allbinary/animation/Animation.h")
#include "org/allbinary/animation/Animation.h"
#endif
#if __has_include("org/allbinary/graphics/CellPosition.h")
#include "org/allbinary/graphics/CellPosition.h"
#endif
#if __has_include("org/allbinary/graphics/Rectangle.h")
#include "org/allbinary/graphics/Rectangle.h"
#endif
#include "org/allbinary/graphics/paint/Paintable.h"
#if __has_include("org/allbinary/logic/communication/log/LogUtil.h")
#include "org/allbinary/logic/communication/log/LogUtil.h"
#endif
#if __has_include("org/allbinary/string/CommonStrings.h")
#include "org/allbinary/string/CommonStrings.h"
#endif
#if __has_include("org/allbinary/input/motion/button/TouchButtonInput.h")
#include "org/allbinary/input/motion/button/TouchButtonInput.h"
#endif

@interface TouchButton : Paintable {
@public
    LogUtil* logUtil;
    CommonStrings* commonStrings;
    TouchButtonInput* touchButtonInput;
    Animation* animationInterface;
    Rectangle* rawRectangle;
    int32_t xBorder;
    int32_t yBorder;
    Rectangle* rectangle;
    CellPosition* cellPosition;
    int32_t animationX;
    int32_t animationY;
}
- (instancetype) init:(TouchButtonInput*)touchButtonInput :(AnimationInterface*)animationInterface :(Rectangle*)rawRectangle :(CellPosition*)cellPosition :(int32_t)xBorder :(int32_t)yBorder;
- (void) initFields;
- (void) paint:(Graphics*)graphics;
- (void) updateRectangle;
- (CellPosition*) getCellPositionP;
- (Rectangle*) getRectangleP;
- (TouchButtonInput*) getTouchButtonInput;
- (const char*) toString;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void TouchButton_staticInit(void);

#if __has_include("org/allbinary/graphics/CellPosition.h")
#include "org/allbinary/graphics/CellPosition.h"
#endif
#if __has_include("org/allbinary/graphics/Rectangle.h")
#include "org/allbinary/graphics/Rectangle.h"
#endif

#endif // ORG_ALLBINARY_INPUT_MOTION_BUTTON_TOUCHBUTTON_H
