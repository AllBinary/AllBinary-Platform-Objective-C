#ifndef ORG_ALLBINARY_INPUT_TOUCHJ2ME_H
#define ORG_ALLBINARY_INPUT_TOUCHJ2ME_H
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
// package org.allbinary.input

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class TouchJ2ME;
@class AllMotionRecognizer;
@class BasicMotionGesturesHandler;
@class GameMotionGestureListener;
@class MotionGestureReceiveInterfaceFactory;
@class LogUtil;
@class CommonStrings;
#if __has_include("org/allbinary/input/motion/AllMotionRecognizer.h")
#include "org/allbinary/input/motion/AllMotionRecognizer.h"
#endif
#if __has_include("org/allbinary/logic/communication/log/LogUtil.h")
#include "org/allbinary/logic/communication/log/LogUtil.h"
#endif

//TouchJ2ME
@interface TouchJ2ME : ABObject {
@public
    LogUtil* logUtil;
    int32_t DEVICE_ID;
    AllMotionRecognizer* motionRecognizer;
}
- (instancetype) init;
- (void) initFields;
- (void) pointerDragged:(int32_t)x :(int32_t)y;
- (void) pointerPressed:(int32_t)x :(int32_t)y;
- (void) pointerReleased:(int32_t)x :(int32_t)y;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void TouchJ2ME_staticInit(void);


#endif // ORG_ALLBINARY_INPUT_TOUCHJ2ME_H
