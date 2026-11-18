#ifndef ORG_ALLBINARY_INPUT_MOTION_GESTURE_TOUCHMOTIONGESTUREFACTORY_H
#define ORG_ALLBINARY_INPUT_MOTION_GESTURE_TOUCHMOTIONGESTUREFACTORY_H
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
// package org.allbinary.input.motion.gesture

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class TouchMotionGestureFactory;
@class InputFactory;
@class NullUtil;
@class MotionGestureInput;
#if __has_include("org/allbinary/input/motion/gesture/MotionGestureInput.h")
#include "org/allbinary/input/motion/gesture/MotionGestureInput.h"
#endif

@interface TouchMotionGestureFactory : ABObject {
@public
    MotionGestureInput* LEFT;
    MotionGestureInput* RIGHT;
    MotionGestureInput* UP;
    MotionGestureInput* DOWN;
    MotionGestureInput* PRESSED;
    MotionGestureInput* RELEASED;
    MotionGestureInput* DIAGONAL_DOWN_RIGHT;
    MotionGestureInput* DIAGONAL_DOWN_LEFT;
    MotionGestureInput* DIAGONAL_UP_RIGHT;
    MotionGestureInput* DIAGONAL_UP_LEFT;
    MotionGestureInput* SCROLL_UP;
    MotionGestureInput* SCROLL_DOWN;
    MotionGestureInput* NO_MOTION;
    MotionGestureInput* LAST_MOTION;
}
- (instancetype) init;
- (void) initFields;
+ (TouchMotionGestureFactory*) getInstance;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void TouchMotionGestureFactory_staticInit(void);


#endif // ORG_ALLBINARY_INPUT_MOTION_GESTURE_TOUCHMOTIONGESTUREFACTORY_H
