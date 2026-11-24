#ifndef ORG_ALLBINARY_GAME_INPUT_KEYFACTORYINITIALIZER_H
#define ORG_ALLBINARY_GAME_INPUT_KEYFACTORYINITIALIZER_H
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
@class KeyFactoryInitializer;
@class Init;
@class LogUtil;
@class SmallIntegerSingletonFactory;
#include "org/allbinary/init/Init.h"
#if __has_include("org/allbinary/logic/communication/log/LogUtil.h")
#include "org/allbinary/logic/communication/log/LogUtil.h"
#endif

@interface KeyFactoryInitializer : Init {
@public
    LogUtil* logUtil;
}
- (instancetype) init;
- (void) initFields;
- (void) initMethod;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void KeyFactoryInitializer_staticInit(void);


#endif // ORG_ALLBINARY_GAME_INPUT_KEYFACTORYINITIALIZER_H
