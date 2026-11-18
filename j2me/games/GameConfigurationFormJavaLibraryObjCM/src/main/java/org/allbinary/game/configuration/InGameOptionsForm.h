#ifndef ORG_ALLBINARY_GAME_CONFIGURATION_INGAMEOPTIONSFORM_H
#define ORG_ALLBINARY_GAME_CONFIGURATION_INGAMEOPTIONSFORM_H
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
@class InGameOptionsForm;
@class Choice;
@class Command;
@class CommandListener;
@class GameCommandsFactory;
@class GameFeatureFormUtil;
@class InGameFeatureChoiceGroups;
@class BasicColor;
@class CommandForm;
@class StringUtil;
#if __has_include("javax/microedition/lcdui/Command.h")
#include "javax/microedition/lcdui/Command.h"
#endif
#include "org/allbinary/graphics/displayable/screen/CommandForm.h"

@interface InGameOptionsForm : CommandForm {
@public
}
- (instancetype) init:(CommandListener*)commandListener :(const char*)title :(BasicColor*)backgrounBasicColor :(BasicColor*)foregroundBasicColor;
- (void) initCommands:(CommandListener*)cmdListener;
@end

extern Command* InGameOptionsForm_DISPLAY;
extern Command* InGameOptionsForm_SAVE;
extern Command* InGameOptionsForm_DEFAULT;
// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void InGameOptionsForm_staticInit(void);


#endif // ORG_ALLBINARY_GAME_CONFIGURATION_INGAMEOPTIONSFORM_H
