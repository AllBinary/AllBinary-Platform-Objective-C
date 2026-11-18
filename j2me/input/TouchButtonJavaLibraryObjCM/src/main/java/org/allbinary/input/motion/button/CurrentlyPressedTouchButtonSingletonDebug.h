#ifndef ORG_ALLBINARY_INPUT_MOTION_BUTTON_CURRENTLYPRESSEDTOUCHBUTTONSINGLETONDEBUG_H
#define ORG_ALLBINARY_INPUT_MOTION_BUTTON_CURRENTLYPRESSEDTOUCHBUTTONSINGLETONDEBUG_H
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
@class CurrentlyPressedTouchButtonSingletonDebug;
@class GPoint;
@class StringMaker;
@class StringUtil;
@class CommonSeps;
@class CurrentlyPressedTouchButtonSingleton;
@class TouchButtonInput;
#include "org/allbinary/input/motion/button/CurrentlyPressedTouchButtonSingleton.h"

@interface CurrentlyPressedTouchButtonSingletonDebug : CurrentlyPressedTouchButtonSingleton {
@public
    const char* string;
    const char* listString;
    const char* appendText;
    const char* PRESSED_AND_FIRED;
    const char* PRESSED_AND_NOT_FIRED;
    const char* ASSOCIATED_RELEASED_AND_FIRED;
    const char* RELEASED_AND_FIRED;
    const char* RELEASED_AND_FIRED_2;
    const char* RELEASED_AND_NOT_FIRED;
}
- (instancetype) init;
- (void) initFields;
+ (CurrentlyPressedTouchButtonSingleton*) getInstance;
- (void) appendTouchButtonInput:(const char*)append :(TouchButtonInput*)touchButtonInput;
- (void) append:(const char*)append;
- (void) clearLog:(int32_t)x :(int32_t)y;
- (void) releaseAndNotFired;
- (void) releaseAndFired:(TouchButtonInput*)touchButtonInput;
- (void) releaseAndFired2:(TouchButtonInput*)touchButtonInput;
- (void) releaseAndFiredAssociated:(TouchButtonInput*)touchButtonInput;
- (void) pressedAndFired:(TouchButtonInput*)touchButtonInput;
- (void) pressedAndNotFired:(TouchButtonInput*)touchButtonInput;
- (TouchButtonInput*) removeAt:(int32_t)index;
- (bool) remove:(TouchButtonInput*)touchButtonInput;
- (void) add:(TouchButtonInput*)touchButtonInput;
- (const char*) toString;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void CurrentlyPressedTouchButtonSingletonDebug_staticInit(void);


#endif // ORG_ALLBINARY_INPUT_MOTION_BUTTON_CURRENTLYPRESSEDTOUCHBUTTONSINGLETONDEBUG_H
