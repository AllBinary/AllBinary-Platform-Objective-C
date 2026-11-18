#ifndef ORG_ALLBINARY_GAME_LAYER_DROP_DROPLAYERPROCESSOR_H
#define ORG_ALLBINARY_GAME_LAYER_DROP_DROPLAYERPROCESSOR_H
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
// package org.allbinary.game.layer.drop

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class DropLayerProcessor;
@class AllBinaryLayer;
@class AllBinaryLayerManager;
@class BasicLayerProcessor;
@class BasicArrayList;
@class DropLayerInterface;
#include "org/allbinary/layer/BasicLayerProcessor.h"

@interface DropLayerProcessor : BasicLayerProcessor {
@public
}
- (instancetype) init;
+ (BasicLayerProcessor*) getInstance;
- (void) process:(AllBinaryLayerManager*)allBinaryLayerManager;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void DropLayerProcessor_staticInit(void);

#if __has_include("org/allbinary/layer/BasicLayerProcessor.h")
#include "org/allbinary/layer/BasicLayerProcessor.h"
#endif

#endif // ORG_ALLBINARY_GAME_LAYER_DROP_DROPLAYERPROCESSOR_H
