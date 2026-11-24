#ifndef ORG_ALLBINARY_GAME_CONFIGURATION_FEATURE_FEATURES_H
#define ORG_ALLBINARY_GAME_CONFIGURATION_FEATURE_FEATURES_H
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
@class Features;
@class GameFeatureEvent;
@class GameFeatureEventHandler;
@class NullUtil;
@class LogUtil;
@class PreLogUtil;
@class StringMaker;
@class GenericOperatingSystem;
@class OperatingSystemFactory;
@class CommonLabels;
@class CommonStrings;
@class BasicArrayList;
@class BasicArrayListD;
@class Feature;
@class GameFeatureFactory;
@class InputFeatureFactory;
@class SensorFeatureFactory;
@class TouchFeatureFactory;
@class MainFeatureFactory;
#if __has_include("org/allbinary/logic/communication/log/LogUtil.h")
#include "org/allbinary/logic/communication/log/LogUtil.h"
#endif
#if __has_include("org/allbinary/string/CommonStrings.h")
#include "org/allbinary/string/CommonStrings.h"
#endif
#if __has_include("org/allbinary/util/BasicArrayList.h")
#include "org/allbinary/util/BasicArrayList.h"
#endif

@interface Features : ABObject {
@public
    LogUtil* logUtil;
    CommonStrings* commonStrings;
    BasicArrayList* list;
    BasicArrayList* defaultList;
}
- (instancetype) init;
- (void) initFields;
+ (Features*) getInstance;
- (void) addDefault:(Feature*)gameFeature;
- (void) add:(Feature*)gameFeature;
- (void) removeDefault:(Feature*)gameFeature;
- (void) remove:(Feature*)gameFeature;
- (void) initMethod;
- (bool) isDefault:(Feature*)gameFeature;
- (bool) isFeature:(Feature*)gameFeature;
- (void) toggle:(Feature*)gameFeature;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void Features_staticInit(void);


#endif // ORG_ALLBINARY_GAME_CONFIGURATION_FEATURE_FEATURES_H
