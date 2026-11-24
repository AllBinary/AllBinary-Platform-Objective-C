#ifndef ORG_ALLBINARY_BUSINESS_ADVERTISEMENT_GAMEADSTATEBASE_H
#define ORG_ALLBINARY_BUSINESS_ADVERTISEMENT_GAMEADSTATEBASE_H
/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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
// package org.allbinary.business.advertisement

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class GameAdStateBase;
@class GameType;
@class GameState;
@class ForcedLogUtil;
@class AllBinaryEventObject;
@class EventStrings;
@class AdConfiguration;
@class Advertisements;
#if __has_include("org/allbinary/business/advertisement/AdConfiguration.h")
#include "org/allbinary/business/advertisement/AdConfiguration.h"
#endif
#if __has_include("org/allbinary/business/advertisement/Advertisements.h")
#include "org/allbinary/business/advertisement/Advertisements.h"
#endif

@interface GameAdStateBase : ABObject {
@public
    AdConfiguration* adConfigurationP;
    Advertisements* advertisementsP;
    bool okayToShowAdsP;
}
- (instancetype) init:(AdConfiguration*)adConfiguration;
- (void) initFields;
- (void) initViewArray:(id*)viewArray;
- (void) onStart:(id)anyType;
- (void) initMethod;
- (bool) isShowingAtLocation:(int32_t)location;
- (bool) isShowingAt;
- (void) show;
- (void) hide;
- (void) onEvent:(AllBinaryEventObject*)eventObject;
- (void) processAdState:(GameState*)gameState :(GameType*)gameType;
- (void) processPageAdState;
- (void) playingAdState;
- (void) playingAdStateWH:(int32_t)width :(int32_t)height;
- (void) notPlayingAdState;
- (void) setGameIsReady:(bool)gameIsReady;
- (bool) isGameIsReady;
- (Advertisements*) getAdvertisements;
- (AdConfiguration*) getAdConfiguration;
- (bool) isOkayToShowPageAd;
- (void) setOkayToShowAds:(bool)okayToShowAds;
- (bool) isOkayToShowAds;
- (bool) isEnabled;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void GameAdStateBase_staticInit(void);


#endif // ORG_ALLBINARY_BUSINESS_ADVERTISEMENT_GAMEADSTATEBASE_H
