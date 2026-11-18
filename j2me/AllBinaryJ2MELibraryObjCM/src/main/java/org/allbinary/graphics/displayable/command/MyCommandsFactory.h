#ifndef ORG_ALLBINARY_GRAPHICS_DISPLAYABLE_COMMAND_MYCOMMANDSFACTORY_H
#define ORG_ALLBINARY_GRAPHICS_DISPLAYABLE_COMMAND_MYCOMMANDSFACTORY_H
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
// package org.allbinary.graphics.displayable.command

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class MyCommandsFactory;
@class Command;
@class StringUtil;
#if __has_include("javax/microedition/lcdui/Command.h")
#include "javax/microedition/lcdui/Command.h"
#endif

@interface MyCommandsFactory : ABObject {
@public
    Command* NO_COMMAND;
    Command* GAUGE_CHANGE;
    Command* SET_DISPLAYABLE;
    Command* PAUSE_COMMAND;
    Command* RESUME_COMMAND;
}
- (instancetype) init;
- (void) initFields;
+ (MyCommandsFactory*) getInstance;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void MyCommandsFactory_staticInit(void);


#endif // ORG_ALLBINARY_GRAPHICS_DISPLAYABLE_COMMAND_MYCOMMANDSFACTORY_H
