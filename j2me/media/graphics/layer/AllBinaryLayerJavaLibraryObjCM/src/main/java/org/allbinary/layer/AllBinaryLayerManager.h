#ifndef ORG_ALLBINARY_LAYER_ALLBINARYLAYERMANAGER_H
#define ORG_ALLBINARY_LAYER_ALLBINARYLAYERMANAGER_H
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
// package org.allbinary.layer

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class AllBinaryLayerManager;
@class LayerManagerEvent;
@class LayerManagerEventHandler;
@class LayerManager;
@class LayerProcessor;
@class LayerManagerNoDebug;
@class AllBinaryLayer;
#if __has_include("org/allbinary/layer/event/LayerManagerEvent.h")
#include "org/allbinary/layer/event/LayerManagerEvent.h"
#endif
#if __has_include("org/allbinary/layer/event/LayerManagerEventHandler.h")
#include "org/allbinary/layer/event/LayerManagerEventHandler.h"
#endif
#include "org/allbinary/layer/LayerManager.h"
#if __has_include("org/allbinary/layer/LayerProcessor.h")
#include "org/allbinary/layer/LayerProcessor.h"
#endif

@interface AllBinaryLayerManager : LayerManager {
@public
    LayerManagerEventHandler* layerManagerEventHandler;
    LayerManagerEvent* createLayerManagerEvent;
    LayerManagerEvent* deleteLayerManagerEvent;
    LayerProcessor** basicLayerProcessorArray;
}
- (instancetype) init;
- (void) initFields;
- (LayerProcessor**) getLayerProcessorArray;
- (void) setLayerProcessorArray:(LayerProcessor**)layerProcessorArray;
- (void) log;
- (void) append:(AllBinaryLayer*)layerInterface;
- (void) appendAt:(AllBinaryLayer*)layerInterface :(int32_t)index;
- (void) appendProcessors:(AllBinaryLayer*)layerInterface;
- (void) remove:(AllBinaryLayer*)layerInterface;
- (void) process;
- (void) cleanup;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void AllBinaryLayerManager_staticInit(void);


#endif // ORG_ALLBINARY_LAYER_ALLBINARYLAYERMANAGER_H
