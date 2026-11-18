#ifndef ORG_ALLBINARY_GAME_CONFIGURATION_GAMECONFIGURATIONCENTRAL_H
#define ORG_ALLBINARY_GAME_CONFIGURATION_GAMECONFIGURATIONCENTRAL_H
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
@class GameConfigurationCentral;
@class GameConfigurationPersistanceSingleton;
@class KeyValuePersistance;
@class NullUtil;
@class LogUtil;
@class SmallIntegerSingletonFactory;
@class StringMaker;
@class AbeClientInformationInterface;
@class CommonSeps;
@class CommonStrings;
@class ABHashtable;
@class BasicArrayList;
@class GameConfiguration;
#if __has_include("org/allbinary/logic/communication/log/LogUtil.h")
#include "org/allbinary/logic/communication/log/LogUtil.h"
#endif
#include "java/lang/Integer.h"
#if __has_include("org/allbinary/game/configuration/GameConfiguration.h")
#include "org/allbinary/game/configuration/GameConfiguration.h"
#endif

@interface GameConfigurationCentral : ABObject {
@public
    LogUtil* logUtil;
    GameConfiguration* SCALE;
    GameConfiguration* ORIENTATION;
    GameConfiguration* SENSOR_UPDATE_RATE;
    GameConfiguration* VIBRATION;
    GameConfiguration* CHALLENGE_LEVEL;
    GameConfiguration* COLLIDE_DAMAGE;
    GameConfiguration* DURABILITY_CHALLENGE_LEVEL;
    GameConfiguration* SPEED_CHALLENGE_LEVEL;
    GameConfiguration* ATTACK_CHALLENGE_LEVEL;
    GameConfiguration* CONTROL_LEVEL;
    GameConfiguration* PLAYER_INPUT_WAIT;
    GameConfiguration* SPEED;
    GameConfiguration* SOUND_VOLUME;
    GameConfiguration* MAX_GAME_OBJECTS;
    GameConfiguration* MAX_LAYERS;
    int32_t gameControlFidelity;
}
- (instancetype) init;
- (void) initFields;
+ (GameConfigurationCentral*) getInstance;
- (void) load_:(AbeClientInformationInterface*)abeClientInformation;
- (void) setGameControlFidelity:(int32_t)gameControlFidelity;
- (int32_t) getGameControlFidelity;
- (const char*) toString;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void GameConfigurationCentral_staticInit(void);


#endif // ORG_ALLBINARY_GAME_CONFIGURATION_GAMECONFIGURATIONCENTRAL_H
