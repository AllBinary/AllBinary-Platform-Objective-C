#ifndef ORG_ALLBINARY_GAME_INPUT_INPUTFACTORY_H
#define ORG_ALLBINARY_GAME_INPUT_INPUTFACTORY_H
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
// package org.allbinary.game.input

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class InputFactory;
@class NullUtil;
@class LogUtil;
@class SmallIntegerSingletonFactory;
@class StringMaker;
@class CommonStrings;
@class Input;
#if __has_include("org/allbinary/logic/communication/log/LogUtil.h")
#include "org/allbinary/logic/communication/log/LogUtil.h"
#endif
#if __has_include("org/allbinary/string/CommonStrings.h")
#include "org/allbinary/string/CommonStrings.h"
#endif
#if __has_include("org/allbinary/game/input/Input.h")
#include "org/allbinary/game/input/Input.h"
#endif

@interface InputFactory : ABObject {
@public
    LogUtil* logUtil;
    CommonStrings* commonStrings;
    const char* KEY_CODE_LABEL;
    const char* DEVICE_ID_LABEL;
    int32_t MAX;
    Input** inputIntegerArray;
    Input* NO_INPUT;
}
- (instancetype) init;
- (void) initFields;
+ (InputFactory*) getInstance;
- (void) add:(int32_t)id_ :(Input*)input;
- (Input*) getInstanceById:(int32_t)id_;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void InputFactory_staticInit(void);


#endif // ORG_ALLBINARY_GAME_INPUT_INPUTFACTORY_H
