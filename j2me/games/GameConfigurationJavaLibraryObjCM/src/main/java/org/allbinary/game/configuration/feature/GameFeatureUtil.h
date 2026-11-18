#ifndef ORG_ALLBINARY_GAME_CONFIGURATION_FEATURE_GAMEFEATUREUTIL_H
#define ORG_ALLBINARY_GAME_CONFIGURATION_FEATURE_GAMEFEATUREUTIL_H
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
@class GameFeatureUtil;
@class ChoiceGroup;
@class TsUtil;
@class LogUtil;
@class StringMaker;
@class CommonLabels;
@class ABHashtable;
@class BasicArrayList;
@class EnumerationUtil;
@class HashtableUtil;
@class Features;
@class Feature;
@class GameFeatureChoiceGroups;
#include "java/util/Enumeration.h"
#if __has_include("org/allbinary/TsUtil.h")
#include "org/allbinary/TsUtil.h"
#endif
#if __has_include("org/allbinary/logic/communication/log/LogUtil.h")
#include "org/allbinary/logic/communication/log/LogUtil.h"
#endif
#if __has_include("org/allbinary/util/EnumerationUtil.h")
#include "org/allbinary/util/EnumerationUtil.h"
#endif

@interface GameFeatureUtil : ABObject {
@public
    LogUtil* logUtil;
    TsUtil* tsUtil;
    EnumerationUtil* enumerationUtil;
    const char* ON_GAME_FEATURE_CHANGE;
    const char* GAME_FEATURE_CHANGED;
}
- (instancetype) init;
- (void) initFields;
+ (GameFeatureUtil*) getInstance;
- (void) setDefault:(ChoiceGroup*)choiceGroup;
- (void) updateMultiple:(ChoiceGroup*)choiceGroup;
- (void) updateExclusiveForChoiceGroup:(ChoiceGroup*)choiceGroup;
- (bool) isExclusive:(const char*)itemLabel;
- (void) updateExclusive:(const char*)selectedChoiceLabel;
- (void) updateExclusiveList:(Feature*)gameFeature :(BasicArrayList*)list;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void GameFeatureUtil_staticInit(void);


#endif // ORG_ALLBINARY_GAME_CONFIGURATION_FEATURE_GAMEFEATUREUTIL_H
