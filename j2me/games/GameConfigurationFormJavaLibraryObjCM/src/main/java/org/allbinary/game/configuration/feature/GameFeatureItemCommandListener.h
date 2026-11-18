#ifndef ORG_ALLBINARY_GAME_CONFIGURATION_FEATURE_GAMEFEATUREITEMCOMMANDLISTENER_H
#define ORG_ALLBINARY_GAME_CONFIGURATION_FEATURE_GAMEFEATUREITEMCOMMANDLISTENER_H
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
@class GameFeatureItemCommandListener;
@class Command;
@class Item;
@class ItemCommandListener;
@class GameConfigurationGauge;
@class GameConfigurationUtil;
@class GameOptionsForm;
@class LogUtil;
@class StringMaker;
@class MidletStrings;
@class CommonLabels;
@class CommonStrings;
#include "javax/microedition/lcdui/ItemCommandListener.h"
#if __has_include("org/allbinary/game/configuration/GameOptionsForm.h")
#include "org/allbinary/game/configuration/GameOptionsForm.h"
#endif
#if __has_include("org/allbinary/logic/communication/log/LogUtil.h")
#include "org/allbinary/logic/communication/log/LogUtil.h"
#endif

@interface GameFeatureItemCommandListener : ABObject <ItemCommandListener> {
@public
    LogUtil* logUtil;
    GameOptionsForm* gameOptionsForm;
}
- (instancetype) init:(GameOptionsForm*)gameOptionsForm;
- (void) initFields;
- (void) commandAction:(Command*)command :(Item*)item;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void GameFeatureItemCommandListener_staticInit(void);


#endif // ORG_ALLBINARY_GAME_CONFIGURATION_FEATURE_GAMEFEATUREITEMCOMMANDLISTENER_H
