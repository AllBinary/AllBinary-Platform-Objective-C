#ifndef ORG_ALLBINARY_GAME_CONFIGURATION_INGAMEFEATURES_H
#define ORG_ALLBINARY_GAME_CONFIGURATION_INGAMEFEATURES_H
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
// package org.allbinary.game.configuration

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class InGameFeatures;
@class Features;
@class GameFeatureChoiceGroups;
@class InGameFeatureChoiceGroups;
@class SensorFeatureFactory;
@class TouchFeatureFactory;
@class Init;
@class OrientationData;
@class BasicArrayList;
@class BasicArrayListD;
#include "org/allbinary/init/Init.h"

@interface InGameFeatures : Init {
@public
}
- (instancetype) init;
- (void) init_;
- (void) addToInGameMenu;
- (bool) isAny;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void InGameFeatures_staticInit(void);


#endif // ORG_ALLBINARY_GAME_CONFIGURATION_INGAMEFEATURES_H
