#ifndef ORG_ALLBINARY_GAME_LAYER_ALLBINARYGAMELAYERMANAGER_H
#define ORG_ALLBINARY_GAME_LAYER_ALLBINARYGAMELAYERMANAGER_H
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
// package org.allbinary.game.layer

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class AllBinaryGameLayerManager;
@class GameInfo;
@class NullPlayerGameInputComposite;
@class PlayerGameInputCompositeInterface;
@class ItemColorFactory;
@class BasicColor;
@class BasicColorFactory;
@class AllBinaryLayerManager;
@class LayerProcessor;
@class NullUtil;
@class SmallIntegerSingletonFactory;
@class BasicArrayList;
#if __has_include("org/allbinary/game/GameInfo.h")
#include "org/allbinary/game/GameInfo.h"
#endif
#if __has_include("org/allbinary/game/input/PlayerGameInputCompositeInterface.h")
#include "org/allbinary/game/input/PlayerGameInputCompositeInterface.h"
#endif
#if __has_include("org/allbinary/graphics/color/BasicColor.h")
#include "org/allbinary/graphics/color/BasicColor.h"
#endif
#include "org/allbinary/layer/AllBinaryLayerManager.h"
#include "java/lang/Integer.h"

@interface AllBinaryGameLayerManager : AllBinaryLayerManager {
@public
    BasicColor* backgroundBasicColor;
    BasicColor* foregroundBasicColor;
    GameInfo* gameInfo;
    PlayerGameInputCompositeInterface* playerGameInputCompositeInterface;
}
- (instancetype) init:(BasicColor*)backgroundBasicColor :(BasicColor*)foregroundBasicColor :(GameInfo*)gameInfo;
- (void) initFields;
+ (AllBinaryGameLayerManager*) getNullInstance;
- (AllBinaryLayerManager*) getLayerManager;
- (void) initMethod;
- (BasicColor*) getBackgroundBasicColor;
- (void) setBackgroundBasicColor:(BasicColor*)backgroundBasicColor;
- (BasicColor*) getForegroundBasicColor;
- (void) setForegroundBasicColor:(BasicColor*)foregroundBasicColor;
- (GameInfo*) getGameInfo;
- (void) setGameInfo:(GameInfo*)gameInfo;
- (void) setLayerProcessorList:(BasicArrayList*)list;
- (void) setPlayerGameInputCompositeInterface:(PlayerGameInputCompositeInterface*)playerGameInputCompositeInterface;
- (PlayerGameInputCompositeInterface*) getPlayerGameInputCompositeInterface;
@end

extern int32_t AllBinaryGameLayerManager_ID;
// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void AllBinaryGameLayerManager_staticInit(void);

#if __has_include("org/allbinary/game/GameInfo.h")
#include "org/allbinary/game/GameInfo.h"
#endif
#if __has_include("org/allbinary/game/input/PlayerGameInputCompositeInterface.h")
#include "org/allbinary/game/input/PlayerGameInputCompositeInterface.h"
#endif
#if __has_include("org/allbinary/graphics/color/BasicColor.h")
#include "org/allbinary/graphics/color/BasicColor.h"
#endif
#if __has_include("org/allbinary/layer/AllBinaryLayerManager.h")
#include "org/allbinary/layer/AllBinaryLayerManager.h"
#endif

#endif // ORG_ALLBINARY_GAME_LAYER_ALLBINARYGAMELAYERMANAGER_H
