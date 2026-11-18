#ifndef ORG_ALLBINARY_INPUT_MOTION_BUTTON_TOUCHBUTTONRECOGNIZER_H
#define ORG_ALLBINARY_INPUT_MOTION_BUTTON_TOUCHBUTTONRECOGNIZER_H
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
@class TouchButtonRecognizer;
@class DownGameKeyEventHandler;
@class GameKeyEvent;
@class UpGameKeyEventHandler;
@class GPoint;
@class Rectangle;
@class LogUtil;
@class RectangleCollisionUtil;
@class BasicArrayList;
@class BasicTouchInputFactory;
@class TouchButtonInput;
@class CurrentlyPressedTouchButtonSingleton;
@class ReleaseHelper;
@class TouchScreenFactory;
@class MultitouchReleaseHelper;
@class TouchButtonFactory;
@class TouchButton;
#if __has_include("org/allbinary/game/input/event/DownGameKeyEventHandler.h")
#include "org/allbinary/game/input/event/DownGameKeyEventHandler.h"
#endif
#if __has_include("org/allbinary/game/input/event/UpGameKeyEventHandler.h")
#include "org/allbinary/game/input/event/UpGameKeyEventHandler.h"
#endif
#if __has_include("org/allbinary/logic/communication/log/LogUtil.h")
#include "org/allbinary/logic/communication/log/LogUtil.h"
#endif
#if __has_include("org/allbinary/math/RectangleCollisionUtil.h")
#include "org/allbinary/math/RectangleCollisionUtil.h"
#endif
#if __has_include("org/allbinary/input/motion/button/TouchButtonInput.h")
#include "org/allbinary/input/motion/button/TouchButtonInput.h"
#endif
#if __has_include("org/allbinary/input/motion/button/CurrentlyPressedTouchButtonSingleton.h")
#include "org/allbinary/input/motion/button/CurrentlyPressedTouchButtonSingleton.h"
#endif
#if __has_include("org/allbinary/input/motion/button/ReleaseHelper.h")
#include "org/allbinary/input/motion/button/ReleaseHelper.h"
#endif

@interface TouchButtonRecognizer : ABObject {
@public
    LogUtil* logUtil;
    RectangleCollisionUtil* rectangleCollisionUtil;
    UpGameKeyEventHandler* upGameKeyEventHandler;
    DownGameKeyEventHandler* downGameKeyEventHandler;
    TouchButtonInput* lastPressedTouchButtonInput;
    CurrentlyPressedTouchButtonSingleton* currentlyPressedTouchButtonSingleton;
    ReleaseHelper* releaseHelper;
}
- (instancetype) init;
- (void) initFields;
- (void) processRelease:(TouchButtonInput*)touchButtonInput :(int32_t)deviceId;
- (bool) releaseTouchButtonInput:(int32_t)x :(int32_t)y :(int32_t)deviceId;
- (bool) pressTouchButtonInput:(int32_t)x :(int32_t)y :(int32_t)deviceId;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void TouchButtonRecognizer_staticInit(void);


#endif // ORG_ALLBINARY_INPUT_MOTION_BUTTON_TOUCHBUTTONRECOGNIZER_H
