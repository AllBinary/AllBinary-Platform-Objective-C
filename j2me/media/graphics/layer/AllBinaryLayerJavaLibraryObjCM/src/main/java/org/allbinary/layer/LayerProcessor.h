#ifndef ORG_ALLBINARY_LAYER_LAYERPROCESSOR_H
#define ORG_ALLBINARY_LAYER_LAYERPROCESSOR_H
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
@class LayerProcessor;
@class CommonStrings;
@class LayerProcessorInterface;
@class LayerManager;
@class AllBinaryLayerManager;
@class AllBinaryLayer;
#if __has_include("org/allbinary/string/CommonStrings.h")
#include "org/allbinary/string/CommonStrings.h"
#endif
#include "org/allbinary/layer/LayerProcessorInterface.h"
#if __has_include("org/allbinary/layer/LayerManager.h")
#include "org/allbinary/layer/LayerManager.h"
#endif

@interface LayerProcessor : ABObject <LayerProcessorInterface> {
@public
    CommonStrings* commonStrings;
    LayerManager* layerManager;
}
- (instancetype) init:(LayerManager*)layerManager;
- (void) initFields;
- (void) processAt:(AllBinaryLayerManager*)allBinaryLayerManager :(AllBinaryLayer*)layerInterface :(int32_t)index;
- (bool) isProcessorLayer:(AllBinaryLayer*)layerInterface;
- (LayerManager*) getLayerManager;
- (void) process:(AllBinaryLayerManager*)allBinaryLayerManager;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void LayerProcessor_staticInit(void);


#endif // ORG_ALLBINARY_LAYER_LAYERPROCESSOR_H
