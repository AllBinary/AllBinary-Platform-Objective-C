#ifndef ORG_ALLBINARY_BUSINESS_ADVERTISEMENT_ADCONFIGURATION_H
#define ORG_ALLBINARY_BUSINESS_ADVERTISEMENT_ADCONFIGURATION_H
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
// package org.allbinary.business.advertisement

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class AdConfiguration;
@class Direction;
@class GameState;

@interface AdConfiguration : ABObject {
@public
    const char* INNERACTIVE;
    const char* LEADBOLT;
    const char* ADMOB;
}
- (instancetype) init:(id*)advertIdArray;
- (void) initFields;
- (Direction**) getValidAdSpots;
- (void) process:(GameState*)gameState;
- (void) processDemo:(int32_t)state;
- (void) setShowAds;
- (void) setToggleAds:(bool)showAds;
- (bool) isShowAds;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void AdConfiguration_staticInit(void);


#endif // ORG_ALLBINARY_BUSINESS_ADVERTISEMENT_ADCONFIGURATION_H
