#ifndef ORG_ALLBINARY_GAME_INPUT_NULLPLAYERGAMEINPUTCOMPOSITE_H
#define ORG_ALLBINARY_GAME_INPUT_NULLPLAYERGAMEINPUTCOMPOSITE_H
/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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
// package org.allbinary.game.input

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class NullPlayerGameInputComposite;
@class AllBinaryLayerManager;
@class StringUtil;
@class PlayerGameInputCompositeInterface;
@class NoPlayerGameInput;
@class PlayerGameInput;
#include "org/allbinary/game/input/PlayerGameInputCompositeInterface.h"

@interface NullPlayerGameInputComposite : ABObject <PlayerGameInputCompositeInterface> {
@public
}
- (instancetype) init;
- (const char*) getName;
- (void) processInput:(AllBinaryLayerManager*)layerManager;
- (void) initInputProcessors;
- (PlayerGameInput*) getPlayerGameInput;
@end

extern NullPlayerGameInputComposite* NullPlayerGameInputComposite_NULL_PLAYER_GAME_INPUT_COMPOSITE;
// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void NullPlayerGameInputComposite_staticInit(void);


#endif // ORG_ALLBINARY_GAME_INPUT_NULLPLAYERGAMEINPUTCOMPOSITE_H
