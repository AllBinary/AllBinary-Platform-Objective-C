#ifndef ORG_ALLBINARY_GAME_TRACKING_TRACKINGEVENT_H
#define ORG_ALLBINARY_GAME_TRACKING_TRACKINGEVENT_H
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
// package org.allbinary.game.tracking

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class TrackingEvent;
@class AllBinaryLayer;
@class StringMaker;
@class AllBinaryEventObject;
@class TrackingEventHandler;
#if __has_include("org/allbinary/layer/AllBinaryLayer.h")
#include "org/allbinary/layer/AllBinaryLayer.h"
#endif
#include "org/allbinary/logic/util/event/AllBinaryEventObject.h"

@interface TrackingEvent : AllBinaryEventObject {
@public
    AllBinaryLayer* layerInterface;
}
- (instancetype) init:(id)allBinaryLayerInterface;
- (void) initFields;
- (void) init_:(id)anyType;
- (AllBinaryLayer*) getLayerInterface;
- (void) setLayerInterface:(AllBinaryLayer*)layerInterface;
- (void) setLayerInterfaceForCircularStaticPool:(AllBinaryLayer*)layerInterface;
- (const char*) toString;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void TrackingEvent_staticInit(void);

#if __has_include("org/allbinary/layer/AllBinaryLayer.h")
#include "org/allbinary/layer/AllBinaryLayer.h"
#endif

#endif // ORG_ALLBINARY_GAME_TRACKING_TRACKINGEVENT_H
