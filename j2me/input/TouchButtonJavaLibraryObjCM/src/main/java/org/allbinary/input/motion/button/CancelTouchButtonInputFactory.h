#ifndef ORG_ALLBINARY_INPUT_MOTION_BUTTON_CANCELTOUCHBUTTONINPUTFACTORY_H
#define ORG_ALLBINARY_INPUT_MOTION_BUTTON_CANCELTOUCHBUTTONINPUTFACTORY_H
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
@class CancelTouchButtonInputFactory;
@class InputFactory;
@class NullUtil;
@class TouchButtonInput;
@class BasicTouchInputFactory;
#if __has_include("org/allbinary/input/motion/button/TouchButtonInput.h")
#include "org/allbinary/input/motion/button/TouchButtonInput.h"
#endif

@interface CancelTouchButtonInputFactory : ABObject {
@public
    TouchButtonInput** cancelInputArray;
}
- (instancetype) init;
- (void) initFields;
+ (CancelTouchButtonInputFactory*) getInstance;
- (TouchButtonInput*) getCancel:(TouchButtonInput*)touchButtonInput;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void CancelTouchButtonInputFactory_staticInit(void);


#endif // ORG_ALLBINARY_INPUT_MOTION_BUTTON_CANCELTOUCHBUTTONINPUTFACTORY_H
