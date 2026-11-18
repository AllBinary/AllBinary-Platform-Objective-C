#ifndef ORG_ALLBINARY_GAME_INIT_BASEGAMEINITIALIZATION_H
#define ORG_ALLBINARY_GAME_INIT_BASEGAMEINITIALIZATION_H
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
@class BaseGameInitialization;
@class CommandListener;
@class FeaturedAnimationInterfaceFactoryInterfaceFactory;
@class GameConfigurationCentral;
@class ChangedGameFeatureListener;
@class InputFeatureFactory;
@class MainFeatureFactory;
@class PlatformInputMappingFactory;
@class GameKeyEventFactory;
@class FeaturedResourceRelativeRelationshipFactory;
@class ResourceInitialization;
@class ResourceLoadingLevelFactory;
@class ProgressCanvas;
@class ProgressCanvasFactory;
@class GameFeatureImageCacheFactory;
@class CompleteMotionGestureInputToGameMotionGestureInput;
@class BasicTouchInputFactory;
@class CancelTouchButtonInputFactory;
@class AbeClientInformationInterface;
@class GameInitializationInterface;
#if __has_include("org/allbinary/game/resource/ResourceInitialization.h")
#include "org/allbinary/game/resource/ResourceInitialization.h"
#endif
#include "org/allbinary/game/init/GameInitializationInterface.h"

@interface BaseGameInitialization : ABObject <GameInitializationInterface> {
@public
    ResourceInitialization** resourceInitializationArray;
    int32_t portion;
    bool initialized;
    int32_t EARLY_RESOURCES;
    int32_t GAME_RESOURCES;
    int32_t EARLY_CHANGABLE_RESOURCES;
    int32_t GAME_CHANGABLE_RESOURCES;
    bool gameInitialized;
    bool allLoaded;
}
- (instancetype) init:(ResourceInitialization**)resourceInitializationArray :(int32_t)portion;
- (void) initFields;
- (void) initKey:(int32_t)portion;
- (void) initKeyMapping:(AbeClientInformationInterface*)abeClientInformation :(int32_t)portion;
- (void) init_:(AbeClientInformationInterface*)abeClientInformation :(CommandListener*)commandListener :(int32_t)level;
- (void) resourceInitialization:(int32_t)level;
- (bool) resourceAnimationChange;
- (void) clearResources;
- (void) setGameInitialized:(bool)gameInitialized;
- (bool) isGameInitialized;
- (int32_t) getPortion;
- (void) setInitialized:(bool)initialized;
- (bool) isInitialized;
@end

extern BaseGameInitialization* BaseGameInitialization_NULL_BASE_GAME_INITIALIZATION;
// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void BaseGameInitialization_staticInit(void);


#endif // ORG_ALLBINARY_GAME_INIT_BASEGAMEINITIALIZATION_H
