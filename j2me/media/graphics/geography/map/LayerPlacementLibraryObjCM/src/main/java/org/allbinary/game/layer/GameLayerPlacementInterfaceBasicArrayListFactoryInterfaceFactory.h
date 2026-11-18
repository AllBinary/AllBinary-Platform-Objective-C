#ifndef ORG_ALLBINARY_GAME_LAYER_GAMELAYERPLACEMENTINTERFACEBASICARRAYLISTFACTORYINTERFACEFACTORY_H
#define ORG_ALLBINARY_GAME_LAYER_GAMELAYERPLACEMENTINTERFACEBASICARRAYLISTFACTORYINTERFACEFACTORY_H
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
// package org.allbinary.game.layer

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory;
@class LayerPlacementInterfaceBasicArrayListFactoryInterface;

@protocol GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory
- (LayerPlacementInterfaceBasicArrayListFactoryInterface*) getInstance:(int32_t)level;
- (int32_t) size;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory_staticInit(void);


#endif // ORG_ALLBINARY_GAME_LAYER_GAMELAYERPLACEMENTINTERFACEBASICARRAYLISTFACTORYINTERFACEFACTORY_H
