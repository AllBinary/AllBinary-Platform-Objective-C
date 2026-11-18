#ifndef ORG_ALLBINARY_GAME_INIT_BASICBUILDGAMEINITIALIZERFACTORY_H
#define ORG_ALLBINARY_GAME_INIT_BASICBUILDGAMEINITIALIZERFACTORY_H
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
@class BasicBuildGameInitializerFactory;
@class GameInitializationInterfaceFactoryInterface;
@class BaseGameInitialization;
@class GameInitializationInterface;
#include "org/allbinary/game/init/GameInitializationInterfaceFactoryInterface.h"

@interface BasicBuildGameInitializerFactory : ABObject <GameInitializationInterfaceFactoryInterface> {
@public
}
- (instancetype) init;
- (GameInitializationInterface*) getInstance;
@end

extern BasicBuildGameInitializerFactory* BasicBuildGameInitializerFactory_NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY;
// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void BasicBuildGameInitializerFactory_staticInit(void);


#endif // ORG_ALLBINARY_GAME_INIT_BASICBUILDGAMEINITIALIZERFACTORY_H
