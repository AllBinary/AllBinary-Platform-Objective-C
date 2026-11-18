#ifndef ORG_ALLBINARY_GAME_TICK_NULLTICKABLE_H
#define ORG_ALLBINARY_GAME_TICK_NULLTICKABLE_H
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
// package org.allbinary.game.tick

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class NullTickable;
@class AllBinaryLayerManager;
@class TickableInterface;
#include "org/allbinary/game/tick/TickableInterface.h"

@interface NullTickable : ABObject <TickableInterface> {
@public
    const char* NAME;
}
- (instancetype) init;
- (void) initFields;
+ (NullTickable*) getInstance;
- (void) processTick:(AllBinaryLayerManager*)allBinaryLayerManager;
- (const char*) getName;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void NullTickable_staticInit(void);


#endif // ORG_ALLBINARY_GAME_TICK_NULLTICKABLE_H
