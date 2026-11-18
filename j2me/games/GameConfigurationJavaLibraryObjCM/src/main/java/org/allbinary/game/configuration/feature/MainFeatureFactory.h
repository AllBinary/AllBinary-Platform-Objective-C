#ifndef ORG_ALLBINARY_GAME_CONFIGURATION_FEATURE_MAINFEATUREFACTORY_H
#define ORG_ALLBINARY_GAME_CONFIGURATION_FEATURE_MAINFEATUREFACTORY_H
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
@class MainFeatureFactory;
@class Feature;
#if __has_include("org/allbinary/game/configuration/feature/Feature.h")
#include "org/allbinary/game/configuration/feature/Feature.h"
#endif

@interface MainFeatureFactory : ABObject {
@public
    Feature* FULL_SCREEN;
    Feature* TITLE_BAR;
    Feature* STATIC;
    Feature* LOAD_ONDEMAND;
    Feature* LOAD_ALL;
}
- (instancetype) init;
- (void) initFields;
+ (MainFeatureFactory*) getInstance;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void MainFeatureFactory_staticInit(void);


#endif // ORG_ALLBINARY_GAME_CONFIGURATION_FEATURE_MAINFEATUREFACTORY_H
