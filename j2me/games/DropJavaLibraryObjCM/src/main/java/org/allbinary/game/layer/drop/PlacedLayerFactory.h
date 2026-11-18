#ifndef ORG_ALLBINARY_GAME_LAYER_DROP_PLACEDLAYERFACTORY_H
#define ORG_ALLBINARY_GAME_LAYER_DROP_PLACEDLAYERFACTORY_H
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
@class PlacedLayerFactory;
@class AllBinaryLayerFactoryInterface;
@class BasicArrayList;
@class BasicArrayListD;
@class BasicArrayListUtil;
#if __has_include("org/allbinary/util/BasicArrayList.h")
#include "org/allbinary/util/BasicArrayList.h"
#endif
#if __has_include("org/allbinary/util/BasicArrayListUtil.h")
#include "org/allbinary/util/BasicArrayListUtil.h"
#endif

@interface PlacedLayerFactory : ABObject {
@public
    BasicArrayList* list;
    BasicArrayListUtil* basicArrayListUtil;
}
- (instancetype) init;
- (void) initFields;
- (void) clear;
+ (PlacedLayerFactory*) getInstance;
- (int32_t) getSize;
- (AllBinaryLayerFactoryInterface*) getRandomInstance;
- (void) add:(AllBinaryLayerFactoryInterface*)layerInterfaceFactoryInterface;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void PlacedLayerFactory_staticInit(void);

#if __has_include("org/allbinary/layer/AllBinaryLayerFactoryInterface.h")
#include "org/allbinary/layer/AllBinaryLayerFactoryInterface.h"
#endif

#endif // ORG_ALLBINARY_GAME_LAYER_DROP_PLACEDLAYERFACTORY_H
