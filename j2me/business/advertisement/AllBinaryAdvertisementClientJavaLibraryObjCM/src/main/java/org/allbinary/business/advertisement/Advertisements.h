#ifndef ORG_ALLBINARY_BUSINESS_ADVERTISEMENT_ADVERTISEMENTS_H
#define ORG_ALLBINARY_BUSINESS_ADVERTISEMENT_ADVERTISEMENTS_H
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
@class Advertisements;
@class MyRandomFactory;
@class LockedUtil;
@class BasicArrayList;
@class BasicArrayListD;
@class AdvertisementProcessorInterface;
#if __has_include("org/allbinary/game/rand/MyRandomFactory.h")
#include "org/allbinary/game/rand/MyRandomFactory.h"
#endif
#if __has_include("org/allbinary/util/BasicArrayList.h")
#include "org/allbinary/util/BasicArrayList.h"
#endif

@interface Advertisements : ABObject {
@public
    BasicArrayList* bannerList;
    BasicArrayList* pageList;
    MyRandomFactory* myRandomFactory;
}
- (instancetype) init;
- (void) initFields;
- (void) addPage:(AdvertisementProcessorInterface*)advertisementProcessorInterface;
- (void) startRandomPage;
- (void) processRandomPage;
- (void) stopAllPage;
- (void) addBanner:(AdvertisementProcessorInterface*)advertisementProcessorInterface;
- (void) startAll;
- (void) stopAllBanner;
- (AdvertisementProcessorInterface*) getBanner:(int32_t)index;
- (void) stopAll;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void Advertisements_staticInit(void);


#endif // ORG_ALLBINARY_BUSINESS_ADVERTISEMENT_ADVERTISEMENTS_H
