#ifndef ORG_ALLBINARY_GAME_AG_AI_MULTIKEYPRESSESAI_H
#define ORG_ALLBINARY_GAME_AG_AI_MULTIKEYPRESSESAI_H
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
// package org.allbinary.game.ag.ai

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class MultiKeyPressesAI;
@class GameInput;
@class AllBinaryLayer;
@class AllBinaryLayerManager;
@class GameTickTimeDelayHelper;
@class GameTickTimeDelayHelperFactory;
@class TimeDelayHelper;
@class ABHashtable;
@class KeyPressesAI;
#if __has_include("org/allbinary/time/GameTickTimeDelayHelper.h")
#include "org/allbinary/time/GameTickTimeDelayHelper.h"
#endif
#if __has_include("org/allbinary/time/TimeDelayHelper.h")
#include "org/allbinary/time/TimeDelayHelper.h"
#endif
#include "java/lang/Integer.h"
#include "org/allbinary/game/ag/ai/KeyPressesAI.h"

@interface MultiKeyPressesAI : KeyPressesAI {
@public
    TimeDelayHelper* toggleTimeHelper;
    GameTickTimeDelayHelper* gameTickTimeDelayHelper;
}
- (instancetype) init:(ABHashtable*)hashtable :(AllBinaryLayer*)ownerLayerInterface :(GameInput*)gameInput;
- (void) initFields;
- (void) processAI:(AllBinaryLayerManager*)allBinaryLayerManager;
- (void) update;
- (void) toggle;
- (void) disable;
- (void) enable;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void MultiKeyPressesAI_staticInit(void);


#endif // ORG_ALLBINARY_GAME_AG_AI_MULTIKEYPRESSESAI_H
