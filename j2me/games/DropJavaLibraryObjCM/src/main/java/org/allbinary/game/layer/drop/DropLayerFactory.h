#ifndef ORG_ALLBINARY_GAME_LAYER_DROP_DROPLAYERFACTORY_H
#define ORG_ALLBINARY_GAME_LAYER_DROP_DROPLAYERFACTORY_H
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
// package org.allbinary.game.layer.drop

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class DropLayerFactory;
@class PickedUpLayerInterfaceFactoryInterface;
@class BasicArrayList;
@class BasicArrayListD;
@class BasicArrayListUtil;
#if __has_include("org/allbinary/util/BasicArrayList.h")
#include "org/allbinary/util/BasicArrayList.h"
#endif
#if __has_include("org/allbinary/util/BasicArrayListUtil.h")
#include "org/allbinary/util/BasicArrayListUtil.h"
#endif

@interface DropLayerFactory : ABObject {
@public
    BasicArrayList* list;
    BasicArrayListUtil* basicArrayListUtil;
}
- (instancetype) init;
- (void) initFields;
- (void) clear;
+ (DropLayerFactory*) getInstance;
- (int32_t) getSize;
- (PickedUpLayerInterfaceFactoryInterface*) getRandomInstance;
- (void) add:(PickedUpLayerInterfaceFactoryInterface*)layerInterfaceFactoryInterface;
- (BasicArrayList*) getList;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void DropLayerFactory_staticInit(void);

#if __has_include("org/allbinary/game/layer/pickup/PickedUpLayerInterfaceFactoryInterface.h")
#include "org/allbinary/game/layer/pickup/PickedUpLayerInterfaceFactoryInterface.h"
#endif
#if __has_include("org/allbinary/util/BasicArrayList.h")
#include "org/allbinary/util/BasicArrayList.h"
#endif

#endif // ORG_ALLBINARY_GAME_LAYER_DROP_DROPLAYERFACTORY_H
