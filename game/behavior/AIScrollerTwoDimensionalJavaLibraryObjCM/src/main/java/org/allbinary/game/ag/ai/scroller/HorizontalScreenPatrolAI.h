#ifndef ORG_ALLBINARY_GAME_AG_AI_SCROLLER_HORIZONTALSCREENPATROLAI_H
#define ORG_ALLBINARY_GAME_AG_AI_SCROLLER_HORIZONTALSCREENPATROLAI_H
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
// package org.allbinary.game.ag.ai.scroller

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class HorizontalScreenPatrolAI;
@class Canvas;
@class BasicAI;
@class GameInput;
@class AllBinaryGameLayerManager;
@class MyRandomFactory;
@class DisplayInfoSingleton;
@class AllBinaryLayer;
@class AllBinaryLayerManager;
@class SmallIntegerSingletonFactory;
@class PlayerQueue;
@class SecondaryPlayerQueueFactory;
@class Sound;
@class TimeDelayHelper;
@class ABHashtable;
#include "org/allbinary/game/ai/BasicAI.h"
#if __has_include("org/allbinary/graphics/displayable/DisplayInfoSingleton.h")
#include "org/allbinary/graphics/displayable/DisplayInfoSingleton.h"
#endif
#if __has_include("org/allbinary/media/audio/PlayerQueue.h")
#include "org/allbinary/media/audio/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/media/audio/Sound.h")
#include "org/allbinary/media/audio/Sound.h"
#endif
#if __has_include("org/allbinary/time/TimeDelayHelper.h")
#include "org/allbinary/time/TimeDelayHelper.h"
#endif
#include "java/lang/Integer.h"

@interface HorizontalScreenPatrolAI : BasicAI {
@public
    int32_t keyDirection;
    DisplayInfoSingleton* displayInfoSingleton;
    int32_t firingX;
    int32_t firedIndex;
    int32_t MAX_FIRE;
    TimeDelayHelper* timeDelayHelper;
    PlayerQueue* secondaryPlayerQueue;
    Sound* sound;
}
- (instancetype) init:(ABHashtable*)hashtable :(AllBinaryLayer*)ownerLayerInterface :(GameInput*)gameInput;
- (void) initFields;
- (void) processAI:(AllBinaryLayerManager*)allBinaryLayerManager;
- (void) nextDirection;
@end

extern int32_t HorizontalScreenPatrolAI_SOUND;
// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void HorizontalScreenPatrolAI_staticInit(void);


#endif // ORG_ALLBINARY_GAME_AG_AI_SCROLLER_HORIZONTALSCREENPATROLAI_H
