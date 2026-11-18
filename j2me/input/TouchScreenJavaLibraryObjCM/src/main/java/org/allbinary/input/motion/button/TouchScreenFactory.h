#ifndef ORG_ALLBINARY_INPUT_MOTION_BUTTON_TOUCHSCREENFACTORY_H
#define ORG_ALLBINARY_INPUT_MOTION_BUTTON_TOUCHSCREENFACTORY_H
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
@class TouchScreenFactory;
@class LogUtil;
@class StringMaker;
@class StringUtil;
@class CommonStrings;
@class TouchScreenTypesFactory;
@class TouchScreenType;
#if __has_include("org/allbinary/logic/communication/log/LogUtil.h")
#include "org/allbinary/logic/communication/log/LogUtil.h"
#endif
#if __has_include("org/allbinary/input/motion/button/TouchScreenType.h")
#include "org/allbinary/input/motion/button/TouchScreenType.h"
#endif

@interface TouchScreenFactory : ABObject {
@public
    LogUtil* logUtil;
    bool touch;
    bool multiTouch;
    bool multiTouchDistinct;
    TouchScreenType* touchScreenType;
}
- (instancetype) init;
- (void) initFields;
+ (TouchScreenFactory*) getInstance;
- (void) setMultiTouch:(bool)multiTouch;
- (bool) isMultiTouch;
- (void) setTouch:(bool)touch;
- (bool) isTouch;
- (void) setMultiTouchDistinct:(bool)multiTouchDistinct;
- (bool) isMultiTouchDistinct;
- (void) setTouchScreenType:(TouchScreenType*)touchScreenType;
- (TouchScreenType*) getTouchScreenType;
- (const char*) toString;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void TouchScreenFactory_staticInit(void);


#endif // ORG_ALLBINARY_INPUT_MOTION_BUTTON_TOUCHSCREENFACTORY_H
