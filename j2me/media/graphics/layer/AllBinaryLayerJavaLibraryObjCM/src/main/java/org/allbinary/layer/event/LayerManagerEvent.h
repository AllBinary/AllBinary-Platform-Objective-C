#ifndef ORG_ALLBINARY_LAYER_EVENT_LAYERMANAGEREVENT_H
#define ORG_ALLBINARY_LAYER_EVENT_LAYERMANAGEREVENT_H
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
// package org.allbinary.layer.event

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class LayerManagerEvent;
@class AllBinaryLayer;
@class LayerManager;
@class StringMaker;
@class AllBinaryEventObject;
#if __has_include("org/allbinary/layer/AllBinaryLayer.h")
#include "org/allbinary/layer/AllBinaryLayer.h"
#endif
#include "org/allbinary/logic/util/event/AllBinaryEventObject.h"

@interface LayerManagerEvent : AllBinaryEventObject {
@public
    AllBinaryLayer* layerInterface;
    const char* crud;
}
- (instancetype) init:(LayerManager*)layerManager :(const char*)crud;
- (void) initFields;
- (AllBinaryLayer*) getLayerInterface;
- (void) setLayerInterface:(AllBinaryLayer*)layerInterface;
- (const char*) toString;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void LayerManagerEvent_staticInit(void);

#if __has_include("org/allbinary/layer/AllBinaryLayer.h")
#include "org/allbinary/layer/AllBinaryLayer.h"
#endif

#endif // ORG_ALLBINARY_LAYER_EVENT_LAYERMANAGEREVENT_H
