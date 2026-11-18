#ifndef ORG_ALLBINARY_GAME_CONFIGURATION_FEATURE_GAMEFEATUREFORMUTIL_H
#define ORG_ALLBINARY_GAME_CONFIGURATION_FEATURE_GAMEFEATUREFORMUTIL_H
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
// package org.allbinary.game.configuration.feature

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class GameFeatureFormUtil;
@class ChoiceGroup;
@class Item;
@class NullImage;
@class MIDPUtil;
@class GameConfigurationGauge;
@class GameConfigurationUtil;
@class CommandForm;
@class LogUtil;
@class StringMaker;
@class StringUtil;
@class ABHashtable;
@class BasicArrayList;
@class HashtableUtil;
@class Features;
@class Feature;
@class GameFeatureUtil;
#if __has_include("org/allbinary/MIDPUtil.h")
#include "org/allbinary/MIDPUtil.h"
#endif
#if __has_include("org/allbinary/logic/communication/log/LogUtil.h")
#include "org/allbinary/logic/communication/log/LogUtil.h"
#endif

@interface GameFeatureFormUtil : ABObject {
@public
    LogUtil* logUtil;
    MIDPUtil* meUtil;
}
- (instancetype) init;
- (void) initFields;
+ (GameFeatureFormUtil*) getInstance;
- (ChoiceGroup*) getChoiceGroup:(ABHashtable*)hashtable :(const char*)name :(int32_t)option;
- (void) addChoiceGroup:(CommandForm*)form :(ABHashtable*)hashtable :(int32_t)option;
- (void) setDefault:(CommandForm*)form;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void GameFeatureFormUtil_staticInit(void);

#if __has_include("javax/microedition/lcdui/ChoiceGroup.h")
#include "javax/microedition/lcdui/ChoiceGroup.h"
#endif

#endif // ORG_ALLBINARY_GAME_CONFIGURATION_FEATURE_GAMEFEATUREFORMUTIL_H
