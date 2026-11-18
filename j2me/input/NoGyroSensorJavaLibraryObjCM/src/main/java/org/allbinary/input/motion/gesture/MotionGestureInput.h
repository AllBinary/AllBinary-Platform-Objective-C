#ifndef ORG_ALLBINARY_INPUT_MOTION_GESTURE_MOTIONGESTUREINPUT_H
#define ORG_ALLBINARY_INPUT_MOTION_GESTURE_MOTIONGESTUREINPUT_H
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
@class MotionGestureInput;
@class Input;
@class InputFactory;
#include "org/allbinary/game/input/Input.h"

@interface MotionGestureInput : Input {
@public
}
- (instancetype) init:(int32_t)id_ :(const char*)name;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void MotionGestureInput_staticInit(void);


#endif // ORG_ALLBINARY_INPUT_MOTION_GESTURE_MOTIONGESTUREINPUT_H
