#ifndef ORG_ALLBINARY_GAME_DISPLAYABLE_CANVAS_CHEATGAMEINPUTPROCESSOR_H
#define ORG_ALLBINARY_GAME_DISPLAYABLE_CANVAS_CHEATGAMEINPUTPROCESSOR_H
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
// package org.allbinary.game.displayable.canvas

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class CheatGameInputProcessor;
@class GameKeyFactory;
@class PlayerGameInput;
@class GameKeyEvent;
@class GameKeyEventUtil;
@class AllBinaryGameLayerManager;
@class SpecialGameInputFactory;
@class SpecialGameInputInterface;
@class StringMaker;
@class BasicArrayList;
@class BasicArrayListD;
@class AllBinaryGameCanvas;
#if __has_include("org/allbinary/game/input/GameKeyFactory.h")
#include "org/allbinary/game/input/GameKeyFactory.h"
#endif
#include "org/allbinary/game/input/PlayerGameInput.h"
#if __has_include("org/allbinary/game/layer/special/SpecialGameInputInterface.h")
#include "org/allbinary/game/layer/special/SpecialGameInputInterface.h"
#endif
// #include "org/allbinary/logic/string/StringMaker.h"
#if __has_include("org/allbinary/game/displayable/canvas/AllBinaryGameCanvas.h")
#include "org/allbinary/game/displayable/canvas/AllBinaryGameCanvas.h"
#endif

@interface CheatGameInputProcessor : PlayerGameInput {
@public
    const char* PROCESS_GAME;
    AllBinaryGameCanvas* gameCanvas;
    GameKeyFactory* gameKeyFactory;
}
- (instancetype) init:(AllBinaryGameCanvas*)gameCanvas;
- (void) initFields;
- (void) update;
@end

extern SpecialGameInputInterface* CheatGameInputProcessor_inputProcessor;
// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void CheatGameInputProcessor_staticInit(void);


#endif // ORG_ALLBINARY_GAME_DISPLAYABLE_CANVAS_CHEATGAMEINPUTPROCESSOR_H
