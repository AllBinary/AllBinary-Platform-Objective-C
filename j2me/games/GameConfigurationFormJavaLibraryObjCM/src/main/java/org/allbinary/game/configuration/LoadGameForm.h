#ifndef ORG_ALLBINARY_GAME_CONFIGURATION_LOADGAMEFORM_H
#define ORG_ALLBINARY_GAME_CONFIGURATION_LOADGAMEFORM_H
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
@class LoadGameForm;
@class Choice;
@class ChoiceGroup;
@class CommandListener;
@class Item;
@class NullImage;
@class StringItem;
@class MIDPUtil;
@class GameCommandsFactory;
@class GamePersistanceSingleton;
@class BasicColor;
@class CommandForm;
@class StringMaker;
@class StringUtil;
@class BasicArrayList;
#if __has_include("org/allbinary/MIDPUtil.h")
#include "org/allbinary/MIDPUtil.h"
#endif
#include "org/allbinary/graphics/displayable/screen/CommandForm.h"
#include "java/lang/Integer.h"

@interface LoadGameForm : CommandForm {
@public
    MIDPUtil* meUtil;
    bool areChoices;
}
- (instancetype) init:(CommandListener*)commandListener :(const char*)title :(BasicColor*)backgrounBasicColor :(BasicColor*)foregroundBasicColor;
- (void) initFields;
- (void) initCommands:(CommandListener*)cmdListener;
- (void) update;
- (void) add:(BasicArrayList*)list :(const char*)name :(int32_t)option;
- (ChoiceGroup*) getChoiceGroup:(BasicArrayList*)list :(const char*)name :(int32_t)option;
- (int32_t) getSelectedId;
- (int32_t) getSelectedText;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void LoadGameForm_staticInit(void);


#endif // ORG_ALLBINARY_GAME_CONFIGURATION_LOADGAMEFORM_H
