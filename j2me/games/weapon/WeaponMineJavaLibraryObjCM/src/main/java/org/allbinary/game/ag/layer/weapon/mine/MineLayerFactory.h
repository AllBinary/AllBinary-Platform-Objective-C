#ifndef ORG_ALLBINARY_GAME_AG_LAYER_WEAPON_MINE_MINELAYERFACTORY_H
#define ORG_ALLBINARY_GAME_AG_LAYER_WEAPON_MINE_MINELAYERFACTORY_H
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
// package org.allbinary.game.ag.layer.weapon.mine

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class MineLayerFactory;
@class AllBinaryLayer;
@class AllBinaryLayerFactoryInterface;
@class ViewPositionFactoryInterface;
@class MineLayer;
#include "org/allbinary/layer/AllBinaryLayerFactoryInterface.h"
#if __has_include("org/allbinary/view/ViewPositionFactoryInterface.h")
#include "org/allbinary/view/ViewPositionFactoryInterface.h"
#endif

@interface MineLayerFactory : ABObject <AllBinaryLayerFactoryInterface> {
@public
    ViewPositionFactoryInterface* viewPositionFactoryInterface;
}
- (instancetype) init:(ViewPositionFactoryInterface*)viewPositionFactoryInterface;
- (void) initFields;
- (AllBinaryLayer*) getInstance;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void MineLayerFactory_staticInit(void);

#if __has_include("org/allbinary/layer/AllBinaryLayer.h")
#include "org/allbinary/layer/AllBinaryLayer.h"
#endif

#endif // ORG_ALLBINARY_GAME_AG_LAYER_WEAPON_MINE_MINELAYERFACTORY_H
