#ifndef ORG_ALLBINARY_GAME_CONFIGURATION_FEATURE_SENSORFEATUREFACTORY_H
#define ORG_ALLBINARY_GAME_CONFIGURATION_FEATURE_SENSORFEATUREFACTORY_H
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
@class SensorFeatureFactory;
@class SensorFeature;
#if __has_include("org/allbinary/game/configuration/feature/SensorFeature.h")
#include "org/allbinary/game/configuration/feature/SensorFeature.h"
#endif

@interface SensorFeatureFactory : ABObject {
@public
    SensorFeature* NO_ORIENTATION;
    SensorFeature* ORIENTATION_SENSORS;
    SensorFeature* SIMULATED_ORIENTATION_SENSORS;
    SensorFeature* YAW;
    SensorFeature* YAW_MINUS_RIGHT_PLUS_LEFT;
    SensorFeature* YAW_MINUS_LEFT_PLUS_RIGHT;
    SensorFeature* PITCH;
    SensorFeature* ROLL;
}
- (instancetype) init;
- (void) initFields;
+ (SensorFeatureFactory*) getInstance;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void SensorFeatureFactory_staticInit(void);


#endif // ORG_ALLBINARY_GAME_CONFIGURATION_FEATURE_SENSORFEATUREFACTORY_H
