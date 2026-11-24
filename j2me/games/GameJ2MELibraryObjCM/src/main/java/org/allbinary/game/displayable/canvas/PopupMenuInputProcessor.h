#ifndef ORG_ALLBINARY_GAME_DISPLAYABLE_CANVAS_POPUPMENUINPUTPROCESSOR_H
#define ORG_ALLBINARY_GAME_DISPLAYABLE_CANVAS_POPUPMENUINPUTPROCESSOR_H
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
@class PopupMenuInputProcessor;
@class Canvas;
@class GameInputStrings;
@class GameKeyEvent;
@class GPoint;
@class Rectangle;
@class MyCanvas;
@class MotionGestureInput;
@class TouchMotionGestureFactory;
@class MotionGestureEvent;
@class PreLogUtil;
@class StringMaker;
@class RectangleCollisionUtil;
@class CommonSeps;
@class TimeDelayHelper;
@class BasicArrayList;
@class BasicMenuInputProcessor;
@class AllBinaryGameCanvas;
#if __has_include("org/allbinary/graphics/Rectangle.h")
#include "org/allbinary/graphics/Rectangle.h"
#endif
// #include "org/allbinary/logic/communication/log/PreLogUtil.h"
// #include "org/allbinary/logic/string/StringMaker.h"
#if __has_include("org/allbinary/math/RectangleCollisionUtil.h")
#include "org/allbinary/math/RectangleCollisionUtil.h"
#endif
// #include "org/allbinary/string/CommonSeps.h"
#if __has_include("org/allbinary/time/TimeDelayHelper.h")
#include "org/allbinary/time/TimeDelayHelper.h"
#endif
#include "org/allbinary/game/displayable/canvas/BasicMenuInputProcessor.h"

@interface PopupMenuInputProcessor : BasicMenuInputProcessor {
@public
    RectangleCollisionUtil* rectangleCollisionUtil;
    int32_t CLICK_DELAY;
    TimeDelayHelper* clickTimeHelper;
    Rectangle* rectangle;
}
- (instancetype) init:(BasicArrayList*)gameKeyEventList :(int32_t)playerInputId :(MyCanvas*)gameCanvas :(Rectangle*)rectangle;
- (void) initFields;
- (void) initMethod:(Rectangle*)rectangle;
- (int32_t) processInput:(int32_t)key;
- (int32_t) processInputList;
- (int32_t) processMotionInputs;
- (void) processMotionInput:(MotionGestureEvent*)motionGestureEvent;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void PopupMenuInputProcessor_staticInit(void);


#endif // ORG_ALLBINARY_GAME_DISPLAYABLE_CANVAS_POPUPMENUINPUTPROCESSOR_H
