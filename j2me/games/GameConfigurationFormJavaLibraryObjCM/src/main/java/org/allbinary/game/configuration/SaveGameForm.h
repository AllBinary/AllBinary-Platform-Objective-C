#ifndef ORG_ALLBINARY_GAME_CONFIGURATION_SAVEGAMEFORM_H
#define ORG_ALLBINARY_GAME_CONFIGURATION_SAVEGAMEFORM_H
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
@class SaveGameForm;
@class CommandListener;
@class TextField;
@class MIDPUtil;
@class GameCommandsFactory;
@class BasicColor;
@class CommandForm;
@class ABSystemWrapper;
#if __has_include("org/allbinary/MIDPUtil.h")
#include "org/allbinary/MIDPUtil.h"
#endif
#include "org/allbinary/graphics/displayable/screen/CommandForm.h"
#include "java/lang/Long.h"

@interface SaveGameForm : CommandForm {
@public
    MIDPUtil* meUtil;
}
- (instancetype) init:(CommandListener*)commandListener :(const char*)title :(BasicColor*)backgrounBasicColor :(BasicColor*)foregroundBasicColor;
- (void) initFields;
+ (CommandForm*) createForm:(CommandListener*)commandListener :(const char*)title :(BasicColor*)backgrounBasicColor :(BasicColor*)foregroundBasicColor;
+ (CommandForm*) getInstance;
- (void) initCommands:(CommandListener*)cmdListener;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void SaveGameForm_staticInit(void);

#if __has_include("org/allbinary/graphics/displayable/screen/CommandForm.h")
#include "org/allbinary/graphics/displayable/screen/CommandForm.h"
#endif

#endif // ORG_ALLBINARY_GAME_CONFIGURATION_SAVEGAMEFORM_H
