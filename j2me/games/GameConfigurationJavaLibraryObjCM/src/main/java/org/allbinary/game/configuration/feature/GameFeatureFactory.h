#ifndef ORG_ALLBINARY_GAME_CONFIGURATION_FEATURE_GAMEFEATUREFACTORY_H
#define ORG_ALLBINARY_GAME_CONFIGURATION_FEATURE_GAMEFEATUREFACTORY_H
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
// package org.allbinary.game.configuration.feature

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class GameFeatureFactory;
@class GameFeature;
@class Feature;
#if __has_include("org/allbinary/game/configuration/feature/GameFeature.h")
#include "org/allbinary/game/configuration/feature/GameFeature.h"
#endif
#if __has_include("org/allbinary/game/configuration/feature/Feature.h")
#include "org/allbinary/game/configuration/feature/Feature.h"
#endif

@interface GameFeatureFactory : ABObject {
@public
    GameFeature* SOUND;
    GameFeature* MUSIC;
    Feature* SCREEN_SHAKE;
    Feature* POST_IMAGE_LOADING_MODIFICATION;
    GameFeature* HEALTH_BARS;
    GameFeature* DAMAGE_FLOATERS;
    GameFeature* GAME_INPUT_LAYER_PROCESSOR;
    GameFeature* ARTIFICIAL_INTELLEGENCE_PROCESSOR;
    GameFeature* COLLIDABLE_INTERFACE_LAYER_PROCESSOR;
    GameFeature* TICKABLE_LAYER_PROCESSOR;
    GameFeature* CHEATING;
    GameFeature* DROPPED_ITEMS;
    GameFeature* DROPPED_ITEMS_FROM_DEATH;
    GameFeature* TEST_DESTROYED_LAYER_PROCESSOR;
    GameFeature* COLLISIONS_WITH_SOURCE;
    GameFeature* COLLISIONS_FORCED_TWO_DIMENSIONAL;
}
- (instancetype) init;
- (void) initFields;
+ (GameFeatureFactory*) getInstance;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void GameFeatureFactory_staticInit(void);


#endif // ORG_ALLBINARY_GAME_CONFIGURATION_FEATURE_GAMEFEATUREFACTORY_H
