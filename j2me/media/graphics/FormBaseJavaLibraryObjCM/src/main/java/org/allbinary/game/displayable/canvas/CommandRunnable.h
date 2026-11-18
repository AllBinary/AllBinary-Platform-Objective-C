#ifndef ORG_ALLBINARY_GAME_DISPLAYABLE_CANVAS_COMMANDRUNNABLE_H
#define ORG_ALLBINARY_GAME_DISPLAYABLE_CANVAS_COMMANDRUNNABLE_H
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
// package org.allbinary.game.displayable.canvas

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class CommandRunnable;
@class Command;
@class CommandListener;
@class MyCanvas;
@class LogUtil;
@class CommonStrings;
@class CommandFormInputProcessor;
#if __has_include("javax/microedition/lcdui/Command.h")
#include "javax/microedition/lcdui/Command.h"
#endif
#if __has_include("org/allbinary/logic/communication/log/LogUtil.h")
#include "org/allbinary/logic/communication/log/LogUtil.h"
#endif
#if __has_include("org/allbinary/string/CommonStrings.h")
#include "org/allbinary/string/CommonStrings.h"
#endif
#include "java/lang/Runnable.h"
#if __has_include("org/allbinary/game/displayable/canvas/CommandFormInputProcessor.h")
#include "org/allbinary/game/displayable/canvas/CommandFormInputProcessor.h"
#endif

@interface CommandRunnable : ABObject <Runnable> {
@public
    LogUtil* logUtil;
    CommonStrings* commonStrings;
    CommandFormInputProcessor* commandFormInputProcessor;
    Command* command;
}
- (instancetype) init:(CommandFormInputProcessor*)commandFormInputProcessor :(Command*)command;
- (void) initFields;
- (void) run;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void CommandRunnable_staticInit(void);


#endif // ORG_ALLBINARY_GAME_DISPLAYABLE_CANVAS_COMMANDRUNNABLE_H
