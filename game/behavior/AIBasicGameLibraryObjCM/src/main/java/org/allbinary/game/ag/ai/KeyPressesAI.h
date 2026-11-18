#ifndef ORG_ALLBINARY_GAME_AG_AI_KEYPRESSESAI_H
#define ORG_ALLBINARY_GAME_AG_AI_KEYPRESSESAI_H
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
@class KeyPressesAI;
@class GameInput;
@class AllBinaryLayer;
@class AllBinaryLayerManager;
@class HashtableUtil;
@class BasicAI;
@class ABHashtable;
#include "org/allbinary/game/ai/BasicAI.h"
#include "java/lang/Integer.h"

@interface KeyPressesAI : BasicAI {
@public
    bool on;
    int32_t* keys;
}
- (instancetype) init:(ABHashtable*)hashtable :(AllBinaryLayer*)ownerLayerInterface :(GameInput*)gameInput;
- (void) initFields;
- (void) processAI:(AllBinaryLayerManager*)allBinaryLayerManager;
- (void) toggle;
- (void) disable;
- (void) enable;
- (void) setOn:(bool)on;
- (bool) isOn;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void KeyPressesAI_staticInit(void);


#endif // ORG_ALLBINARY_GAME_AG_AI_KEYPRESSESAI_H
