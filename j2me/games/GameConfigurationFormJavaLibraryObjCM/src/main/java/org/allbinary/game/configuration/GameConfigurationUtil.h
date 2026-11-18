#ifndef ORG_ALLBINARY_GAME_CONFIGURATION_GAMECONFIGURATIONUTIL_H
#define ORG_ALLBINARY_GAME_CONFIGURATION_GAMECONFIGURATIONUTIL_H
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
@class GameConfigurationUtil;
@class Item;
@class LogUtil;
@class SmallIntegerSingletonFactory;
@class StringMaker;
@class CommonStrings;
@class GameConfigurationSingleton;
@class GameConfiguration;
@class GameOptionsForm;
@class GameConfigurationGauge;
@class GameConfigurationCentral;
#if __has_include("org/allbinary/logic/communication/log/LogUtil.h")
#include "org/allbinary/logic/communication/log/LogUtil.h"
#endif
#if __has_include("org/allbinary/string/CommonStrings.h")
#include "org/allbinary/string/CommonStrings.h"
#endif
#include "java/lang/Integer.h"

@interface GameConfigurationUtil : ABObject {
@public
    LogUtil* logUtil;
    CommonStrings* commonStrings;
    const char* GAUGE_UPDATE;
    const char* FROM;
    const char* TO;
    int32_t COMPETITION_VALUE;
}
- (instancetype) init;
- (void) initFields;
+ (GameConfigurationUtil*) getInstance;
- (void) change:(GameOptionsForm*)gameOptionsForm :(GameConfigurationGauge*)gauge;
- (void) update:(GameConfigurationGauge*)gauge;
- (void) setDefault:(GameConfigurationGauge*)gauge;
- (void) updateChallange:(GameOptionsForm*)gameOptionsForm :(GameConfiguration*)gameConfiguration;
- (void) updateCompetitionValue;
- (int32_t) getCompetitionValue;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void GameConfigurationUtil_staticInit(void);


#endif // ORG_ALLBINARY_GAME_CONFIGURATION_GAMECONFIGURATIONUTIL_H
