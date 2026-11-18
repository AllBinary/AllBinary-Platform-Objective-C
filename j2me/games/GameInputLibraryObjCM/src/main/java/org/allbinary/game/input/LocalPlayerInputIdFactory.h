#ifndef ORG_ALLBINARY_GAME_INPUT_LOCALPLAYERINPUTIDFACTORY_H
#define ORG_ALLBINARY_GAME_INPUT_LOCALPLAYERINPUTIDFACTORY_H
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
// package org.allbinary.game.input

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class LocalPlayerInputIdFactory;
@class AnalogLocationInputFactory;
@class LogUtil;
@class StringMaker;
#if __has_include("org/allbinary/logic/communication/log/LogUtil.h")
#include "org/allbinary/logic/communication/log/LogUtil.h"
#endif

@interface LocalPlayerInputIdFactory : ABObject {
@public
    LogUtil* logUtil;
    int32_t MAX_NUMBER_OF_PLAYERS;
    int32_t MAX_FAST_DEVICEID;
    int32_t* deviceIdToplayerId;
    int32_t* playerIdToDeviceId;
    bool* playersInPlay;
    int32_t totalDevicesMapped;
}
- (instancetype) init;
- (void) initFields;
+ (LocalPlayerInputIdFactory*) getInstance;
- (int32_t) getDeviceId:(int32_t)playerInputId;
- (int32_t) getPlayerForDevice:(int32_t)deviceId;
- (int32_t) getTotalDevicesInPlay;
- (bool) isPlayerInPlay:(int32_t)playerInputId;
- (void) setPlayerInPlay:(int32_t)playerInputId;
- (void) setPlayerOutOfPlay:(int32_t)playerInputId;
- (bool*) getPlayersInPlay;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void LocalPlayerInputIdFactory_staticInit(void);


#endif // ORG_ALLBINARY_GAME_INPUT_LOCALPLAYERINPUTIDFACTORY_H
