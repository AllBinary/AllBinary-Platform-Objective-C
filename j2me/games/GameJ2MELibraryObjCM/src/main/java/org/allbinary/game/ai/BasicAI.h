#ifndef ORG_ALLBINARY_GAME_AI_BASICAI_H
#define ORG_ALLBINARY_GAME_AI_BASICAI_H
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
// package org.allbinary.game.ai

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class BasicAI;
@class ArtificialIntelligence;
@class CanvasUtil;
@class GameInput;
@class GameKeyEventSourceInterface;
@class GameKeyEventFactory;
@class AllBinaryLayer;
@class AllBinaryLayerManager;
@class LogUtil;
@class SmallIntegerSingletonFactory;
@class StringMaker;
@class CommonSeps;
@class CommonStrings;
#include "org/allbinary/ai/ArtificialIntelligence.h"
#if __has_include("org/allbinary/game/input/GameInput.h")
#include "org/allbinary/game/input/GameInput.h"
#endif
#include "org/allbinary/game/input/GameKeyEventSourceInterface.h"
#if __has_include("org/allbinary/game/input/event/GameKeyEventFactory.h")
#include "org/allbinary/game/input/event/GameKeyEventFactory.h"
#endif
#if __has_include("org/allbinary/layer/AllBinaryLayer.h")
#include "org/allbinary/layer/AllBinaryLayer.h"
#endif
#if __has_include("org/allbinary/logic/communication/log/LogUtil.h")
#include "org/allbinary/logic/communication/log/LogUtil.h"
#endif
#if __has_include("org/allbinary/string/CommonStrings.h")
#include "org/allbinary/string/CommonStrings.h"
#endif
#include "java/lang/Integer.h"

@interface BasicAI : ArtificialIntelligence <GameKeyEventSourceInterface> {
@public
    LogUtil* logUtil;
    CommonStrings* commonStrings;
    GameKeyEventFactory* gameKeyEventFactory;
    AllBinaryLayer* ownerLayerInterface;
    GameInput* gameInput;
    int32_t lastKey;
}
- (instancetype) init:(AllBinaryLayer*)ownerLayerInterface :(GameInput*)gameInput;
- (void) initFields;
- (void) processAI:(AllBinaryLayerManager*)allBinaryLayerManager;
- (void) processKeyAI:(int32_t)key;
- (void) setLastKey:(int32_t)lastKey;
- (int32_t) getLastKey;
- (AllBinaryLayer*) getOwnerLayerInterface;
- (GameInput*) getGameInput;
- (const char*) getName;
- (const char*) toString;
- (int32_t) getSourceId;
@end

extern int32_t BasicAI_AI_VISITOR;
extern int32_t BasicAI_ID;
// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void BasicAI_staticInit(void);

#if __has_include("org/allbinary/game/input/GameInput.h")
#include "org/allbinary/game/input/GameInput.h"
#endif
#if __has_include("org/allbinary/layer/AllBinaryLayer.h")
#include "org/allbinary/layer/AllBinaryLayer.h"
#endif

#endif // ORG_ALLBINARY_GAME_AI_BASICAI_H
