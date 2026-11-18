#ifndef ORG_ALLBINARY_GAME_CONFIGURATION_GAMECONFIGURATION_H
#define ORG_ALLBINARY_GAME_CONFIGURATION_GAMECONFIGURATION_H
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
@class GameConfiguration;
@class GameFeatureEvent;
@class GameFeatureEventHandler;
@class BooleanFactory;
@class SmallIntegerSingletonFactory;
@class StringMaker;
@class StringUtil;
@class GameConfigurationSingleton;
#include "java/lang/Integer.h"
#include "java/lang/Boolean.h"

@interface GameConfiguration : ABObject {
@public
    const char* name;
    int32_t defaultValue;
    int32_t value;
    int32_t minValue;
    int32_t maxValue;
    bool modifiable;
}
- (instancetype) init:(const char*)name :(int32_t)defaultValue :(int32_t)minValue :(int32_t)maxValue;
- (void) initFields;
- (void) setValue:(int32_t)value;
- (int32_t) getValue;
- (void) setMaxValue:(int32_t)maxValue;
- (int32_t) getMaxValue;
- (void) setMinValue:(int32_t)minValue;
- (int32_t) getMinValue;
- (void) setName:(const char*)name;
- (const char*) getName;
- (void) setDefaultValue:(int32_t)defaultValue;
- (int32_t) getDefaultValue;
- (void) setDefault;
- (const char*) toString;
- (void) setModifiable:(bool)modifiable;
- (bool) isModifiable;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void GameConfiguration_staticInit(void);


#endif // ORG_ALLBINARY_GAME_CONFIGURATION_GAMECONFIGURATION_H
