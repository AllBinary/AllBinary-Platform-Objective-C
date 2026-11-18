#ifndef ORG_ALLBINARY_GAME_MIDLET_GAMEMIDLET_H
#define ORG_ALLBINARY_GAME_MIDLET_GAMEMIDLET_H
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
// package org.allbinary.game.midlet

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class GameMidlet;
@class Canvas;
@class Command;
@class CommandListener;
@class Displayable;
@class NullCanvas;
@class MIDletStateChangeException;
@class J2MEUtil;
@class TsUtil;
@class GameAdStateFactory;
@class FullScreenUtil;
@class GameStatisticsFactory;
@class DebugFactory;
@class DebugInterface;
@class GameAdState;
@class GameInfo;
@class GameMode;
@class GameStrings;
@class GameTypeFactory;
@class PlayerTypesFactory;
@class GameCommandsFactory;
@class GameOptionsForm;
@class GameOptionsFormFactory;
@class InGameFeatures;
@class InGameOptionsForm;
@class InGameOptionsFormFactory;
@class LoadGameForm;
@class ChangedGameFeatureListener;
@class GameFeatureEventHandler;
@class Features;
@class GameFeatureFormUtil;
@class MainFeatureFactory;
@class GamePersistanceSingleton;
@class KeyValuePersistance;
@class AllBinaryGameCanvas;
@class BasicPaintablesCanvas;
@class DemoCanvas;
@class GameCanvasRunnableInterface;
@class GameEventHandlerUtil;
@class GameInputMappingCanvas;
@class GameInputMappingInstructionsCanvas;
@class MenuListener;
@class NullGameCanvasRunnable;
@class TextNotificationUtil;
@class AllBinaryGameLayerManager;
@class GameNotificationEventHandler;
@class HelpPaintable;
@class HighScoreCommands;
@class HighScoreCommandsFactory;
@class HighScoreTextBox;
@class HighScoreUtil;
@class HighScoresCanvas;
@class GameStateFactory;
@class ResizableListenerHandler;
@class ProgressCanvas;
@class ProgressCanvasFactory;
@class BasicColorFactory;
@class ColorChangeEventHandler;
@class CanvasStrings;
@class MyCanvas;
@class MyCommandsFactory;
@class AboutCommandProcessor;
@class AboutPaintableFactory;
@class CommandForm;
@class WebCommandProcessor;
@class AllBinarySensorManager;
@class VirtualKeyboardEventHandler;
@class BasicMotionGesturesHandler;
@class ForcedLogUtil;
@class PreLogUtil;
@class SmallIntegerSingletonFactory;
@class StringMaker;
@class ClientInformationFactory;
@class InApplicationPurchaseFactory;
@class LockableFeature;
@class LockableFeatureFactory;
@class AllBinaryEventObject;
@class EventStrings;
@class AllBinaryMediaManager;
@class MidletStrings;
@class ProgressMidlet;
@class NullThread;
@class ThreadFactoryUtil;
@class ThreadUtil;
@class TimeDelayHelper;
@class BasicArrayList;
@class EnumerationUtil;
@class StdUtil;
@class ABHashtable;
@class GameMidletStateFactory;
@class GameMidletEventHandler;
@class DemoGameMidletEvent;
@class DemoGameMidletStateFactory;
#include "java/util/Enumeration.h"
#include "javax/microedition/lcdui/CommandListener.h"
#if __has_include("org/allbinary/TsUtil.h")
#include "org/allbinary/TsUtil.h"
#endif
#if __has_include("org/allbinary/business/advertisement/GameAdStateFactory.h")
#include "org/allbinary/business/advertisement/GameAdStateFactory.h"
#endif
#if __has_include("org/allbinary/canvas/FullScreenUtil.h")
#include "org/allbinary/canvas/FullScreenUtil.h"
#endif
#if __has_include("org/allbinary/debug/DebugInterface.h")
#include "org/allbinary/debug/DebugInterface.h"
#endif
#if __has_include("org/allbinary/game/GameStrings.h")
#include "org/allbinary/game/GameStrings.h"
#endif
#if __has_include("org/allbinary/game/configuration/feature/Features.h")
#include "org/allbinary/game/configuration/feature/Features.h"
#endif
#if __has_include("org/allbinary/game/displayable/canvas/GameCanvasRunnableInterface.h")
#include "org/allbinary/game/displayable/canvas/GameCanvasRunnableInterface.h"
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
#if __has_include("org/allbinary/graphics/displayable/screen/AboutCommandProcessor.h")
#include "org/allbinary/graphics/displayable/screen/AboutCommandProcessor.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/screen/CommandForm.h")
#include "org/allbinary/graphics/displayable/screen/CommandForm.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/screen/WebCommandProcessor.h")
#include "org/allbinary/graphics/displayable/screen/WebCommandProcessor.h"
#endif
#if __has_include("org/allbinary/midlet/MidletStrings.h")
#include "org/allbinary/midlet/MidletStrings.h"
#endif
#include "org/allbinary/midlet/ProgressMidlet.h"
#if __has_include("org/allbinary/time/TimeDelayHelper.h")
#include "org/allbinary/time/TimeDelayHelper.h"
#endif
#if __has_include("org/allbinary/util/EnumerationUtil.h")
#include "org/allbinary/util/EnumerationUtil.h"
#endif
#include "java/lang/Thread.h"
#if __has_include("org/allbinary/game/midlet/GameMidletStateFactory.h")
#include "org/allbinary/game/midlet/GameMidletStateFactory.h"
#endif

@interface GameMidlet : ProgressMidlet <CommandListener> {
@public
    EnumerationUtil* enumerationUtil;
    BasicColorFactory* basicColorFactory;
    Features* features;
    MidletStrings* midletStrings;
    MyCommandsFactory* myCommandsFactory;
    GameStrings* gameStrings;
    GameAdStateFactory* gameAdStateFactory;
    GameStateFactory* gameStateFactory;
    TsUtil* tsUtil;
    const char* DISPLAYABLE;
    const char* COMMAND_NAME;
    const char* NO_COMMAND;
    const char* NO_DISPLAYABLE;
    const char* COMMAND_ACTION;
    const char* PAUSE_APP_BACKGROUND;
    const char* UN_PAUSE_APP_BACKGROUND;
    AboutCommandProcessor* aboutCommandProcessor;
    WebCommandProcessor* webCommandProcessor;
    GameMidletStateFactory* gameMidletStateFactory;
    TimeDelayHelper* gameStartTimeHelper;
    FullScreenUtil* fullScreenUtil;
    DebugInterface* debugInterface;
    GameCanvasRunnableInterface* allbinaryGameCanvasRunnableInterface;
    Thread* thread;
    CommandForm* loadGameForm;
    bool isFullScreen;
    bool resized;
    bool startedBefore;
}
- (instancetype) init:(ClientInformationFactory*)clientInformationFactory;
- (void) initFields;
- (void) init_;
- (void) setDemo;
- (void) createGame;
- (void) mediaShutdown;
- (void) stopAll;
- (void) pauseApp;
- (void) pauseAppBackground:(bool)background;
- (void) unPauseApp;
- (void) unPauseAppBackground:(bool)background;
- (void) destroyAppInRunnable:(bool)unconditional :(bool)isProgress;
- (void) destroyApp:(bool)unconditional;
- (void) startApp;
- (void) commandAction:(Command*)command :(Displayable*)displayable;
- (void) updateFullScreen;
- (void) onEvent:(AllBinaryEventObject*)eventObject;
- (MyCanvas*) getInputMappingInstructionsCanvas;
- (MyCanvas*) getInputMappingCanvas;
- (MyCanvas*) getAboutCanvas;
- (HelpPaintable*) getHelpPaintable;
- (HighScoresCanvas*) createHighScoresCanvas;
- (void) startGameCanvasRunnableInterface;
- (void) stopGameCanvasRunnableInterface;
- (GameCanvasRunnableInterface*) getGameCanvasRunnableInterface;
- (void) setGameCanvasRunnableInterface:(GameCanvasRunnableInterface*)gameCanvasRunnableInterface;
- (AllBinaryGameLayerManager*) createGameLayerManager;
- (CommandForm*) getGameOptionsForm;
- (void) save;
- (ABHashtable*) getCurrentStateHashtable;
- (void) setLoadGameForm:(LoadGameForm*)loadGameForm;
- (CommandForm*) getLoadGameForm;
- (void) setResized:(bool)resized;
- (bool) isResized;
- (bool) isDemoLoading;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void GameMidlet_staticInit(void);

#if __has_include("org/allbinary/game/displayable/canvas/GameCanvasRunnableInterface.h")
#include "org/allbinary/game/displayable/canvas/GameCanvasRunnableInterface.h"
#endif
#if __has_include("org/allbinary/game/layer/AllBinaryGameLayerManager.h")
#include "org/allbinary/game/layer/AllBinaryGameLayerManager.h"
#endif
#if __has_include("org/allbinary/game/paint/help/HelpPaintable.h")
#include "org/allbinary/game/paint/help/HelpPaintable.h"
#endif
#if __has_include("org/allbinary/game/score/displayable/HighScoresCanvas.h")
#include "org/allbinary/game/score/displayable/HighScoresCanvas.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/MyCanvas.h")
#include "org/allbinary/graphics/displayable/MyCanvas.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/screen/CommandForm.h")
#include "org/allbinary/graphics/displayable/screen/CommandForm.h"
#endif
#if __has_include("org/allbinary/util/ABHashtable.h")
#include "org/allbinary/util/ABHashtable.h"
#endif

#endif // ORG_ALLBINARY_GAME_MIDLET_GAMEMIDLET_H
