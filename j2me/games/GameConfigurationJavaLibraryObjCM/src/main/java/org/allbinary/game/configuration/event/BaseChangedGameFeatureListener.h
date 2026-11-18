#ifndef ORG_ALLBINARY_GAME_CONFIGURATION_EVENT_BASECHANGEDGAMEFEATURELISTENER_H
#define ORG_ALLBINARY_GAME_CONFIGURATION_EVENT_BASECHANGEDGAMEFEATURELISTENER_H
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
// package org.allbinary.game.configuration.event

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class BaseChangedGameFeatureListener;
@class Feature;
@class Features;
@class GameFeatureUtil;
@class ForcedLogUtil;
@class LogUtil;
@class StringMaker;
@class StringUtil;
@class AllBinaryEventObject;
@class CommonStrings;
@class BasicArrayList;
@class BasicArrayListD;
@class GameFeatureListenerInterface;
@class GameFeatureEvent;
#if __has_include("org/allbinary/game/configuration/feature/GameFeatureUtil.h")
#include "org/allbinary/game/configuration/feature/GameFeatureUtil.h"
#endif
#if __has_include("org/allbinary/logic/communication/log/LogUtil.h")
#include "org/allbinary/logic/communication/log/LogUtil.h"
#endif
#if __has_include("org/allbinary/util/BasicArrayList.h")
#include "org/allbinary/util/BasicArrayList.h"
#endif
#include "org/allbinary/game/configuration/event/GameFeatureListenerInterface.h"

@interface BaseChangedGameFeatureListener : ABObject <GameFeatureListenerInterface> {
@public
    LogUtil* logUtil;
    GameFeatureUtil* gameFeatureUtil;
    BasicArrayList* list;
    bool changed;
}
- (instancetype) init;
- (void) initFields;
- (void) onEvent:(AllBinaryEventObject*)eventObject;
- (void) onGameFeatureChange:(GameFeatureEvent*)gameFeatureEvent;
- (void) add:(Feature*)gameFeature;
- (void) remove:(Feature*)gameFeature;
- (void) setChanged:(bool)initialized;
- (bool) isChangedFeature:(Feature*)gameFeature;
- (bool) isChanged;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void BaseChangedGameFeatureListener_staticInit(void);


#endif // ORG_ALLBINARY_GAME_CONFIGURATION_EVENT_BASECHANGEDGAMEFEATURELISTENER_H
