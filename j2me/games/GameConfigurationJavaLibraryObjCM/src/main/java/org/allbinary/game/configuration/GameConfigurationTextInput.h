#ifndef ORG_ALLBINARY_GAME_CONFIGURATION_GAMECONFIGURATIONTEXTINPUT_H
#define ORG_ALLBINARY_GAME_CONFIGURATION_GAMECONFIGURATIONTEXTINPUT_H
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
@class GameConfigurationTextInput;
@class TextField;
@class StdUtil;
@class StringUtil;
@class ABHashtable;
#if __has_include("org/allbinary/util/ABHashtable.h")
#include "org/allbinary/util/ABHashtable.h"
#endif

@interface GameConfigurationTextInput : ABObject {
@public
    const char* label;
    const char* text;
}
- (instancetype) init:(const char*)label :(const char*)text;
- (void) initFields;
+ (void) update:(TextField*)textField;
- (void) setText:(const char*)text;
- (const char*) getText;
- (void) setLabel:(const char*)label;
- (const char*) getLabel;
+ (ABHashtable*) getHashtable;
@end

extern GameConfigurationTextInput* GameConfigurationTextInput_SIMULATOR_IP;
extern GameConfigurationTextInput* GameConfigurationTextInput_SIMULATOR_PORT;
// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void GameConfigurationTextInput_staticInit(void);

#if __has_include("org/allbinary/util/ABHashtable.h")
#include "org/allbinary/util/ABHashtable.h"
#endif

#endif // ORG_ALLBINARY_GAME_CONFIGURATION_GAMECONFIGURATIONTEXTINPUT_H
