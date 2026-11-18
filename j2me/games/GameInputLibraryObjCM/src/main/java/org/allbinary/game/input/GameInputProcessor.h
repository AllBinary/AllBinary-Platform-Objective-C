#ifndef ORG_ALLBINARY_GAME_INPUT_GAMEINPUTPROCESSOR_H
#define ORG_ALLBINARY_GAME_INPUT_GAMEINPUTPROCESSOR_H
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
// package org.allbinary.game.input

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class GameInputProcessor;
@class GameKeyEvent;
@class AllBinaryLayerManager;
#include "java/lang/Integer.h"

@interface GameInputProcessor : ABObject {
@public
}
- (instancetype) init;
+ (GameInputProcessor*) getInstance;
- (void) processEvent:(AllBinaryLayerManager*)allbinaryLayerManager :(GameKeyEvent*)gameKeyEvent;
- (void) processReleasedEvent:(AllBinaryLayerManager*)allbinaryLayerManager :(GameKeyEvent*)gameKeyEvent;
- (void) processAnalog:(AllBinaryLayerManager*)allbinaryLayerManager :(GameKeyEvent*)gameKeyEvent :(int32_t)analogValue;
- (void) process:(AllBinaryLayerManager*)allbinaryLayerManager :(int32_t)keyAsInteger;
- (void) processReleased:(AllBinaryLayerManager*)allbinaryLayerManager :(int32_t)keyAsInteger;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void GameInputProcessor_staticInit(void);


#endif // ORG_ALLBINARY_GAME_INPUT_GAMEINPUTPROCESSOR_H
