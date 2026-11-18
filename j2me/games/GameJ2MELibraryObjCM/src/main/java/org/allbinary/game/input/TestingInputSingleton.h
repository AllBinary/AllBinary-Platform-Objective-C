#ifndef ORG_ALLBINARY_GAME_INPUT_TESTINGINPUTSINGLETON_H
#define ORG_ALLBINARY_GAME_INPUT_TESTINGINPUTSINGLETON_H
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
@class TestingInputSingleton;
@class Canvas;
@class Graphics;
@class GameKeyEvent;
@class AllBinaryGameLayer;
@class RectangleFactory;
@class NullPaintable;
@class PaintableInterface;
@class AllBinaryLayerManager;
@class StringUtil;
@class BasicArrayList;
@class ViewPosition;
@class GameInputInterface;
@class GameInputProcessor;
@class InputFactory;
@class GameInputProcessorUtil;
@class TestInputInterface;
#include "org/allbinary/game/layer/AllBinaryGameLayer.h"
#if __has_include("org/allbinary/graphics/paint/PaintableInterface.h")
#include "org/allbinary/graphics/paint/PaintableInterface.h"
#endif
#include "org/allbinary/game/input/GameInputInterface.h"
#if __has_include("org/allbinary/game/input/GameInputProcessor.h")
#include "org/allbinary/game/input/GameInputProcessor.h"
#endif

@interface TestingInputSingleton : AllBinaryGameLayer <GameInputInterface> {
@public
    GameInputProcessor** inputProcessorArray;
    PaintableInterface* testInputPaintable;
}
- (instancetype) init;
- (void) initFields;
+ (TestingInputSingleton*) getInstance;
- (void) initInputProcessors;
- (void) initInputProcessorsForTestInput:(TestInputInterface*)aTestInputInterface;
- (void) processInputList:(AllBinaryLayerManager*)allbinaryLayerManager :(BasicArrayList*)list;
- (void) processInput:(AllBinaryLayerManager*)allbinaryLayerManager;
- (void) paint:(Graphics*)graphics;
- (bool) implmentsGameInputInterface;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void TestingInputSingleton_staticInit(void);


#endif // ORG_ALLBINARY_GAME_INPUT_TESTINGINPUTSINGLETON_H
