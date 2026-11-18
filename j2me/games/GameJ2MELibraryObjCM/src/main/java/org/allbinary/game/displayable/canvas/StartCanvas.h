#ifndef ORG_ALLBINARY_GAME_DISPLAYABLE_CANVAS_STARTCANVAS_H
#define ORG_ALLBINARY_GAME_DISPLAYABLE_CANVAS_STARTCANVAS_H
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
@class StartCanvas;
@class Command;
@class CommandListener;
@class Graphics;
@class Item;
@class J2MEUtil;
@class Animation;
@class IndexedAnimationBehavior;
@class SpecialAnimation;
@class GameAdStateFactory;
@class BaseGameStatistics;
@class CustomGameMenuUtil;
@class FullScreenUtil;
@class GameStatisticsFactory;
@class RunnableCanvas;
@class GameAdState;
@class GameCommandsFactory;
@class ChangedGameFeatureListener;
@class Features;
@class GameFeatureFactory;
@class InputFeatureFactory;
@class MainFeatureFactory;
@class BasicBuildGameInitializerFactory;
@class GameInitializationUtil;
@class GameInputStrings;
@class GameKey;
@class GameKeyFactory;
@class PlatformInputMappingFactory;
@class DownGameKeyEventHandler;
@class GameKeyEvent;
@class GameKeyEventFactory;
@class GameKeyEventHandler;
@class UpGameKeyEventHandler;
@class InputToGameKeyMapping;
@class AllBinaryGameLayerManager;
@class SWTUtil;
@class DemoGameMidlet;
@class HighScoreCommands;
@class HighScores;
@class HighScoresFactoryInterface;
@class HighScoresHelper;
@class HighScoresPaintable;
@class NullHighScoresSingletonFactory;
@class GameState;
@class GameStateFactory;
@class Rectangle;
@class ResizableListenerHandler;
@class ProgressCanvas;
@class ProgressCanvasFactory;
@class BasicColorFactory;
@class MyCommandsFactory;
@class DisplayChangeEvent;
@class DisplayChangeEventHandler;
@class DisplayChangeEventListener;
@class FormType;
@class FormTypeFactory;
@class ScrollSelectionForm;
@class CurrentDisplayableFactory;
@class OpenGLFeatureFactory;
@class OpenGLFeatureUtil;
@class OpenGLThreadUtil;
@class InitUpdatePaintable;
@class NullPaintable;
@class Paintable;
@class PaintableInterface;
@class StatePaintable;
@class StatePaintableFactory;
@class BasicMotionGesturesHandler;
@class ForcedLogUtil;
@class PreLogUtil;
@class SmallIntegerSingletonFactory;
@class StringMaker;
@class OperatingSystemFactory;
@class AbeClientInformationInterface;
@class InApplicationPurchaseFactory;
@class LockableFeature;
@class LockableFeatureFactory;
@class AllBinaryEventObject;
@class EventStrings;
@class AllBinaryMediaManager;
@class EarlySoundsFactory;
@class CommonSeps;
@class TimeDelayHelper;
@class ABHashtable;
@class BasicArrayList;
@class BasicArrayListD;
@class GameCanvasRunnableInterface;
@class MenuListener;
@class FormUtil;
@class NoMenuInputProcessor;
@class BasicMenuInputProcessor;
@class NullWaitGameRunnable;
@class GameRunnable;
@class GameInputMappingCanvas;
#if __has_include("org/allbinary/animation/Animation.h")
#include "org/allbinary/animation/Animation.h"
#endif
#if __has_include("org/allbinary/animation/special/SpecialAnimation.h")
#include "org/allbinary/animation/special/SpecialAnimation.h"
#endif
#if __has_include("org/allbinary/business/advertisement/GameAdStateFactory.h")
#include "org/allbinary/business/advertisement/GameAdStateFactory.h"
#endif
#if __has_include("org/allbinary/canvas/BaseGameStatistics.h")
#include "org/allbinary/canvas/BaseGameStatistics.h"
#endif
#if __has_include("org/allbinary/canvas/FullScreenUtil.h")
#include "org/allbinary/canvas/FullScreenUtil.h"
#endif
#include "org/allbinary/canvas/RunnableCanvas.h"
#if __has_include("org/allbinary/game/configuration/feature/Features.h")
#include "org/allbinary/game/configuration/feature/Features.h"
#endif
#if __has_include("org/allbinary/game/init/BasicBuildGameInitializerFactory.h")
#include "org/allbinary/game/init/BasicBuildGameInitializerFactory.h"
#endif
#if __has_include("org/allbinary/game/input/GameInputStrings.h")
#include "org/allbinary/game/input/GameInputStrings.h"
#endif
#if __has_include("org/allbinary/game/input/GameKey.h")
#include "org/allbinary/game/input/GameKey.h"
#endif
#if __has_include("org/allbinary/game/input/event/GameKeyEventFactory.h")
#include "org/allbinary/game/input/event/GameKeyEventFactory.h"
#endif
#if __has_include("org/allbinary/game/input/mapping/InputToGameKeyMapping.h")
#include "org/allbinary/game/input/mapping/InputToGameKeyMapping.h"
#endif
#if __has_include("org/allbinary/game/score/HighScoresFactoryInterface.h")
#include "org/allbinary/game/score/HighScoresFactoryInterface.h"
#endif
#if __has_include("org/allbinary/game/score/HighScoresHelper.h")
#include "org/allbinary/game/score/HighScoresHelper.h"
#endif
#if __has_include("org/allbinary/game/score/HighScoresPaintable.h")
#include "org/allbinary/game/score/HighScoresPaintable.h"
#endif
#if __has_include("org/allbinary/game/state/GameStateFactory.h")
#include "org/allbinary/game/state/GameStateFactory.h"
#endif
#if __has_include("org/allbinary/graphics/color/BasicColorFactory.h")
#include "org/allbinary/graphics/color/BasicColorFactory.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/command/MyCommandsFactory.h")
#include "org/allbinary/graphics/displayable/command/MyCommandsFactory.h"
#endif
#include "org/allbinary/graphics/displayable/event/DisplayChangeEventListener.h"
#if __has_include("org/allbinary/graphics/form/ScrollSelectionForm.h")
#include "org/allbinary/graphics/form/ScrollSelectionForm.h"
#endif
#if __has_include("org/allbinary/graphics/opengles/OpenGLFeatureFactory.h")
#include "org/allbinary/graphics/opengles/OpenGLFeatureFactory.h"
#endif
#if __has_include("org/allbinary/graphics/paint/InitUpdatePaintable.h")
#include "org/allbinary/graphics/paint/InitUpdatePaintable.h"
#endif
#if __has_include("org/allbinary/graphics/paint/Paintable.h")
#include "org/allbinary/graphics/paint/Paintable.h"
#endif
#if __has_include("org/allbinary/graphics/paint/PaintableInterface.h")
#include "org/allbinary/graphics/paint/PaintableInterface.h"
#endif
#if __has_include("org/allbinary/graphics/paint/StatePaintable.h")
#include "org/allbinary/graphics/paint/StatePaintable.h"
#endif
#if __has_include("org/allbinary/time/TimeDelayHelper.h")
#include "org/allbinary/time/TimeDelayHelper.h"
#endif
#include "org/allbinary/game/displayable/canvas/GameCanvasRunnableInterface.h"
#include "org/allbinary/game/displayable/canvas/MenuListener.h"
#if __has_include("org/allbinary/game/displayable/canvas/FormUtil.h")
#include "org/allbinary/game/displayable/canvas/FormUtil.h"
#endif
#if __has_include("org/allbinary/game/displayable/canvas/BasicMenuInputProcessor.h")
#include "org/allbinary/game/displayable/canvas/BasicMenuInputProcessor.h"
#endif
#if __has_include("org/allbinary/game/displayable/canvas/GameRunnable.h")
#include "org/allbinary/game/displayable/canvas/GameRunnable.h"
#endif

@interface StartCanvas : RunnableCanvas <GameCanvasRunnableInterface, MenuListener, DisplayChangeEventListener> {
@public
    BasicColorFactory* basicColorFactory;
    Features* features;
    OpenGLFeatureFactory* openGLFeatureFactory;
    MyCommandsFactory* myCommandsFactory;
    GameAdStateFactory* gameAdStateFactory;
    GameStateFactory* gameStateFactory;
    GameInputStrings* gameInputStrings;
    FormUtil* formUtil;
    StatePaintable* basicGameDemoPaintable;
    SpecialAnimation* specialAnimationInterface;
    Animation* paintedSpecialAnimationInterface;
    FullScreenUtil* fullScreenUtil;
    HighScoresHelper* highScoresHelper;
    HighScoresPaintable* realHighScoresPaintable;
    Paintable* highScoresPaintable;
    int32_t state;
    TimeDelayHelper* timeDelayHelper;
    HighScoresFactoryInterface* highScoresFactoryInterface;
    BasicMenuInputProcessor* menuInputProcessor;
    ScrollSelectionForm* menuForm;
    BasicBuildGameInitializerFactory* gameInitializationInterfaceFactoryInterface;
    bool initialized;
    Paintable* defaultPaintableInterface;
    PaintableInterface* paintableInterface;
    InitUpdatePaintable* overlayPaintable;
    int32_t tempWait;
    InputToGameKeyMapping* inputToGameKeyMapping;
    GameRunnable* gameRunnable;
    PaintableInterface* progressPaintable;
    bool isSingleKeyRepeatableProcessing;
    GameKey* NONE;
    GameKeyEventFactory* gameKeyEventFactory;
    const char* SET_STATE;
    BaseGameStatistics* baseGameStatistics;
}
- (instancetype) init:(AbeClientInformationInterface*)abeClientInformation :(CommandListener*)commandListener :(HighScoresFactoryInterface*)highScoresFactoryInterface :(Paintable*)paintable :(InitUpdatePaintable*)overlayPaintable :(BasicBuildGameInitializerFactory*)gameInitializationInterfaceFactoryInterface :(bool)isContinue;
- (void) initFields;
- (void) onEvent:(AllBinaryEventObject*)eventObject;
- (void) onDisplayChangeEvent:(DisplayChangeEvent*)displayChangeEvent;
- (id*) getCustomCommands;
- (void) initCommands:(CommandListener*)cmdListener;
- (void) initPostPaint;
- (void) mediaInit;
- (void) itemStateChanged:(Item*)item;
- (void) initMenu;
- (void) open;
- (void) close;
- (int32_t) getSourceId;
- (void) keyPressed:(int32_t)keyCode;
- (void) keyReleased:(int32_t)keyCode;
- (void) keyRepeated:(int32_t)keyCode;
- (void) keyPressedByDevice:(int32_t)keyCode :(int32_t)deviceId;
- (void) keyReleasedByDevice:(int32_t)keyCode :(int32_t)deviceId;
- (void) keyRepeatedByDevice:(int32_t)keyCode :(int32_t)deviceId;
- (void) addGameKeyEvent:(int32_t)keyCode :(bool)repeated;
- (void) removeGameKeyEvent:(int32_t)keyCode :(bool)repeated;
- (void) pause;
- (void) unPause;
- (bool) isPausable;
- (bool) isGameOver;
- (void) setLoadStateHashtable:(ABHashtable*)hashtable;
- (ABHashtable*) getLoadStateHashtable;
- (ABHashtable*) getCurrentStateHashtable;
- (void) setHighScoreSubmitted:(bool)isNotUsed;
- (void) paint:(Graphics*)graphics;
- (void) paintThreed:(Graphics*)graphics;
- (void) processGameOver;
- (void) demoStateChange;
- (void) updateDemoState;
- (int32_t) getNextRandom;
- (AllBinaryGameLayerManager*) createGameLayerManager:(int32_t)randomValue;
- (GameCanvasRunnableInterface*) createRunnable:(int32_t)randomLevel;
- (void) createCanvas;
- (void) start;
- (void) preDemoProcess;
- (void) process;
- (void) startDemoGame;
- (void) processGame;
- (void) run;
- (void) setRunning:(bool)running;
- (void) end;
- (void) setGameState:(GameState*)gameState;
- (GameState*) getGameState;
- (int32_t) getState;
- (void) setState:(int32_t)state;
- (bool) isHighScoreSubmitted;
- (HighScoresPaintable*) getRealHighScoresPaintable;
- (void) setSpecialAnimationInterface:(SpecialAnimation*)specialAnimationInterface;
- (SpecialAnimation*) getSpecialAnimationInterface;
- (void) setPaintableInterface:(PaintableInterface*)paintableInterface;
- (PaintableInterface*) getPaintableInterface;
- (void) setDefaultPaintableInterface:(Paintable*)defaultPaintableInterface;
- (Paintable*) getDefaultPaintableInterface;
- (HighScoresFactoryInterface*) getHighScoresFactoryInterface;
- (void) setMenuInputProcessor:(BasicMenuInputProcessor*)menuInputProcessor;
- (BasicMenuInputProcessor*) getMenuInputProcessor;
- (ScrollSelectionForm*) getMenuForm;
- (void) setMenuForm:(ScrollSelectionForm*)menuForm;
- (bool) isInitialized;
- (Paintable*) getOverlayPaintable;
- (void) setBasicGameDemoPaintable:(StatePaintable*)basicGameDemoPaintable;
- (StatePaintable*) getBasicGameDemoPaintable;
- (void) setTempWait:(int32_t)tempWait;
- (int32_t) getTempWait;
- (bool) isSingleThread;
- (bool) isRunningInAnotherThread;
- (BasicBuildGameInitializerFactory*) getGameInitializationInterfaceFactoryInterface;
- (const char*) getTitle;
- (bool) isPaused;
- (int32_t) getType;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void StartCanvas_staticInit(void);

#if __has_include("org/allbinary/animation/special/SpecialAnimation.h")
#include "org/allbinary/animation/special/SpecialAnimation.h"
#endif
#if __has_include("org/allbinary/game/init/BasicBuildGameInitializerFactory.h")
#include "org/allbinary/game/init/BasicBuildGameInitializerFactory.h"
#endif
#if __has_include("org/allbinary/game/layer/AllBinaryGameLayerManager.h")
#include "org/allbinary/game/layer/AllBinaryGameLayerManager.h"
#endif
#if __has_include("org/allbinary/game/score/HighScoresFactoryInterface.h")
#include "org/allbinary/game/score/HighScoresFactoryInterface.h"
#endif
#if __has_include("org/allbinary/game/score/HighScoresPaintable.h")
#include "org/allbinary/game/score/HighScoresPaintable.h"
#endif
#if __has_include("org/allbinary/game/state/GameState.h")
#include "org/allbinary/game/state/GameState.h"
#endif
#if __has_include("org/allbinary/graphics/form/ScrollSelectionForm.h")
#include "org/allbinary/graphics/form/ScrollSelectionForm.h"
#endif
#if __has_include("org/allbinary/graphics/paint/Paintable.h")
#include "org/allbinary/graphics/paint/Paintable.h"
#endif
#if __has_include("org/allbinary/graphics/paint/PaintableInterface.h")
#include "org/allbinary/graphics/paint/PaintableInterface.h"
#endif
#if __has_include("org/allbinary/graphics/paint/StatePaintable.h")
#include "org/allbinary/graphics/paint/StatePaintable.h"
#endif
#if __has_include("org/allbinary/util/ABHashtable.h")
#include "org/allbinary/util/ABHashtable.h"
#endif

#endif // ORG_ALLBINARY_GAME_DISPLAYABLE_CANVAS_STARTCANVAS_H
