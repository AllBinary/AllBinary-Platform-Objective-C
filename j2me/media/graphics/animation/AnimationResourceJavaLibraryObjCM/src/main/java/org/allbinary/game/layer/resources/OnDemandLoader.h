#ifndef ORG_ALLBINARY_GAME_LAYER_RESOURCES_ONDEMANDLOADER_H
#define ORG_ALLBINARY_GAME_LAYER_RESOURCES_ONDEMANDLOADER_H
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
// package org.allbinary.game.layer.resources

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class OnDemandLoader;
@class BaseResourceAnimationInterfaceFactoryInterfaceFactory;
@class Features;
@class MainFeatureFactory;
@class GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory;
@class LayerPlacementInterfaceBasicArrayListFactoryInterface;
@class ResourceLoadingLevelFactory;
@class ImageCache;
@class PreLogUtil;
@class StringMaker;
@class CommonStrings;
@class OnDemandResourcesFactory;
@class OnDemandResources;
#if __has_include("org/allbinary/animation/resource/BaseResourceAnimationInterfaceFactoryInterfaceFactory.h")
#include "org/allbinary/animation/resource/BaseResourceAnimationInterfaceFactoryInterfaceFactory.h"
#endif
#if __has_include("org/allbinary/game/layer/GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory.h")
#include "org/allbinary/game/layer/GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory.h"
#endif
#if __has_include("org/allbinary/game/layer/resources/OnDemandResourcesFactory.h")
#include "org/allbinary/game/layer/resources/OnDemandResourcesFactory.h"
#endif

@interface OnDemandLoader : ABObject {
@public
    OnDemandResourcesFactory* onDemandResourcesFactory;
    GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory* gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory;
    BaseResourceAnimationInterfaceFactoryInterfaceFactory* resourceAnimationInterfaceFactoryInterfaceFactory;
}
- (instancetype) init:(OnDemandResourcesFactory*)onDemandResourcesFactory :(GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory*)gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory :(BaseResourceAnimationInterfaceFactoryInterfaceFactory*)resourceAnimationInterfaceFactoryInterfaceFactory;
- (void) initFields;
- (void) initMethod:(ImageCache*)imageCache :(int32_t)level :(const char*)loadingString;
- (void) initAll:(ImageCache*)imageCache :(const char*)loadingString;
- (void) initLevel:(LayerPlacementInterfaceBasicArrayListFactoryInterface*)layerPlacementInterfaceBasicArrayListFactoryInterface :(ImageCache*)imageCache :(int32_t)level :(const char*)loadingString;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void OnDemandLoader_staticInit(void);


#endif // ORG_ALLBINARY_GAME_LAYER_RESOURCES_ONDEMANDLOADER_H
