#ifndef ORG_ALLBINARY_GAME_CONFIGURATION_GAMEOPTIONSFORMFACTORY_H
#define ORG_ALLBINARY_GAME_CONFIGURATION_GAMEOPTIONSFORMFACTORY_H
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
// package org.allbinary.game.configuration

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class GameOptionsFormFactory;
@class CommandListener;
@class BasicColor;
@class CommandForm;
@class LogUtil;
@class CommonStrings;
@class GameOptionsForm;
#if __has_include("org/allbinary/logic/communication/log/LogUtil.h")
#include "org/allbinary/logic/communication/log/LogUtil.h"
#endif

@interface GameOptionsFormFactory : ABObject {
@public
    LogUtil* logUtil;
}
- (instancetype) init;
- (void) initFields;
+ (GameOptionsFormFactory*) getInstance;
- (CommandForm*) init_:(CommandListener*)commandListener :(const char*)title :(BasicColor*)backgrounBasicColor :(BasicColor*)foregroundBasicColor;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void GameOptionsFormFactory_staticInit(void);

#if __has_include("org/allbinary/graphics/displayable/screen/CommandForm.h")
#include "org/allbinary/graphics/displayable/screen/CommandForm.h"
#endif

#endif // ORG_ALLBINARY_GAME_CONFIGURATION_GAMEOPTIONSFORMFACTORY_H
