#ifndef ORG_ALLBINARY_GRAPHICS_DISPLAYABLE_SCREEN_COMMANDFORM_H
#define ORG_ALLBINARY_GRAPHICS_DISPLAYABLE_SCREEN_COMMANDFORM_H
/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2002 AllBinary 
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
// package org.allbinary.graphics.displayable.screen

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class CommandForm;
@class Command;
@class CommandListener;
@class Form;
@class NullCommandListener;
@class Processor;
@class MenuListener;
@class BasicColor;
@class BasicColorFactory;
@class MyCommandInterface;
@class NullUtil;
@class LogUtil;
@class StringUtil;
@class CommonStrings;
@class StdUtil;
@class ABStack;
@class ScreenRepaintProcessorFactory;
#include "javax/microedition/lcdui/Form.h"
#if __has_include("org/allbinary/canvas/Processor.h")
#include "org/allbinary/canvas/Processor.h"
#endif
#include "org/allbinary/game/displayable/canvas/MenuListener.h"
#include "org/allbinary/graphics/displayable/command/MyCommandInterface.h"
#if __has_include("org/allbinary/logic/communication/log/LogUtil.h")
#include "org/allbinary/logic/communication/log/LogUtil.h"
#endif
#if __has_include("org/allbinary/string/CommonStrings.h")
#include "org/allbinary/string/CommonStrings.h"
#endif
#if __has_include("org/allbinary/util/ABStack.h")
#include "org/allbinary/util/ABStack.h"
#endif

@interface CommandForm : Form <MyCommandInterface, MenuListener> {
@public
    LogUtil* logUtil;
    CommonStrings* commonStrings;
    Processor* repaintProcessor;
    ABStack* commandStack;
}
- (instancetype) init:(CommandListener*)commandListener :(const char*)formTitle :(BasicColor*)backgrounBasicColor :(BasicColor*)foregroundBasicColor;
- (void) initFields;
+ (CommandForm*) getNullCommandForm;
- (void) initCommands:(CommandListener*)cmdListener;
- (void) open;
- (void) close;
- (void) update;
- (int32_t) getSourceId;
- (void) addCommand:(Command*)command;
- (void) removeAllCommands;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void CommandForm_staticInit(void);


#endif // ORG_ALLBINARY_GRAPHICS_DISPLAYABLE_SCREEN_COMMANDFORM_H
