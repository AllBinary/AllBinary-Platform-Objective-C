#ifndef ORG_ALLBINARY_INPUT_MOTION_GESTURE_CONFIGURATION_MOTIONGESTURECONFIGURATION_H
#define ORG_ALLBINARY_INPUT_MOTION_GESTURE_CONFIGURATION_MOTIONGESTURECONFIGURATION_H
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
// package org.allbinary.input.motion.gesture.configuration

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class MotionGestureConfiguration;
@class CompleteMotionGestureInputEvent;
@class BasicColor;
@class BasicColorFactory;
@class MotionGestureToMotionGestureActionAssociation;
@class StringUtil;
@class BasicArrayList;
@class BasicArrayListD;
#if __has_include("org/allbinary/graphics/color/BasicColor.h")
#include "org/allbinary/graphics/color/BasicColor.h"
#endif
#if __has_include("org/allbinary/util/BasicArrayList.h")
#include "org/allbinary/util/BasicArrayList.h"
#endif

@interface MotionGestureConfiguration : ABObject {
@public
    bool diagonalMotionGestureAllowed;
    int32_t diagonalTolerance;
    int32_t minimumMotionGesture;
    const char* button;
    BasicColor* color;
    bool executingActions;
    int32_t mouseButtonMask;
    BasicArrayList* activeCommands;
}
- (instancetype) init;
- (void) initFields;
- (void) addMotionGestureAction:(BasicArrayList*)list :(CompleteMotionGestureInputEvent*)commandAction;
- (void) clearMotionGestureAction;
- (BasicArrayList*) getAssociateCommandActionsList;
- (bool) isDiagonalMotionGestureAllowed;
- (bool) isExecutingActionsAllowed;
- (void) setExecutingActionsAllowed:(bool)executingActionAllowed;
- (void) setDiagonalMotionGestureAllowed:(bool)diagonalMotionGestureAllowed;
- (int32_t) getDiagonalTolerance;
- (void) setDiagonalTolerance:(int32_t)diagonalTolerance;
- (int32_t) getMinimumMotionGesture;
- (void) setMinimumMotionGesture:(int32_t)minimumMotionGesture;
- (const char*) getButton;
- (void) setButton:(const char*)button;
- (BasicColor*) getColor;
- (void) setColor:(BasicColor*)color;
- (int32_t) getMouseButtonMask;
- (void) setMouseButtonMask:(int32_t)mouseButtonMask;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void MotionGestureConfiguration_staticInit(void);

#if __has_include("org/allbinary/graphics/color/BasicColor.h")
#include "org/allbinary/graphics/color/BasicColor.h"
#endif
#if __has_include("org/allbinary/util/BasicArrayList.h")
#include "org/allbinary/util/BasicArrayList.h"
#endif

#endif // ORG_ALLBINARY_INPUT_MOTION_GESTURE_CONFIGURATION_MOTIONGESTURECONFIGURATION_H
