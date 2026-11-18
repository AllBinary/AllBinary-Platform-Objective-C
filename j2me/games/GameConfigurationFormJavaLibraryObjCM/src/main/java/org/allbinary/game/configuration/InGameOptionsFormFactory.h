#ifndef ORG_ALLBINARY_GAME_CONFIGURATION_INGAMEOPTIONSFORMFACTORY_H
#define ORG_ALLBINARY_GAME_CONFIGURATION_INGAMEOPTIONSFORMFACTORY_H
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
@class InGameOptionsFormFactory;
@class CommandListener;
@class BasicColor;
@class CommandForm;
@class Init;
@class NullUtil;
@class LogUtil;
@class CommonStrings;
@class InGameOptionsForm;
#if __has_include("org/allbinary/graphics/displayable/screen/CommandForm.h")
#include "org/allbinary/graphics/displayable/screen/CommandForm.h"
#endif
#if __has_include("org/allbinary/logic/communication/log/LogUtil.h")
#include "org/allbinary/logic/communication/log/LogUtil.h"
#endif

@interface InGameOptionsFormFactory : ABObject {
@public
    LogUtil* logUtil;
    CommandForm* SINGLETON;
}
- (instancetype) init;
- (void) initFields;
+ (InGameOptionsFormFactory*) getInstance;
- (void) init_:(CommandListener*)commandListener :(Init*)initInterface :(const char*)title :(BasicColor*)backgrounBasicColor :(BasicColor*)foregroundBasicColor;
- (CommandForm*) get;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void InGameOptionsFormFactory_staticInit(void);

#if __has_include("org/allbinary/graphics/displayable/screen/CommandForm.h")
#include "org/allbinary/graphics/displayable/screen/CommandForm.h"
#endif

#endif // ORG_ALLBINARY_GAME_CONFIGURATION_INGAMEOPTIONSFORMFACTORY_H
