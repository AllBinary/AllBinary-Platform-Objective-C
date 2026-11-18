#ifndef ORG_ALLBINARY_GAME_CONFIGURATION_GAMEOPTIONSFORM_H
#define ORG_ALLBINARY_GAME_CONFIGURATION_GAMEOPTIONSFORM_H
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
@class GameOptionsForm;
@class Choice;
@class Command;
@class CommandListener;
@class Item;
@class TextField;
@class MIDPUtil;
@class GameCommandsFactory;
@class GameFeatureChoiceGroups;
@class GameFeatureFormUtil;
@class GameFeatureItemCommandListener;
@class GameFeatureItemStateListener;
@class SensorFeatureFactory;
@class GameConfigurationPersistanceSingleton;
@class KeyValuePersistance;
@class BasicColor;
@class MyCommandsFactory;
@class CommandForm;
@class OrientationData;
@class StringMaker;
@class AbeClientInformationInterface;
@class BasicArrayList;
@class HashtableUtil;
@class StdUtil;
@class ABHashtable;
@class GameConfigurationTextInput;
@class GameConfigurationSingleton;
@class GameConfiguration;
@class GameConfigurationGauge;
@class GameConfigurationUtil;
@class GameConfigurationCentral;
#if __has_include("org/allbinary/MIDPUtil.h")
#include "org/allbinary/MIDPUtil.h"
#endif
#include "org/allbinary/graphics/displayable/screen/CommandForm.h"
#include "java/lang/Integer.h"

@interface GameOptionsForm : CommandForm {
@public
    MIDPUtil* meUtil;
}
- (instancetype) init:(CommandListener*)commandListener :(const char*)title :(BasicColor*)backgrounBasicColor :(BasicColor*)foregroundBasicColor;
- (void) initFields;
- (void) closeClientInformation:(AbeClientInformationInterface*)abeClientInformation;
- (void) addTextFieldsIfSimulated;
- (void) addTextFields;
- (void) addConfiguration;
- (void) initCommands:(CommandListener*)cmdListener;
- (void) save:(AbeClientInformationInterface*)abeClientInformation;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void GameOptionsForm_staticInit(void);


#endif // ORG_ALLBINARY_GAME_CONFIGURATION_GAMEOPTIONSFORM_H
