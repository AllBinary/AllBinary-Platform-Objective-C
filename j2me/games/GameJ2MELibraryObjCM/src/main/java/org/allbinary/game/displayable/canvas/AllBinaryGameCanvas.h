#ifndef ORG_ALLBINARY_GAME_DISPLAYABLE_CANVAS_ALLBINARYGAMECANVAS_H
#define ORG_ALLBINARY_GAME_DISPLAYABLE_CANVAS_ALLBINARYGAMECANVAS_H
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
@class AllBinaryGameCanvas;
@class ChoiceGroup;
@class CommandListener;
@class Font;
@class Graphics;
@class Item;
@class NullCommandListener;
@class AndroidUtil;
@class J2MEUtil;
@class GameAdStateFactory;
@class BaseGameStatistics;
@class GameStatisticsFactory;
@class Processor;
@class RunnableCanvas;
@class DebugFactory;
@class NoDebug;
@class GameAdState;
@class GameInfo;
@class GameStrings;
@class GameTypeFactory;
@class Intermission;
@class IntermissionCompositeInterface;
@class IntermissionEnableListenerInterface;
@class IntermissionInterface;
@class PlayerTypesFactory;
@class GameCommandsFactory;
@class InGameFeatures;
@class InGameOptionsForm;
@class ChangedGameFeatureListener;
@class GameInitializedEvent;
@class GameInitializedEventHandler;
@class Features;
@class GameFeatureFactory;
@class GameFeatureUtil;
@class InputFeatureFactory;
@class MainFeatureFactory;
@class SensorFeatureFactory;
@class TouchFeatureFactory;
@class GameLevelDisplayChangeEventListenersFactory;
@class BasicBuildGameInitializerFactory;
@class GameInitializationUtil;
@class GameInputStrings;
@class InputProcessor;
@class NoPlayerGameInput;
@class PlayerGameInput;
@class GameKeyEventHandler;
@class AllBinaryGameLayerManager;
@class SWTUtil;
@class ColorFillBasePaintable;
@class ColorFillPaintableFactory;
@class ResourceLoadingLevel;
@class ResourceLoadingLevelFactory;
@class HighScore;
@class HighScoresHelperBaseInterface;
@class HighScoresFactoryInterface;
@class HighScoresPaintable;
@class NullHighScoresSingletonFactory;
@class HighScoreTextBox;
@class GameState;
@class GameStateFactory;
@class GraphicsStrings;
@class Rectangle;
@class ScreenCapture;
@class ScreenCaptureFactory;
@class ProgressCanvas;
@class ProgressCanvasFactory;
@class BasicColorFactory;
@class BasicColorSetUtil;
@class CanvasStrings;
@class DisplayInfoSingleton;
@class GameTickDisplayInfoSingleton;
@class MyCommandsFactory;
@class DisplayChangeEvent;
@class DisplayChangeEventHandler;
@class DisplayChangeEventListener;
@class MyFontProcessor;
@class UpdateMyFontInterface;
@class UpdateMyFontProcessor;
@class CommandCurrentSelectionFormFactory;
@class FormPaintable;
@class FormType;
@class FormTypeFactory;
@class ScrollSelectionForm;
@class ScrollSelectionFormNoneFactory;
@class CommandTextItemArrayFactory;
@class ABCustomItem;
@class CurrentDisplayableFactory;
@class OpenGLFeatureFactory;
@class OpenGLFeatureUtil;
@class OpenGLThreadUtil;
@class InitUpdatePaintable;
@class NullInitUpdatePaintable;
@class NullPaintable;
@class Paintable;
@class PaintableInterface;
@class OpenGLImageSpecificFactory;
@class SensorGameUpdateProcessor;
@class SingleSensorGameUpdateProcessor;
@class BaseTouchInput;
@class NoButtonsTouchInputFactory;
@class TouchButtonFactory;
@class TouchButtonsPaintableFactory;
@class TouchScreenFactory;
@class BasicMotionGesturesHandler;
@class ABSystemWrapper;
@class ForcedLogUtil;
@class LogUtil;
@class PreLogUtil;
@class StringMaker;
@class StringUtil;
@class OperatingSystemFactory;
@class AbeClientInformationInterface;
@class AllBinaryEventObject;
@class EventStrings;
@class AllBinaryMediaManager;
@class PlayerQueue;
@class PrimaryPlayerQueueFactory;
@class SecondaryPlayerQueueFactory;
@class SelectSound;
@class CommonSeps;
@class CommonStrings;
@class SecondaryThreadPool;
@class GameTickTimeDelayHelper;
@class GameTickTimeDelayHelperFactory;
@class TimeDelayHelper;
@class ABHashtable;
@class BasicArrayList;
@class BasicArrayListD;
@class BasicArrayListUtil;
@class AllBinaryGameCanvasInterface;
@class GameCanvasRunnableInterface;
@class MenuListener;
@class PopupMenuInterface;
@class GameCanvasRunnable;
@class GameCanvasPauseRunnable;
@class FormUtil;
@class MyFormUtil;
@class EndGameInfo;
@class NoMenuInputProcessor;
@class BasicMenuInputProcessor;
@class DemoGameBehavior;
@class BaseMenuBehavior;
@class BaseGameBehavior;
@class BasicPopupMenuPaintable;
@class PopupMenuInputProcessor;
@class InGameMenuBehavior;
@class GameLimitedCommandTextItemArrayFactory;
@class PopupCommandFormInputProcessor;
@class NullWaitGameRunnable;
@class GameProcessor;
@class CheatGameInputProcessor;
@class EndGameProcessor;
@class StartIntermissionProcessor;
@class EndGamePaintable;
@class NullDemoPaintable;
@class DemoPaintableInterface;
@class GameCanvasInputProcessor;
@class FormInputProcessor;
@class SaveHighScoreRunnable;
#if __has_include("org/allbinary/business/advertisement/GameAdStateFactory.h")
#include "org/allbinary/business/advertisement/GameAdStateFactory.h"
#endif
#if __has_include("org/allbinary/canvas/BaseGameStatistics.h")
#include "org/allbinary/canvas/BaseGameStatistics.h"
#endif
#if __has_include("org/allbinary/canvas/Processor.h")
#include "org/allbinary/canvas/Processor.h"
#endif
#include "org/allbinary/canvas/RunnableCanvas.h"
#if __has_include("org/allbinary/game/GameStrings.h")
#include "org/allbinary/game/GameStrings.h"
#endif
#if __has_include("org/allbinary/game/GameTypeFactory.h")
#include "org/allbinary/game/GameTypeFactory.h"
#endif
#include "org/allbinary/game/IntermissionCompositeInterface.h"
#include "org/allbinary/game/IntermissionEnableListenerInterface.h"
#if __has_include("org/allbinary/game/IntermissionInterface.h")
#include "org/allbinary/game/IntermissionInterface.h"
#endif
#if __has_include("org/allbinary/game/configuration/feature/TouchFeatureFactory.h")
#include "org/allbinary/game/configuration/feature/TouchFeatureFactory.h"
#endif
#if __has_include("org/allbinary/game/init/BasicBuildGameInitializerFactory.h")
#include "org/allbinary/game/init/BasicBuildGameInitializerFactory.h"
#endif
#if __has_include("org/allbinary/game/input/GameInputStrings.h")
#include "org/allbinary/game/input/GameInputStrings.h"
#endif
#if __has_include("org/allbinary/game/input/InputProcessor.h")
#include "org/allbinary/game/input/InputProcessor.h"
#endif
#if __has_include("org/allbinary/game/input/PlayerGameInput.h")
#include "org/allbinary/game/input/PlayerGameInput.h"
#endif
#if __has_include("org/allbinary/game/input/event/GameKeyEventHandler.h")
#include "org/allbinary/game/input/event/GameKeyEventHandler.h"
#endif
#if __has_include("org/allbinary/game/layer/AllBinaryGameLayerManager.h")
#include "org/allbinary/game/layer/AllBinaryGameLayerManager.h"
#endif
#if __has_include("org/allbinary/game/paint/ColorFillBasePaintable.h")
#include "org/allbinary/game/paint/ColorFillBasePaintable.h"
#endif
#if __has_include("org/allbinary/game/score/HighScoresHelperBaseInterface.h")
#include "org/allbinary/game/score/HighScoresHelperBaseInterface.h"
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
#if __has_include("org/allbinary/game/state/GameStateFactory.h")
#include "org/allbinary/game/state/GameStateFactory.h"
#endif
#if __has_include("org/allbinary/graphics/ScreenCapture.h")
#include "org/allbinary/graphics/ScreenCapture.h"
#endif
#if __has_include("org/allbinary/graphics/color/BasicColorFactory.h")
#include "org/allbinary/graphics/color/BasicColorFactory.h"
#endif
#if __has_include("org/allbinary/graphics/color/BasicColorSetUtil.h")
#include "org/allbinary/graphics/color/BasicColorSetUtil.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/GameTickDisplayInfoSingleton.h")
#include "org/allbinary/graphics/displayable/GameTickDisplayInfoSingleton.h"
#endif
#include "org/allbinary/graphics/displayable/event/DisplayChangeEventListener.h"
#if __has_include("org/allbinary/graphics/font/MyFontProcessor.h")
#include "org/allbinary/graphics/font/MyFontProcessor.h"
#endif
#include "org/allbinary/graphics/font/UpdateMyFontInterface.h"
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
#if __has_include("org/allbinary/input/gyro/SensorGameUpdateProcessor.h")
#include "org/allbinary/input/gyro/SensorGameUpdateProcessor.h"
#endif
#if __has_include("org/allbinary/input/motion/button/BaseTouchInput.h")
#include "org/allbinary/input/motion/button/BaseTouchInput.h"
#endif
#if __has_include("org/allbinary/input/motion/button/TouchButtonFactory.h")
#include "org/allbinary/input/motion/button/TouchButtonFactory.h"
#endif
#if __has_include("org/allbinary/input/motion/gesture/observer/BasicMotionGesturesHandler.h")
#include "org/allbinary/input/motion/gesture/observer/BasicMotionGesturesHandler.h"
#endif
// #include "org/allbinary/logic/ABSystemWrapper.h"
// #include "org/allbinary/logic/communication/log/LogUtil.h"
#if __has_include("org/allbinary/media/audio/PlayerQueue.h")
#include "org/allbinary/media/audio/PlayerQueue.h"
#endif
// #include "org/allbinary/string/CommonStrings.h"
#if __has_include("org/allbinary/time/GameTickTimeDelayHelper.h")
#include "org/allbinary/time/GameTickTimeDelayHelper.h"
#endif
#if __has_include("org/allbinary/time/TimeDelayHelper.h")
#include "org/allbinary/time/TimeDelayHelper.h"
#endif
#if __has_include("org/allbinary/util/ABHashtable.h")
#include "org/allbinary/util/ABHashtable.h"
#endif
#if __has_include("org/allbinary/util/BasicArrayList.h")
#include "org/allbinary/util/BasicArrayList.h"
#endif
#include "java/lang/Integer.h"
#include "java/lang/Thread.h"
#include "org/allbinary/game/displayable/canvas/AllBinaryGameCanvasInterface.h"
#include "org/allbinary/game/displayable/canvas/GameCanvasRunnableInterface.h"
#include "org/allbinary/game/displayable/canvas/MenuListener.h"
#include "org/allbinary/game/displayable/canvas/PopupMenuInterface.h"
#if __has_include("org/allbinary/game/displayable/canvas/GameCanvasRunnable.h")
#include "org/allbinary/game/displayable/canvas/GameCanvasRunnable.h"
#endif
#if __has_include("org/allbinary/game/displayable/canvas/GameCanvasPauseRunnable.h")
#include "org/allbinary/game/displayable/canvas/GameCanvasPauseRunnable.h"
#endif
#if __has_include("org/allbinary/game/displayable/canvas/FormUtil.h")
#include "org/allbinary/game/displayable/canvas/FormUtil.h"
#endif
#if __has_include("org/allbinary/game/displayable/canvas/MyFormUtil.h")
#include "org/allbinary/game/displayable/canvas/MyFormUtil.h"
#endif
#if __has_include("org/allbinary/game/displayable/canvas/EndGameInfo.h")
#include "org/allbinary/game/displayable/canvas/EndGameInfo.h"
#endif
#if __has_include("org/allbinary/game/displayable/canvas/BasicMenuInputProcessor.h")
#include "org/allbinary/game/displayable/canvas/BasicMenuInputProcessor.h"
#endif
#if __has_include("org/allbinary/game/displayable/canvas/DemoGameBehavior.h")
#include "org/allbinary/game/displayable/canvas/DemoGameBehavior.h"
#endif
#if __has_include("org/allbinary/game/displayable/canvas/BaseMenuBehavior.h")
#include "org/allbinary/game/displayable/canvas/BaseMenuBehavior.h"
#endif
#if __has_include("org/allbinary/game/displayable/canvas/DemoPaintableInterface.h")
#include "org/allbinary/game/displayable/canvas/DemoPaintableInterface.h"
#endif

@interface AllBinaryGameCanvas : RunnableCanvas <AllBinaryGameCanvasInterface, GameCanvasRunnableInterface, MenuListener, IntermissionCompositeInterface, IntermissionEnableListenerInterface, PopupMenuInterface, DisplayChangeEventListener, UpdateMyFontInterface> {
@public
    BasicColorFactory* basicColorFactory;
    BasicColorSetUtil* basicSetColorUtil;
    TouchFeatureFactory* touchFeatureFactory;
    OpenGLFeatureFactory* openGLFeatureFactory;
    TouchButtonFactory* touchButtonFactory;
    GameAdStateFactory* gameAdStateFactory;
    GameStrings* gameStrings;
    GameInputStrings* gameInputStrings;
    GameStateFactory* gameStateFactory;
    GameTickTimeDelayHelper* gameTickTimeDelayHelper;
    GameTickDisplayInfoSingleton* gameTickDisplayInfoSingleton;
    GameCanvasRunnable* gameRunnable;
    GameCanvasPauseRunnable* gamePauseRunnable;
    FormUtil* formUtil;
    MyFormUtil* myFormUtil;
    MyFontProcessor* updateMyFontProcessor;
    MyFontProcessor* myFontProcessor;
    Paintable* gameSpecificPaintable;
    SensorGameUpdateProcessor* sensorGameUpdateProcessor;
    EndGameInfo* endGameInfo;
    IntermissionInterface* startIntermissionInterface;
    IntermissionInterface* endLevelIntermissionInterface;
    AllBinaryGameLayerManager* gameLayerManager;
    GameState* gameState;
    bool gameOver;
    bool initialized;
    TimeDelayHelper* gameStateTimeHelper;
    HighScoresHelperBaseInterface* highScoresHelper;
    bool highScoreSubmitted;
    HighScoresPaintable* realHighScoresPaintable;
    Paintable* highScoresPaintable;
    BasicArrayList* localPlayerGameInputList;
    bool isCheating;
    ABHashtable* hashtable;
    bool isSingleKeyRepeatableProcessing;
    BasicBuildGameInitializerFactory* gameInitializationInterfaceFactoryInterface;
    Paintable* touchButtonsPaintable;
    Paintable* touchPaintable;
    PlayerGameInput* cheatProcessor;
    Processor* gameInputProcessor;
    Processor* endGameProcessor;
    Processor* realEndGameProcessor;
    Processor* startIntermissionProcessor;
    Processor* realStartIntermissionProcessor;
    Paintable* endGamePaintable;
    Paintable* endGameStatePaintable;
    Paintable* nonBotPaintable;
    Paintable* intermissionPaintable;
    InitUpdatePaintable* startIntermissionPaintable;
    Processor* mainStateProcessor;
    Processor* processGameProcessor;
    HighScoresFactoryInterface* highScoresFactoryInterface;
    int32_t startLevel;
    BasicMenuInputProcessor* mainMenuInputProcessor;
    BasicMenuInputProcessor* popupMenuInputProcessor;
    BasicMenuInputProcessor* menuInputProcessor;
    ScrollSelectionForm* menuForm;
    Paintable* formPaintable;
    Paintable* openMenuPaintable;
    Paintable* menuPaintable;
    BaseTouchInput* currentTouchInputFactory;
    ColorFillBasePaintable* colorFillPaintable;
    BaseGameStatistics* baseGameStatistics;
    PlayerQueue* primaryPlayerQueue;
    PlayerQueue* secondaryPlayerQueue;
    const char* BUILD_GAME;
    GameTypeFactory* gameTypeFactory;
    ScreenCapture* screenCapture;
    BasicMotionGesturesHandler* basicMotionGesturesHandler;
    GameKeyEventHandler* gameKeyEventHandler;
    DemoGameBehavior* gameBehavior;
    BaseMenuBehavior* menuBehavior;
    PaintableInterface* progressPaintable;
    int32_t fontHeightP;
    DemoPaintableInterface* gameCanvasStartListener;
    InputProcessor* rawGameInputProcessor;
    InputProcessor* rawInputProcessor;
    InputProcessor* inputProcessor;
    int64_t YIELD_SLEEP;
}
- (instancetype) init:(CommandListener*)commandListener :(AllBinaryGameLayerManager*)gameLayerManager :(HighScoresFactoryInterface*)highScoresFactoryInterface :(BasicBuildGameInitializerFactory*)gameInitializationInterfaceFactoryInterface :(bool)buffered;
- (void) initFields;
- (void) updateMeasurement:(Graphics*)graphics;
- (BaseMenuBehavior*) getInGameMenuBehavior;
- (void) setCurrentThread;
- (void) onEvent:(AllBinaryEventObject*)eventObject;
- (void) onDisplayChangeEvent:(DisplayChangeEvent*)displayChangeEvent;
- (void) updateMenuFromEvent:(DisplayChangeEvent*)displayChangeEvent;
- (void) processSleep;
- (void) initPopupMenu;
- (void) initMenu;
- (void) initMenu2;
- (void) updateMenu;
- (void) updateMenu2;
- (void) pause;
- (void) unPause;
- (bool) isPausable;
- (void) popupMenu;
- (void) popupMenu2;
- (void) toggleMenu;
- (void) closeMenu;
- (void) closeMenu2;
- (void) open;
- (void) close;
- (void) processorInit;
- (void) setProcessGameProcessorInit;
- (void) initSpecialPaint;
- (void) initMethod:(AllBinaryGameLayerManager*)gameLayerManager :(bool)buffered;
- (void) notifyIntermission:(bool)enable;
- (void) mediaInit;
- (void) initConfigurable:(AbeClientInformationInterface*)abeClientInformation;
- (void) initApp:(AbeClientInformationInterface*)abeClientInformation;
- (void) initTouch;
- (void) updateCurrentTouchInputFactory:(BaseTouchInput*)nextTouchInput;
- (void) updateTouch;
- (void) updateTouch2;
- (void) postInitTouch;
- (void) initCommands:(CommandListener*)cmdListener;
- (void) addCommands;
- (void) itemStateChanged:(Item*)item;
- (void) updateScreenButtonPaintable;
- (void) updateScreenButtonPaintable2;
- (AllBinaryGameLayerManager*) getLayerManager;
- (void) setLayerManager:(AllBinaryGameLayerManager*)layerManager;
- (bool) isGameOver;
- (void) setGameOver:(bool)gameOver;
- (void) processGameOver;
- (bool) isHighScoreSubmitted;
- (void) setHighScoreSubmitted:(bool)highScoreSubmitted;
- (GameState*) getGameState;
- (void) setGameState:(GameState*)gameState;
- (void) updateGameState;
- (void) updateGameKeyEventProcessor;
- (void) removeAllGameKeyInputListenersOnBuild;
- (void) removeAllGameKeyInputListeners;
- (void) removeAllGameKeyInputListeners2;
- (void) removeKeyInputListener:(PlayerGameInput*)playerGameInput;
- (void) updateEndGameProcessor;
- (void) updateEndGameProcessor2;
- (void) buildGameInit:(bool)isPortion;
- (void) cleanupGame;
- (void) loadResourceLoadingLevel:(ResourceLoadingLevel*)resourceLoadingLevel;
- (void) loadResources:(int32_t)level;
- (void) updateColor;
- (void) buildGame:(int32_t)portion;
- (void) buildGame2;
- (void) addKeyInputListener:(PlayerGameInput*)playerGameInput;
- (void) setGameCanvasStartListener:(DemoPaintableInterface*)gameCanvasStartListener;
- (void) loadState;
- (ABHashtable*) getLoadStateHashtable;
- (void) setLoadStateHashtable:(ABHashtable*)hashtable;
- (ABHashtable*) getCurrentStateHashtable;
- (void) paintGameOver:(Graphics*)graphics;
- (void) draw:(Graphics*)graphics;
- (void) clear:(Graphics*)graphics;
- (void) paint:(Graphics*)graphics;
- (void) paintThreed:(Graphics*)graphics;
- (void) processEndLevelIntermissionGameState;
- (void) nonBotPaint:(Graphics*)graphics;
- (void) paintIntermission:(Graphics*)graphics;
- (void) keyPressed:(int32_t)keyCode;
- (void) keyReleased:(int32_t)keyCode;
- (void) keyRepeated:(int32_t)keyCode;
- (void) keyPressedByDevice:(int32_t)keyCode :(int32_t)deviceId;
- (void) keyRepeatedByDevice:(int32_t)keyCode :(int32_t)deviceId;
- (void) keyReleasedByDevice:(int32_t)keyCode :(int32_t)deviceId;
- (void) handleRawKey:(int32_t)keyCode :(int32_t)deviceId :(bool)repeated;
- (int32_t) endProgress:(bool)isProgress;
- (void) processPlayingGame;
- (void) threadInit;
- (void) processGame;
- (void) notifyDonePainting;
- (void) shouldWait;
- (void) run;
- (void) run2;
- (void) run3;
- (void) setRunning:(bool)running;
- (void) end;
- (void) endGameThread;
- (HighScore*) createHighScore:(int64_t)score;
- (void) setHighScore:(AbeClientInformationInterface*)abeClientInformation :(const char*)name :(int64_t)score :(bool)autoSubmit :(bool)isLast;
- (void) setHighScore2:(AbeClientInformationInterface*)abeClientInformation :(const char*)name :(int64_t)score :(bool)autoSubmit :(bool)isLast;
- (TimeDelayHelper*) getGameStateTimeHelper;
- (void) setInitialized:(bool)initialized;
- (bool) isInitialized;
- (int32_t) getSourceId;
- (void) setProgressPaintable:(PaintableInterface*)paintable;
- (IntermissionInterface*) getStartIntermissionInterface;
- (IntermissionInterface*) getEndLevelIntermissionInterface;
- (void) setTouchPaintableP:(Paintable*)paintable;
- (Paintable*) getTouchPaintableP;
- (void) setEndGamePaintable:(Paintable*)endGamePaintable;
- (Paintable*) getEndGamePaintable;
- (void) setIntermissionPaintable:(Paintable*)intermissionPaintable;
- (Paintable*) getIntermissionPaintable;
- (EndGameInfo*) getEndGameInfoP;
- (void) setHighScoresPaintable:(Paintable*)highScoresPaintable;
- (Paintable*) getHighScoresPaintable;
- (HighScoresPaintable*) getRealHighScoresPaintable;
- (void) clearPlayerGameInputList;
- (void) addPlayerGameInput:(PlayerGameInput*)playerGameInput;
- (void) setMenuInputProcessor:(BasicMenuInputProcessor*)menuInputProcessor;
- (BasicMenuInputProcessor*) getMenuInputProcessor;
- (ScrollSelectionForm*) getMenuForm;
- (void) setMenuForm:(ScrollSelectionForm*)menuForm;
- (int32_t) getStartLevel;
- (void) setStartLevel:(int32_t)startLevel;
- (void) setTouchButtonsPaintable:(Paintable*)touchButtonsPaintable;
- (Paintable*) getTouchButtonsPaintable;
- (void) setGameInputProcessor:(Processor*)gameInputProcessor;
- (Processor*) getGameInputProcessor;
- (void) setEndGameProcessor:(Processor*)endGameProcessor;
- (Processor*) getEndGameProcessor;
- (void) setEndGameStatePaintable:(Paintable*)endGameStatePaintable;
- (Paintable*) getEndGameStatePaintable;
- (void) setNonBotPaintableP:(Paintable*)nonBotPaintable;
- (Paintable*) getNonBotPaintableP;
- (void) setStartIntermissionPaintable:(InitUpdatePaintable*)startIntermissionPaintable;
- (InitUpdatePaintable*) getStartIntermissionPaintable;
- (void) setMainStateProcessor:(Processor*)mainStateProcessor;
- (Processor*) getMainStateProcessor;
- (void) setProcessGameProcessor:(Processor*)processGameProcessor;
- (Processor*) getProcessGameProcessor;
- (void) setOpenMenuPaintable:(Paintable*)openMenuPaintable;
- (Paintable*) getOpenMenuPaintable;
- (void) setPopupMenuInputProcessor:(BasicMenuInputProcessor*)popupMenuInputProcessor;
- (BasicMenuInputProcessor*) getPopupMenuInputProcessor;
- (SensorGameUpdateProcessor*) getSensorGameUpdateProcessor;
- (InputProcessor*) getRawGameInputProcessor;
- (InputProcessor*) getRawInputProcessor;
- (void) setInputProcessor:(InputProcessor*)inputProcessor;
- (InputProcessor*) getInputProcessor;
- (void) setMenuPaintable:(Paintable*)menuPaintable;
- (Paintable*) getMenuPaintable;
- (void) setFormPaintable:(Paintable*)formPaintable;
- (Paintable*) getFormPaintable;
- (void) setGameSpecificPaintableP:(Paintable*)gameSpecificPaintable;
- (Paintable*) getGameSpecificPaintableP;
- (bool) isSingleThread;
- (bool) isRunningInAnotherThread;
- (int32_t) getType;
- (const char*) getTitle;
- (bool) isPaused;
@end

static constexpr int32_t AllBinaryGameCanvas_TYPE = 2;
// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void AllBinaryGameCanvas_staticInit(void);

#if __has_include("org/allbinary/canvas/Processor.h")
#include "org/allbinary/canvas/Processor.h"
#endif
#if __has_include("org/allbinary/game/IntermissionInterface.h")
#include "org/allbinary/game/IntermissionInterface.h"
#endif
#if __has_include("org/allbinary/game/input/InputProcessor.h")
#include "org/allbinary/game/input/InputProcessor.h"
#endif
#if __has_include("org/allbinary/game/layer/AllBinaryGameLayerManager.h")
#include "org/allbinary/game/layer/AllBinaryGameLayerManager.h"
#endif
#if __has_include("org/allbinary/game/score/HighScore.h")
#include "org/allbinary/game/score/HighScore.h"
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
#if __has_include("org/allbinary/graphics/paint/InitUpdatePaintable.h")
#include "org/allbinary/graphics/paint/InitUpdatePaintable.h"
#endif
#if __has_include("org/allbinary/graphics/paint/Paintable.h")
#include "org/allbinary/graphics/paint/Paintable.h"
#endif
#if __has_include("org/allbinary/input/gyro/SensorGameUpdateProcessor.h")
#include "org/allbinary/input/gyro/SensorGameUpdateProcessor.h"
#endif
#if __has_include("org/allbinary/time/TimeDelayHelper.h")
#include "org/allbinary/time/TimeDelayHelper.h"
#endif
#if __has_include("org/allbinary/util/ABHashtable.h")
#include "org/allbinary/util/ABHashtable.h"
#endif

#endif // ORG_ALLBINARY_GAME_DISPLAYABLE_CANVAS_ALLBINARYGAMECANVAS_H
