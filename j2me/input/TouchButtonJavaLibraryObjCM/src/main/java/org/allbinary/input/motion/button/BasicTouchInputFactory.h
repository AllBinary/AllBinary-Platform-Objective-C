#ifndef ORG_ALLBINARY_INPUT_MOTION_BUTTON_BASICTOUCHINPUTFACTORY_H
#define ORG_ALLBINARY_INPUT_MOTION_BUTTON_BASICTOUCHINPUTFACTORY_H
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
@class BasicTouchInputFactory;
@class InputFactory;
@class InputToGameKeyMapping;
@class NullUtil;
@class LogUtil;
@class StringMaker;
@class CommonLabels;
@class BasicArrayList;
@class BasicArrayListD;
@class TouchButtonInput;
#if __has_include("org/allbinary/logic/communication/log/LogUtil.h")
#include "org/allbinary/logic/communication/log/LogUtil.h"
#endif
#if __has_include("org/allbinary/util/BasicArrayList.h")
#include "org/allbinary/util/BasicArrayList.h"
#endif
#if __has_include("org/allbinary/input/motion/button/TouchButtonInput.h")
#include "org/allbinary/input/motion/button/TouchButtonInput.h"
#endif

@interface BasicTouchInputFactory : ABObject {
@public
    LogUtil* logUtil;
    TouchButtonInput* SPECIAL_BUTTON_SEVEN_TESTING_ONLY;
    TouchButtonInput* SPECIAL_BUTTON_EIGHT_TESTING_ONLY;
    TouchButtonInput* SPECIAL_BUTTON_SIX;
    TouchButtonInput* SPECIAL_BUTTON_FIVE;
    TouchButtonInput* SPECIAL_BUTTON_FOUR;
    TouchButtonInput* SPECIAL_BUTTON_THREE;
    TouchButtonInput* SPECIAL_BUTTON_TWO;
    TouchButtonInput* SPECIAL_BUTTON_ONE;
    TouchButtonInput* UP;
    TouchButtonInput* LEFT;
    TouchButtonInput* RIGHT;
    TouchButtonInput* DOWN;
    TouchButtonInput* NONE;
    bool initialized;
    BasicArrayList* list;
}
- (instancetype) init;
- (void) initFields;
+ (BasicTouchInputFactory*) getInstance;
- (void) init_:(InputToGameKeyMapping*)inputToGameKeyMapping;
- (void) updateAll:(InputToGameKeyMapping*)inputToGameKeyMapping;
- (void) updateAllFromList:(BasicArrayList*)list :(InputToGameKeyMapping*)inputToGameKeyMapping;
- (BasicArrayList*) getList;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void BasicTouchInputFactory_staticInit(void);

#if __has_include("org/allbinary/util/BasicArrayList.h")
#include "org/allbinary/util/BasicArrayList.h"
#endif

#endif // ORG_ALLBINARY_INPUT_MOTION_BUTTON_BASICTOUCHINPUTFACTORY_H
