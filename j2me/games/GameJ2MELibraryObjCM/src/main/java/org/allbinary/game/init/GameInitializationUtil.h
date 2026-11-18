#ifndef ORG_ALLBINARY_GAME_INIT_GAMEINITIALIZATIONUTIL_H
#define ORG_ALLBINARY_GAME_INIT_GAMEINITIALIZATIONUTIL_H
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
// package org.allbinary.game.init

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class GameInitializationUtil;
@class ChangedGameFeatureListener;
@class GameInitializedEvent;
@class GameInitializedEventHandler;
@class Features;
@class MainFeatureFactory;
@class ResourceLoadingLevelFactory;
@class MyCanvas;
@class AbeClientInformationInterface;
@class GameInitializationInterface;
@class BasicBuildGameInitializerFactory;
#if __has_include("org/allbinary/game/configuration/event/GameInitializedEvent.h")
#include "org/allbinary/game/configuration/event/GameInitializedEvent.h"
#endif

@interface GameInitializationUtil : ABObject {
@public
    GameInitializedEvent* EVENT;
}
- (instancetype) init;
- (void) initFields;
- (void) initDemo:(AbeClientInformationInterface*)abeClientInformation :(MyCanvas*)canvas :(BasicBuildGameInitializerFactory*)gameInitializationInterfaceFactoryInterface;
- (void) initGame:(AbeClientInformationInterface*)abeClientInformation :(MyCanvas*)canvas :(BasicBuildGameInitializerFactory*)gameInitializationInterfaceFactoryInterface;
+ (GameInitializationUtil*) getInstance;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void GameInitializationUtil_staticInit(void);


#endif // ORG_ALLBINARY_GAME_INIT_GAMEINITIALIZATIONUTIL_H
