#ifndef ORG_ALLBINARY_GAME_DISPLAYABLE_CANVAS_BASICMENUINPUTPROCESSOR_H
#define ORG_ALLBINARY_GAME_DISPLAYABLE_CANVAS_BASICMENUINPUTPROCESSOR_H
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
@class BasicMenuInputProcessor;
@class Canvas;
@class NullCanvas;
@class PlayerGameInput;
@class MyCanvas;
@class BaseMotionGestureEventListener;
@class MotionGestureEvent;
@class BasicArrayList;
@class BasicArrayListD;
#if __has_include("javax/microedition/lcdui/Canvas.h")
#include "javax/microedition/lcdui/Canvas.h"
#endif
#include "org/allbinary/game/input/PlayerGameInput.h"
#include "org/allbinary/input/motion/gesture/observer/BaseMotionGestureEventListener.h"
#if __has_include("org/allbinary/util/BasicArrayList.h")
#include "org/allbinary/util/BasicArrayList.h"
#endif

@interface BasicMenuInputProcessor : PlayerGameInput <BaseMotionGestureEventListener> {
@public
    BasicArrayList* motionGestureEventList;
    Canvas* canvas;
}
- (instancetype) init:(BasicArrayList*)gameKeyEventList :(int32_t)playerInputId :(Canvas*)gameCanvas;
- (void) initFields;
- (void) onMotionGestureEvent:(MotionGestureEvent*)motionGestureEvent;
- (void) onScrolledMotionGestureEvent:(MotionGestureEvent*)motionGestureEvent;
- (void) setCanvas:(MyCanvas*)canvas;
- (MyCanvas*) getCanvas;
- (int32_t) processInputList;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void BasicMenuInputProcessor_staticInit(void);

#if __has_include("org/allbinary/graphics/displayable/MyCanvas.h")
#include "org/allbinary/graphics/displayable/MyCanvas.h"
#endif

#endif // ORG_ALLBINARY_GAME_DISPLAYABLE_CANVAS_BASICMENUINPUTPROCESSOR_H
