#ifndef ORG_ALLBINARY_GAME_SCORE_DISPLAYABLE_HIGHSCORESCANVAS_H
#define ORG_ALLBINARY_GAME_SCORE_DISPLAYABLE_HIGHSCORESCANVAS_H
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
// package org.allbinary.game.score.displayable

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class HighScoresCanvas;
@class Command;
@class CommandListener;
@class Graphics;
@class GameInfo;
@class GameCommandsFactory;
@class GameCommandCanvas;
@class AllBinaryGameLayerManager;
@class ColorFillBasePaintable;
@class ColorFillPaintableFactory;
@class HighScoreCommandsFactory;
@class HighScores;
@class HighScoresCanvasInputProcessor;
@class HighScoresCanvasInputProcessorFactoryInterface;
@class HighScoresFactoryInterface;
@class HighScoresHelperBase;
@class HighScoresPaintable;
@class HighScoresResultsListener;
@class NoHighScoresFactory;
@class NullHighScoresSingletonFactory;
@class BasicColorFactory;
@class NullPaintable;
@class Paintable;
@class SimpleTextPaintable;
@class LogUtil;
@class StringMaker;
@class CommonStrings;
@class SecondaryThreadPool;
@class HighScoreRunnable;
#if __has_include("javax/microedition/lcdui/Command.h")
#include "javax/microedition/lcdui/Command.h"
#endif
#if __has_include("org/allbinary/game/GameInfo.h")
#include "org/allbinary/game/GameInfo.h"
#endif
#include "org/allbinary/game/displayable/canvas/GameCommandCanvas.h"
#if __has_include("org/allbinary/game/paint/ColorFillBasePaintable.h")
#include "org/allbinary/game/paint/ColorFillBasePaintable.h"
#endif
#if __has_include("org/allbinary/game/score/HighScoreCommandsFactory.h")
#include "org/allbinary/game/score/HighScoreCommandsFactory.h"
#endif
#if __has_include("org/allbinary/game/score/HighScoresCanvasInputProcessor.h")
#include "org/allbinary/game/score/HighScoresCanvasInputProcessor.h"
#endif
#if __has_include("org/allbinary/game/score/HighScoresFactoryInterface.h")
#include "org/allbinary/game/score/HighScoresFactoryInterface.h"
#endif
#if __has_include("org/allbinary/game/score/HighScoresHelperBase.h")
#include "org/allbinary/game/score/HighScoresHelperBase.h"
#endif
#if __has_include("org/allbinary/game/score/HighScoresPaintable.h")
#include "org/allbinary/game/score/HighScoresPaintable.h"
#endif
#include "org/allbinary/game/score/HighScoresResultsListener.h"
#if __has_include("org/allbinary/graphics/paint/Paintable.h")
#include "org/allbinary/graphics/paint/Paintable.h"
#endif
#if __has_include("org/allbinary/graphics/paint/SimpleTextPaintable.h")
#include "org/allbinary/graphics/paint/SimpleTextPaintable.h"
#endif
// #include "org/allbinary/logic/communication/log/LogUtil.h"
// #include "org/allbinary/string/CommonStrings.h"

@interface HighScoresCanvas : GameCommandCanvas <HighScoresResultsListener> {
@public
    Paintable* paintable;
    HighScoreCommandsFactory* highScoreCommandsFactory;
    SimpleTextPaintable* waitPaintable;
    HighScoresPaintable* highScoresPaintable;
    HighScoresFactoryInterface* highScoresFactoryInterface;
    ColorFillBasePaintable* colorFillPaintable;
    HighScoresHelperBase* highScoresHelper;
    GameInfo* gameInfo;
    HighScoresCanvasInputProcessor* highScoresCanvasInputProcessor;
    Command* currentCommand;
    bool hasPainted;
}
- (instancetype) init:(CommandListener*)commandListener :(AllBinaryGameLayerManager*)allBinaryGameLayerManager :(GameInfo*)gameInfo :(HighScoresPaintable*)paintable :(HighScoresFactoryInterface*)highScoresFactoryInterface :(HighScoresCanvasInputProcessorFactoryInterface*)highScoresCanvasInputProcessorFactoryInterface;
- (void) initFields;
- (void) initCommands:(CommandListener*)cmdListener;
- (void) open;
- (void) close;
- (void) paint:(Graphics*)graphics;
- (void) executeUpdate;
- (HighScoresPaintable*) getHighScoresPaintable;
- (void) setHighScoresArray:(HighScores**)highScoresArray;
- (void) updateCommand:(Command*)command;
- (GameInfo*) getGameInfo;
- (void) setPaintable:(Paintable*)paintable;
@end

extern const char* HighScoresCanvas_NAME;
// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void HighScoresCanvas_staticInit(void);

#if __has_include("org/allbinary/game/GameInfo.h")
#include "org/allbinary/game/GameInfo.h"
#endif

#endif // ORG_ALLBINARY_GAME_SCORE_DISPLAYABLE_HIGHSCORESCANVAS_H
