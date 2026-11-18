// Generated Code Do Not Modify
#include "org/allbinary/game/displayable/canvas/AllBinaryGameCanvas.h"
#include "javax/microedition/lcdui/ChoiceGroup.h"
#include "javax/microedition/lcdui/CommandListener.h"
#include "javax/microedition/lcdui/Font.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "javax/microedition/lcdui/Item.h"
#include "javax/microedition/lcdui/NullCommandListener.h"
#include "org/allbinary/AndroidUtil.h"
#include "org/allbinary/J2MEUtil.h"
#include "org/allbinary/business/advertisement/GameAdStateFactory.h"
#include "org/allbinary/canvas/BaseGameStatistics.h"
#include "org/allbinary/canvas/GameStatisticsFactory.h"
#include "org/allbinary/canvas/Processor.h"
#include "org/allbinary/debug/DebugFactory.h"
#include "org/allbinary/debug/NoDebug.h"
#include "org/allbinary/game/GameAdState.h"
#include "org/allbinary/game/GameInfo.h"
#include "org/allbinary/game/GameStrings.h"
#include "org/allbinary/game/GameTypeFactory.h"
#include "org/allbinary/game/Intermission.h"
#include "org/allbinary/game/IntermissionInterface.h"
#include "org/allbinary/game/PlayerTypesFactory.h"
#include "org/allbinary/game/commands/GameCommandsFactory.h"
#include "org/allbinary/game/configuration/InGameFeatures.h"
#include "org/allbinary/game/configuration/InGameOptionsForm.h"
#include "org/allbinary/game/configuration/event/ChangedGameFeatureListener.h"
#include "org/allbinary/game/configuration/event/GameInitializedEvent.h"
#include "org/allbinary/game/configuration/event/GameInitializedEventHandler.h"
#include "org/allbinary/game/configuration/feature/Features.h"
#include "org/allbinary/game/configuration/feature/GameFeatureFactory.h"
#include "org/allbinary/game/configuration/feature/GameFeatureUtil.h"
#include "org/allbinary/game/configuration/feature/InputFeatureFactory.h"
#include "org/allbinary/game/configuration/feature/MainFeatureFactory.h"
#include "org/allbinary/game/configuration/feature/SensorFeatureFactory.h"
#include "org/allbinary/game/configuration/feature/TouchFeatureFactory.h"
#include "org/allbinary/game/displayable/GameLevelDisplayChangeEventListenersFactory.h"
#include "org/allbinary/game/init/BasicBuildGameInitializerFactory.h"
#include "org/allbinary/game/init/GameInitializationUtil.h"
#include "org/allbinary/game/input/GameInputStrings.h"
#include "org/allbinary/game/input/InputProcessor.h"
#include "org/allbinary/game/input/NoPlayerGameInput.h"
#include "org/allbinary/game/input/PlayerGameInput.h"
#include "org/allbinary/game/input/event/GameKeyEventHandler.h"
#include "org/allbinary/game/layer/AllBinaryGameLayerManager.h"
#include "org/allbinary/game/layer/SWTUtil.h"
#include "org/allbinary/game/paint/ColorFillBasePaintable.h"
#include "org/allbinary/game/paint/ColorFillPaintableFactory.h"
#include "org/allbinary/game/resource/ResourceLoadingLevel.h"
#include "org/allbinary/game/resource/ResourceLoadingLevelFactory.h"
#include "org/allbinary/game/score/HighScore.h"
#include "org/allbinary/game/score/HighScoresHelperBaseInterface.h"
#include "org/allbinary/game/score/HighScoresFactoryInterface.h"
#include "org/allbinary/game/score/HighScoresPaintable.h"
#include "org/allbinary/game/score/NullHighScoresSingletonFactory.h"
#include "org/allbinary/game/score/displayable/HighScoreTextBox.h"
#include "org/allbinary/game/state/GameState.h"
#include "org/allbinary/game/state/GameStateFactory.h"
#include "org/allbinary/graphics/GraphicsStrings.h"
#include "org/allbinary/graphics/Rectangle.h"
#include "org/allbinary/graphics/ScreenCapture.h"
#include "org/allbinary/graphics/ScreenCaptureFactory.h"
#include "org/allbinary/graphics/canvas/transition/progress/ProgressCanvas.h"
#include "org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory.h"
#include "org/allbinary/graphics/color/BasicColorFactory.h"
#include "org/allbinary/graphics/color/BasicColorSetUtil.h"
#include "org/allbinary/graphics/displayable/CanvasStrings.h"
#include "org/allbinary/graphics/displayable/DisplayInfoSingleton.h"
#include "org/allbinary/graphics/displayable/GameTickDisplayInfoSingleton.h"
#include "org/allbinary/graphics/displayable/command/MyCommandsFactory.h"
#include "org/allbinary/graphics/displayable/event/DisplayChangeEvent.h"
#include "org/allbinary/graphics/displayable/event/DisplayChangeEventHandler.h"
#include "org/allbinary/graphics/font/MyFontProcessor.h"
#include "org/allbinary/graphics/font/UpdateMyFontProcessor.h"
#include "org/allbinary/graphics/form/CommandCurrentSelectionFormFactory.h"
#include "org/allbinary/graphics/form/FormPaintable.h"
#include "org/allbinary/graphics/form/FormType.h"
#include "org/allbinary/graphics/form/FormTypeFactory.h"
#include "org/allbinary/graphics/form/ScrollSelectionForm.h"
#include "org/allbinary/graphics/form/ScrollSelectionFormNoneFactory.h"
#include "org/allbinary/graphics/form/item/CommandTextItemArrayFactory.h"
#include "org/allbinary/graphics/form/item/ABCustomItem.h"
#include "org/allbinary/graphics/opengles/CurrentDisplayableFactory.h"
#include "org/allbinary/graphics/opengles/OpenGLFeatureFactory.h"
#include "org/allbinary/graphics/opengles/OpenGLFeatureUtil.h"
#include "org/allbinary/graphics/opengles/OpenGLThreadUtil.h"
#include "org/allbinary/graphics/paint/InitUpdatePaintable.h"
#include "org/allbinary/graphics/paint/NullInitUpdatePaintable.h"
#include "org/allbinary/graphics/paint/NullPaintable.h"
#include "org/allbinary/graphics/paint/Paintable.h"
#include "org/allbinary/graphics/paint/PaintableInterface.h"
#include "org/allbinary/image/opengles/OpenGLImageSpecificFactory.h"
#include "org/allbinary/input/gyro/SensorGameUpdateProcessor.h"
#include "org/allbinary/input/gyro/SingleSensorGameUpdateProcessor.h"
#include "org/allbinary/input/motion/button/BaseTouchInput.h"
#include "org/allbinary/input/motion/button/NoButtonsTouchInputFactory.h"
#include "org/allbinary/input/motion/button/TouchButtonFactory.h"
#include "org/allbinary/input/motion/button/TouchButtonsPaintableFactory.h"
#include "org/allbinary/input/motion/button/TouchScreenFactory.h"
#include "org/allbinary/input/motion/gesture/observer/BasicMotionGesturesHandler.h"
#include "org/allbinary/logic/communication/log/ForcedLogUtil.h"
#include "org/allbinary/logic/communication/log/PreLogUtil.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/logic/system/os/OperatingSystemFactory.h"
#include "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.h"
#include "org/allbinary/logic/util/event/AllBinaryEventObject.h"
#include "org/allbinary/logic/util/event/EventStrings.h"
#include "org/allbinary/media/audio/AllBinaryMediaManager.h"
#include "org/allbinary/media/audio/PlayerQueue.h"
#include "org/allbinary/media/audio/PrimaryPlayerQueueFactory.h"
#include "org/allbinary/media/audio/SecondaryPlayerQueueFactory.h"
#include "org/allbinary/media/audio/SelectSound.h"
#include "org/allbinary/string/CommonSeps.h"
#include "org/allbinary/thread/SecondaryThreadPool.h"
#include "org/allbinary/time/GameTickTimeDelayHelper.h"
#include "org/allbinary/time/GameTickTimeDelayHelperFactory.h"
#include "org/allbinary/time/TimeDelayHelper.h"
#include "org/allbinary/util/ABHashtable.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/util/BasicArrayListD.h"
#include "org/allbinary/util/BasicArrayListUtil.h"
#include "org/allbinary/game/displayable/canvas/AllBinaryGameCanvasInterface.h"
#include "org/allbinary/game/displayable/canvas/GameCanvasRunnableInterface.h"
#include "org/allbinary/game/displayable/canvas/MenuListener.h"
#include "org/allbinary/game/displayable/canvas/PopupMenuInterface.h"
#include "org/allbinary/game/displayable/canvas/GameCanvasRunnable.h"
#include "org/allbinary/game/displayable/canvas/GameCanvasPauseRunnable.h"
#include "org/allbinary/game/displayable/canvas/FormUtil.h"
#include "org/allbinary/game/displayable/canvas/MyFormUtil.h"
#include "org/allbinary/game/displayable/canvas/EndGameInfo.h"
#include "org/allbinary/game/displayable/canvas/NoMenuInputProcessor.h"
#include "org/allbinary/game/displayable/canvas/BasicMenuInputProcessor.h"
#include "org/allbinary/game/displayable/canvas/DemoGameBehavior.h"
#include "org/allbinary/game/displayable/canvas/BaseMenuBehavior.h"
#include "org/allbinary/game/displayable/canvas/BaseGameBehavior.h"
#include "org/allbinary/game/displayable/canvas/BasicPopupMenuPaintable.h"
#include "org/allbinary/game/displayable/canvas/PopupMenuInputProcessor.h"
#include "org/allbinary/game/displayable/canvas/InGameMenuBehavior.h"
#include "org/allbinary/game/displayable/canvas/GameLimitedCommandTextItemArrayFactory.h"
#include "org/allbinary/game/displayable/canvas/PopupCommandFormInputProcessor.h"
#include "org/allbinary/game/displayable/canvas/NullWaitGameRunnable.h"
#include "org/allbinary/game/displayable/canvas/GameProcessor.h"
#include "org/allbinary/game/displayable/canvas/CheatGameInputProcessor.h"
#include "org/allbinary/game/displayable/canvas/EndGameProcessor.h"
#include "org/allbinary/game/displayable/canvas/StartIntermissionProcessor.h"
#include "org/allbinary/game/displayable/canvas/EndGamePaintable.h"
#include "org/allbinary/game/displayable/canvas/NullDemoPaintable.h"
#include "org/allbinary/game/displayable/canvas/DemoPaintableInterface.h"
#include "org/allbinary/game/displayable/canvas/GameCanvasInputProcessor.h"
#include "org/allbinary/game/displayable/canvas/FormInputProcessor.h"
#include "org/allbinary/game/displayable/canvas/SaveHighScoreRunnable.h"
#if __has_include("org/allbinary/game/displayable/canvas/GenericOperatingSystem.h")
#include "org/allbinary/game/displayable/canvas/GenericOperatingSystem.h"
#endif
#if __has_include("javax/microedition/lcdui/GenericOperatingSystem.h")
#include "javax/microedition/lcdui/GenericOperatingSystem.h"
#endif
#if __has_include("javax/microedition/lcdui/GenericOperatingSystem.h")
#include "javax/microedition/lcdui/GenericOperatingSystem.h"
#endif
#if __has_include("javax/microedition/lcdui/GenericOperatingSystem.h")
#include "javax/microedition/lcdui/GenericOperatingSystem.h"
#endif
#if __has_include("javax/microedition/lcdui/GenericOperatingSystem.h")
#include "javax/microedition/lcdui/GenericOperatingSystem.h"
#endif
#if __has_include("javax/microedition/lcdui/GenericOperatingSystem.h")
#include "javax/microedition/lcdui/GenericOperatingSystem.h"
#endif
#if __has_include("javax/microedition/lcdui/GenericOperatingSystem.h")
#include "javax/microedition/lcdui/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/GenericOperatingSystem.h")
#include "org/allbinary/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/GenericOperatingSystem.h")
#include "org/allbinary/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/business/advertisement/GenericOperatingSystem.h")
#include "org/allbinary/business/advertisement/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/canvas/GenericOperatingSystem.h")
#include "org/allbinary/canvas/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/canvas/GenericOperatingSystem.h")
#include "org/allbinary/canvas/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/canvas/GenericOperatingSystem.h")
#include "org/allbinary/canvas/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/canvas/GenericOperatingSystem.h")
#include "org/allbinary/canvas/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/debug/GenericOperatingSystem.h")
#include "org/allbinary/debug/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/debug/GenericOperatingSystem.h")
#include "org/allbinary/debug/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/game/GenericOperatingSystem.h")
#include "org/allbinary/game/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/game/GenericOperatingSystem.h")
#include "org/allbinary/game/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/game/GenericOperatingSystem.h")
#include "org/allbinary/game/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/game/GenericOperatingSystem.h")
#include "org/allbinary/game/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/game/GenericOperatingSystem.h")
#include "org/allbinary/game/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/game/GenericOperatingSystem.h")
#include "org/allbinary/game/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/game/GenericOperatingSystem.h")
#include "org/allbinary/game/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/game/GenericOperatingSystem.h")
#include "org/allbinary/game/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/game/GenericOperatingSystem.h")
#include "org/allbinary/game/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/game/commands/GenericOperatingSystem.h")
#include "org/allbinary/game/commands/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/game/configuration/GenericOperatingSystem.h")
#include "org/allbinary/game/configuration/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/game/configuration/GenericOperatingSystem.h")
#include "org/allbinary/game/configuration/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/game/configuration/event/GenericOperatingSystem.h")
#include "org/allbinary/game/configuration/event/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/game/configuration/event/GenericOperatingSystem.h")
#include "org/allbinary/game/configuration/event/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/game/configuration/event/GenericOperatingSystem.h")
#include "org/allbinary/game/configuration/event/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/game/configuration/feature/GenericOperatingSystem.h")
#include "org/allbinary/game/configuration/feature/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/game/configuration/feature/GenericOperatingSystem.h")
#include "org/allbinary/game/configuration/feature/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/game/configuration/feature/GenericOperatingSystem.h")
#include "org/allbinary/game/configuration/feature/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/game/configuration/feature/GenericOperatingSystem.h")
#include "org/allbinary/game/configuration/feature/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/game/configuration/feature/GenericOperatingSystem.h")
#include "org/allbinary/game/configuration/feature/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/game/configuration/feature/GenericOperatingSystem.h")
#include "org/allbinary/game/configuration/feature/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/game/configuration/feature/GenericOperatingSystem.h")
#include "org/allbinary/game/configuration/feature/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/game/displayable/GenericOperatingSystem.h")
#include "org/allbinary/game/displayable/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/game/init/GenericOperatingSystem.h")
#include "org/allbinary/game/init/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/game/init/GenericOperatingSystem.h")
#include "org/allbinary/game/init/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/game/input/GenericOperatingSystem.h")
#include "org/allbinary/game/input/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/game/input/GenericOperatingSystem.h")
#include "org/allbinary/game/input/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/game/input/GenericOperatingSystem.h")
#include "org/allbinary/game/input/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/game/input/GenericOperatingSystem.h")
#include "org/allbinary/game/input/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/game/input/event/GenericOperatingSystem.h")
#include "org/allbinary/game/input/event/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/game/layer/GenericOperatingSystem.h")
#include "org/allbinary/game/layer/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/game/layer/GenericOperatingSystem.h")
#include "org/allbinary/game/layer/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/game/paint/GenericOperatingSystem.h")
#include "org/allbinary/game/paint/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/game/paint/GenericOperatingSystem.h")
#include "org/allbinary/game/paint/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/game/resource/GenericOperatingSystem.h")
#include "org/allbinary/game/resource/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/game/resource/GenericOperatingSystem.h")
#include "org/allbinary/game/resource/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/game/score/GenericOperatingSystem.h")
#include "org/allbinary/game/score/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/game/score/GenericOperatingSystem.h")
#include "org/allbinary/game/score/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/game/score/GenericOperatingSystem.h")
#include "org/allbinary/game/score/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/game/score/GenericOperatingSystem.h")
#include "org/allbinary/game/score/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/game/score/GenericOperatingSystem.h")
#include "org/allbinary/game/score/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/game/score/displayable/GenericOperatingSystem.h")
#include "org/allbinary/game/score/displayable/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/game/state/GenericOperatingSystem.h")
#include "org/allbinary/game/state/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/game/state/GenericOperatingSystem.h")
#include "org/allbinary/game/state/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/graphics/GenericOperatingSystem.h")
#include "org/allbinary/graphics/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/graphics/GenericOperatingSystem.h")
#include "org/allbinary/graphics/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/graphics/GenericOperatingSystem.h")
#include "org/allbinary/graphics/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/graphics/GenericOperatingSystem.h")
#include "org/allbinary/graphics/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/graphics/canvas/transition/progress/GenericOperatingSystem.h")
#include "org/allbinary/graphics/canvas/transition/progress/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/graphics/canvas/transition/progress/GenericOperatingSystem.h")
#include "org/allbinary/graphics/canvas/transition/progress/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/graphics/color/GenericOperatingSystem.h")
#include "org/allbinary/graphics/color/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/graphics/color/GenericOperatingSystem.h")
#include "org/allbinary/graphics/color/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/GenericOperatingSystem.h")
#include "org/allbinary/graphics/displayable/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/GenericOperatingSystem.h")
#include "org/allbinary/graphics/displayable/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/GenericOperatingSystem.h")
#include "org/allbinary/graphics/displayable/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/command/GenericOperatingSystem.h")
#include "org/allbinary/graphics/displayable/command/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/event/GenericOperatingSystem.h")
#include "org/allbinary/graphics/displayable/event/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/event/GenericOperatingSystem.h")
#include "org/allbinary/graphics/displayable/event/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/event/GenericOperatingSystem.h")
#include "org/allbinary/graphics/displayable/event/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/graphics/font/GenericOperatingSystem.h")
#include "org/allbinary/graphics/font/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/graphics/font/GenericOperatingSystem.h")
#include "org/allbinary/graphics/font/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/graphics/font/GenericOperatingSystem.h")
#include "org/allbinary/graphics/font/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/graphics/form/GenericOperatingSystem.h")
#include "org/allbinary/graphics/form/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/graphics/form/GenericOperatingSystem.h")
#include "org/allbinary/graphics/form/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/graphics/form/GenericOperatingSystem.h")
#include "org/allbinary/graphics/form/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/graphics/form/GenericOperatingSystem.h")
#include "org/allbinary/graphics/form/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/graphics/form/GenericOperatingSystem.h")
#include "org/allbinary/graphics/form/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/graphics/form/GenericOperatingSystem.h")
#include "org/allbinary/graphics/form/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/graphics/form/item/GenericOperatingSystem.h")
#include "org/allbinary/graphics/form/item/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/graphics/form/item/GenericOperatingSystem.h")
#include "org/allbinary/graphics/form/item/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/graphics/opengles/GenericOperatingSystem.h")
#include "org/allbinary/graphics/opengles/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/graphics/opengles/GenericOperatingSystem.h")
#include "org/allbinary/graphics/opengles/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/graphics/opengles/GenericOperatingSystem.h")
#include "org/allbinary/graphics/opengles/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/graphics/opengles/GenericOperatingSystem.h")
#include "org/allbinary/graphics/opengles/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/graphics/paint/GenericOperatingSystem.h")
#include "org/allbinary/graphics/paint/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/graphics/paint/GenericOperatingSystem.h")
#include "org/allbinary/graphics/paint/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/graphics/paint/GenericOperatingSystem.h")
#include "org/allbinary/graphics/paint/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/graphics/paint/GenericOperatingSystem.h")
#include "org/allbinary/graphics/paint/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/graphics/paint/GenericOperatingSystem.h")
#include "org/allbinary/graphics/paint/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/image/opengles/GenericOperatingSystem.h")
#include "org/allbinary/image/opengles/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/input/gyro/GenericOperatingSystem.h")
#include "org/allbinary/input/gyro/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/input/gyro/GenericOperatingSystem.h")
#include "org/allbinary/input/gyro/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/input/motion/button/GenericOperatingSystem.h")
#include "org/allbinary/input/motion/button/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/input/motion/button/GenericOperatingSystem.h")
#include "org/allbinary/input/motion/button/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/input/motion/button/GenericOperatingSystem.h")
#include "org/allbinary/input/motion/button/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/input/motion/button/GenericOperatingSystem.h")
#include "org/allbinary/input/motion/button/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/input/motion/button/GenericOperatingSystem.h")
#include "org/allbinary/input/motion/button/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/input/motion/gesture/observer/GenericOperatingSystem.h")
#include "org/allbinary/input/motion/gesture/observer/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/logic/GenericOperatingSystem.h")
#include "org/allbinary/logic/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/logic/communication/log/GenericOperatingSystem.h")
#include "org/allbinary/logic/communication/log/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/logic/communication/log/GenericOperatingSystem.h")
#include "org/allbinary/logic/communication/log/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/logic/communication/log/GenericOperatingSystem.h")
#include "org/allbinary/logic/communication/log/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/logic/string/GenericOperatingSystem.h")
#include "org/allbinary/logic/string/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/logic/string/GenericOperatingSystem.h")
#include "org/allbinary/logic/string/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/logic/system/os/GenericOperatingSystem.h")
#include "org/allbinary/logic/system/os/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/logic/system/security/licensing/GenericOperatingSystem.h")
#include "org/allbinary/logic/system/security/licensing/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/logic/util/event/GenericOperatingSystem.h")
#include "org/allbinary/logic/util/event/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/logic/util/event/GenericOperatingSystem.h")
#include "org/allbinary/logic/util/event/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/media/audio/GenericOperatingSystem.h")
#include "org/allbinary/media/audio/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/media/audio/GenericOperatingSystem.h")
#include "org/allbinary/media/audio/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/media/audio/GenericOperatingSystem.h")
#include "org/allbinary/media/audio/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/media/audio/GenericOperatingSystem.h")
#include "org/allbinary/media/audio/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/media/audio/GenericOperatingSystem.h")
#include "org/allbinary/media/audio/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/string/GenericOperatingSystem.h")
#include "org/allbinary/string/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/string/GenericOperatingSystem.h")
#include "org/allbinary/string/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/thread/GenericOperatingSystem.h")
#include "org/allbinary/thread/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/time/GenericOperatingSystem.h")
#include "org/allbinary/time/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/time/GenericOperatingSystem.h")
#include "org/allbinary/time/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/time/GenericOperatingSystem.h")
#include "org/allbinary/time/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/util/GenericOperatingSystem.h")
#include "org/allbinary/util/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/util/GenericOperatingSystem.h")
#include "org/allbinary/util/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/util/GenericOperatingSystem.h")
#include "org/allbinary/util/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/util/GenericOperatingSystem.h")
#include "org/allbinary/util/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/game/displayable/canvas/AllBinarySensor.h")
#include "org/allbinary/game/displayable/canvas/AllBinarySensor.h"
#endif
#if __has_include("javax/microedition/lcdui/AllBinarySensor.h")
#include "javax/microedition/lcdui/AllBinarySensor.h"
#endif
#if __has_include("javax/microedition/lcdui/AllBinarySensor.h")
#include "javax/microedition/lcdui/AllBinarySensor.h"
#endif
#if __has_include("javax/microedition/lcdui/AllBinarySensor.h")
#include "javax/microedition/lcdui/AllBinarySensor.h"
#endif
#if __has_include("javax/microedition/lcdui/AllBinarySensor.h")
#include "javax/microedition/lcdui/AllBinarySensor.h"
#endif
#if __has_include("javax/microedition/lcdui/AllBinarySensor.h")
#include "javax/microedition/lcdui/AllBinarySensor.h"
#endif
#if __has_include("javax/microedition/lcdui/AllBinarySensor.h")
#include "javax/microedition/lcdui/AllBinarySensor.h"
#endif
#if __has_include("org/allbinary/AllBinarySensor.h")
#include "org/allbinary/AllBinarySensor.h"
#endif
#if __has_include("org/allbinary/AllBinarySensor.h")
#include "org/allbinary/AllBinarySensor.h"
#endif
#if __has_include("org/allbinary/business/advertisement/AllBinarySensor.h")
#include "org/allbinary/business/advertisement/AllBinarySensor.h"
#endif
#if __has_include("org/allbinary/canvas/AllBinarySensor.h")
#include "org/allbinary/canvas/AllBinarySensor.h"
#endif
#if __has_include("org/allbinary/canvas/AllBinarySensor.h")
#include "org/allbinary/canvas/AllBinarySensor.h"
#endif
#if __has_include("org/allbinary/canvas/AllBinarySensor.h")
#include "org/allbinary/canvas/AllBinarySensor.h"
#endif
#if __has_include("org/allbinary/canvas/AllBinarySensor.h")
#include "org/allbinary/canvas/AllBinarySensor.h"
#endif
#if __has_include("org/allbinary/debug/AllBinarySensor.h")
#include "org/allbinary/debug/AllBinarySensor.h"
#endif
#if __has_include("org/allbinary/debug/AllBinarySensor.h")
#include "org/allbinary/debug/AllBinarySensor.h"
#endif
#if __has_include("org/allbinary/game/AllBinarySensor.h")
#include "org/allbinary/game/AllBinarySensor.h"
#endif
#if __has_include("org/allbinary/game/AllBinarySensor.h")
#include "org/allbinary/game/AllBinarySensor.h"
#endif
#if __has_include("org/allbinary/game/AllBinarySensor.h")
#include "org/allbinary/game/AllBinarySensor.h"
#endif
#if __has_include("org/allbinary/game/AllBinarySensor.h")
#include "org/allbinary/game/AllBinarySensor.h"
#endif
#if __has_include("org/allbinary/game/AllBinarySensor.h")
#include "org/allbinary/game/AllBinarySensor.h"
#endif
#if __has_include("org/allbinary/game/AllBinarySensor.h")
#include "org/allbinary/game/AllBinarySensor.h"
#endif
#if __has_include("org/allbinary/game/AllBinarySensor.h")
#include "org/allbinary/game/AllBinarySensor.h"
#endif
#if __has_include("org/allbinary/game/AllBinarySensor.h")
#include "org/allbinary/game/AllBinarySensor.h"
#endif
#if __has_include("org/allbinary/game/AllBinarySensor.h")
#include "org/allbinary/game/AllBinarySensor.h"
#endif
#if __has_include("org/allbinary/game/commands/AllBinarySensor.h")
#include "org/allbinary/game/commands/AllBinarySensor.h"
#endif
#if __has_include("org/allbinary/game/configuration/AllBinarySensor.h")
#include "org/allbinary/game/configuration/AllBinarySensor.h"
#endif
#if __has_include("org/allbinary/game/configuration/AllBinarySensor.h")
#include "org/allbinary/game/configuration/AllBinarySensor.h"
#endif
#if __has_include("org/allbinary/game/configuration/event/AllBinarySensor.h")
#include "org/allbinary/game/configuration/event/AllBinarySensor.h"
#endif
#if __has_include("org/allbinary/game/configuration/event/AllBinarySensor.h")
#include "org/allbinary/game/configuration/event/AllBinarySensor.h"
#endif
#if __has_include("org/allbinary/game/configuration/event/AllBinarySensor.h")
#include "org/allbinary/game/configuration/event/AllBinarySensor.h"
#endif
#if __has_include("org/allbinary/game/configuration/feature/AllBinarySensor.h")
#include "org/allbinary/game/configuration/feature/AllBinarySensor.h"
#endif
#if __has_include("org/allbinary/game/configuration/feature/AllBinarySensor.h")
#include "org/allbinary/game/configuration/feature/AllBinarySensor.h"
#endif
#if __has_include("org/allbinary/game/configuration/feature/AllBinarySensor.h")
#include "org/allbinary/game/configuration/feature/AllBinarySensor.h"
#endif
#if __has_include("org/allbinary/game/configuration/feature/AllBinarySensor.h")
#include "org/allbinary/game/configuration/feature/AllBinarySensor.h"
#endif
#if __has_include("org/allbinary/game/configuration/feature/AllBinarySensor.h")
#include "org/allbinary/game/configuration/feature/AllBinarySensor.h"
#endif
#if __has_include("org/allbinary/game/configuration/feature/AllBinarySensor.h")
#include "org/allbinary/game/configuration/feature/AllBinarySensor.h"
#endif
#if __has_include("org/allbinary/game/configuration/feature/AllBinarySensor.h")
#include "org/allbinary/game/configuration/feature/AllBinarySensor.h"
#endif
#if __has_include("org/allbinary/game/displayable/AllBinarySensor.h")
#include "org/allbinary/game/displayable/AllBinarySensor.h"
#endif
#if __has_include("org/allbinary/game/init/AllBinarySensor.h")
#include "org/allbinary/game/init/AllBinarySensor.h"
#endif
#if __has_include("org/allbinary/game/init/AllBinarySensor.h")
#include "org/allbinary/game/init/AllBinarySensor.h"
#endif
#if __has_include("org/allbinary/game/input/AllBinarySensor.h")
#include "org/allbinary/game/input/AllBinarySensor.h"
#endif
#if __has_include("org/allbinary/game/input/AllBinarySensor.h")
#include "org/allbinary/game/input/AllBinarySensor.h"
#endif
#if __has_include("org/allbinary/game/input/AllBinarySensor.h")
#include "org/allbinary/game/input/AllBinarySensor.h"
#endif
#if __has_include("org/allbinary/game/input/AllBinarySensor.h")
#include "org/allbinary/game/input/AllBinarySensor.h"
#endif
#if __has_include("org/allbinary/game/input/event/AllBinarySensor.h")
#include "org/allbinary/game/input/event/AllBinarySensor.h"
#endif
#if __has_include("org/allbinary/game/layer/AllBinarySensor.h")
#include "org/allbinary/game/layer/AllBinarySensor.h"
#endif
#if __has_include("org/allbinary/game/layer/AllBinarySensor.h")
#include "org/allbinary/game/layer/AllBinarySensor.h"
#endif
#if __has_include("org/allbinary/game/paint/AllBinarySensor.h")
#include "org/allbinary/game/paint/AllBinarySensor.h"
#endif
#if __has_include("org/allbinary/game/paint/AllBinarySensor.h")
#include "org/allbinary/game/paint/AllBinarySensor.h"
#endif
#if __has_include("org/allbinary/game/resource/AllBinarySensor.h")
#include "org/allbinary/game/resource/AllBinarySensor.h"
#endif
#if __has_include("org/allbinary/game/resource/AllBinarySensor.h")
#include "org/allbinary/game/resource/AllBinarySensor.h"
#endif
#if __has_include("org/allbinary/game/score/AllBinarySensor.h")
#include "org/allbinary/game/score/AllBinarySensor.h"
#endif
#if __has_include("org/allbinary/game/score/AllBinarySensor.h")
#include "org/allbinary/game/score/AllBinarySensor.h"
#endif
#if __has_include("org/allbinary/game/score/AllBinarySensor.h")
#include "org/allbinary/game/score/AllBinarySensor.h"
#endif
#if __has_include("org/allbinary/game/score/AllBinarySensor.h")
#include "org/allbinary/game/score/AllBinarySensor.h"
#endif
#if __has_include("org/allbinary/game/score/AllBinarySensor.h")
#include "org/allbinary/game/score/AllBinarySensor.h"
#endif
#if __has_include("org/allbinary/game/score/displayable/AllBinarySensor.h")
#include "org/allbinary/game/score/displayable/AllBinarySensor.h"
#endif
#if __has_include("org/allbinary/game/state/AllBinarySensor.h")
#include "org/allbinary/game/state/AllBinarySensor.h"
#endif
#if __has_include("org/allbinary/game/state/AllBinarySensor.h")
#include "org/allbinary/game/state/AllBinarySensor.h"
#endif
#if __has_include("org/allbinary/graphics/AllBinarySensor.h")
#include "org/allbinary/graphics/AllBinarySensor.h"
#endif
#if __has_include("org/allbinary/graphics/AllBinarySensor.h")
#include "org/allbinary/graphics/AllBinarySensor.h"
#endif
#if __has_include("org/allbinary/graphics/AllBinarySensor.h")
#include "org/allbinary/graphics/AllBinarySensor.h"
#endif
#if __has_include("org/allbinary/graphics/AllBinarySensor.h")
#include "org/allbinary/graphics/AllBinarySensor.h"
#endif
#if __has_include("org/allbinary/graphics/canvas/transition/progress/AllBinarySensor.h")
#include "org/allbinary/graphics/canvas/transition/progress/AllBinarySensor.h"
#endif
#if __has_include("org/allbinary/graphics/canvas/transition/progress/AllBinarySensor.h")
#include "org/allbinary/graphics/canvas/transition/progress/AllBinarySensor.h"
#endif
#if __has_include("org/allbinary/graphics/color/AllBinarySensor.h")
#include "org/allbinary/graphics/color/AllBinarySensor.h"
#endif
#if __has_include("org/allbinary/graphics/color/AllBinarySensor.h")
#include "org/allbinary/graphics/color/AllBinarySensor.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/AllBinarySensor.h")
#include "org/allbinary/graphics/displayable/AllBinarySensor.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/AllBinarySensor.h")
#include "org/allbinary/graphics/displayable/AllBinarySensor.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/AllBinarySensor.h")
#include "org/allbinary/graphics/displayable/AllBinarySensor.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/command/AllBinarySensor.h")
#include "org/allbinary/graphics/displayable/command/AllBinarySensor.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/event/AllBinarySensor.h")
#include "org/allbinary/graphics/displayable/event/AllBinarySensor.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/event/AllBinarySensor.h")
#include "org/allbinary/graphics/displayable/event/AllBinarySensor.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/event/AllBinarySensor.h")
#include "org/allbinary/graphics/displayable/event/AllBinarySensor.h"
#endif
#if __has_include("org/allbinary/graphics/font/AllBinarySensor.h")
#include "org/allbinary/graphics/font/AllBinarySensor.h"
#endif
#if __has_include("org/allbinary/graphics/font/AllBinarySensor.h")
#include "org/allbinary/graphics/font/AllBinarySensor.h"
#endif
#if __has_include("org/allbinary/graphics/font/AllBinarySensor.h")
#include "org/allbinary/graphics/font/AllBinarySensor.h"
#endif
#if __has_include("org/allbinary/graphics/form/AllBinarySensor.h")
#include "org/allbinary/graphics/form/AllBinarySensor.h"
#endif
#if __has_include("org/allbinary/graphics/form/AllBinarySensor.h")
#include "org/allbinary/graphics/form/AllBinarySensor.h"
#endif
#if __has_include("org/allbinary/graphics/form/AllBinarySensor.h")
#include "org/allbinary/graphics/form/AllBinarySensor.h"
#endif
#if __has_include("org/allbinary/graphics/form/AllBinarySensor.h")
#include "org/allbinary/graphics/form/AllBinarySensor.h"
#endif
#if __has_include("org/allbinary/graphics/form/AllBinarySensor.h")
#include "org/allbinary/graphics/form/AllBinarySensor.h"
#endif
#if __has_include("org/allbinary/graphics/form/AllBinarySensor.h")
#include "org/allbinary/graphics/form/AllBinarySensor.h"
#endif
#if __has_include("org/allbinary/graphics/form/item/AllBinarySensor.h")
#include "org/allbinary/graphics/form/item/AllBinarySensor.h"
#endif
#if __has_include("org/allbinary/graphics/form/item/AllBinarySensor.h")
#include "org/allbinary/graphics/form/item/AllBinarySensor.h"
#endif
#if __has_include("org/allbinary/graphics/opengles/AllBinarySensor.h")
#include "org/allbinary/graphics/opengles/AllBinarySensor.h"
#endif
#if __has_include("org/allbinary/graphics/opengles/AllBinarySensor.h")
#include "org/allbinary/graphics/opengles/AllBinarySensor.h"
#endif
#if __has_include("org/allbinary/graphics/opengles/AllBinarySensor.h")
#include "org/allbinary/graphics/opengles/AllBinarySensor.h"
#endif
#if __has_include("org/allbinary/graphics/opengles/AllBinarySensor.h")
#include "org/allbinary/graphics/opengles/AllBinarySensor.h"
#endif
#if __has_include("org/allbinary/graphics/paint/AllBinarySensor.h")
#include "org/allbinary/graphics/paint/AllBinarySensor.h"
#endif
#if __has_include("org/allbinary/graphics/paint/AllBinarySensor.h")
#include "org/allbinary/graphics/paint/AllBinarySensor.h"
#endif
#if __has_include("org/allbinary/graphics/paint/AllBinarySensor.h")
#include "org/allbinary/graphics/paint/AllBinarySensor.h"
#endif
#if __has_include("org/allbinary/graphics/paint/AllBinarySensor.h")
#include "org/allbinary/graphics/paint/AllBinarySensor.h"
#endif
#if __has_include("org/allbinary/graphics/paint/AllBinarySensor.h")
#include "org/allbinary/graphics/paint/AllBinarySensor.h"
#endif
#if __has_include("org/allbinary/image/opengles/AllBinarySensor.h")
#include "org/allbinary/image/opengles/AllBinarySensor.h"
#endif
#if __has_include("org/allbinary/input/gyro/AllBinarySensor.h")
#include "org/allbinary/input/gyro/AllBinarySensor.h"
#endif
#if __has_include("org/allbinary/input/gyro/AllBinarySensor.h")
#include "org/allbinary/input/gyro/AllBinarySensor.h"
#endif
#if __has_include("org/allbinary/input/motion/button/AllBinarySensor.h")
#include "org/allbinary/input/motion/button/AllBinarySensor.h"
#endif
#if __has_include("org/allbinary/input/motion/button/AllBinarySensor.h")
#include "org/allbinary/input/motion/button/AllBinarySensor.h"
#endif
#if __has_include("org/allbinary/input/motion/button/AllBinarySensor.h")
#include "org/allbinary/input/motion/button/AllBinarySensor.h"
#endif
#if __has_include("org/allbinary/input/motion/button/AllBinarySensor.h")
#include "org/allbinary/input/motion/button/AllBinarySensor.h"
#endif
#if __has_include("org/allbinary/input/motion/button/AllBinarySensor.h")
#include "org/allbinary/input/motion/button/AllBinarySensor.h"
#endif
#if __has_include("org/allbinary/input/motion/gesture/observer/AllBinarySensor.h")
#include "org/allbinary/input/motion/gesture/observer/AllBinarySensor.h"
#endif
#if __has_include("org/allbinary/logic/AllBinarySensor.h")
#include "org/allbinary/logic/AllBinarySensor.h"
#endif
#if __has_include("org/allbinary/logic/communication/log/AllBinarySensor.h")
#include "org/allbinary/logic/communication/log/AllBinarySensor.h"
#endif
#if __has_include("org/allbinary/logic/communication/log/AllBinarySensor.h")
#include "org/allbinary/logic/communication/log/AllBinarySensor.h"
#endif
#if __has_include("org/allbinary/logic/communication/log/AllBinarySensor.h")
#include "org/allbinary/logic/communication/log/AllBinarySensor.h"
#endif
#if __has_include("org/allbinary/logic/string/AllBinarySensor.h")
#include "org/allbinary/logic/string/AllBinarySensor.h"
#endif
#if __has_include("org/allbinary/logic/string/AllBinarySensor.h")
#include "org/allbinary/logic/string/AllBinarySensor.h"
#endif
#if __has_include("org/allbinary/logic/system/os/AllBinarySensor.h")
#include "org/allbinary/logic/system/os/AllBinarySensor.h"
#endif
#if __has_include("org/allbinary/logic/system/security/licensing/AllBinarySensor.h")
#include "org/allbinary/logic/system/security/licensing/AllBinarySensor.h"
#endif
#if __has_include("org/allbinary/logic/util/event/AllBinarySensor.h")
#include "org/allbinary/logic/util/event/AllBinarySensor.h"
#endif
#if __has_include("org/allbinary/logic/util/event/AllBinarySensor.h")
#include "org/allbinary/logic/util/event/AllBinarySensor.h"
#endif
#if __has_include("org/allbinary/media/audio/AllBinarySensor.h")
#include "org/allbinary/media/audio/AllBinarySensor.h"
#endif
#if __has_include("org/allbinary/media/audio/AllBinarySensor.h")
#include "org/allbinary/media/audio/AllBinarySensor.h"
#endif
#if __has_include("org/allbinary/media/audio/AllBinarySensor.h")
#include "org/allbinary/media/audio/AllBinarySensor.h"
#endif
#if __has_include("org/allbinary/media/audio/AllBinarySensor.h")
#include "org/allbinary/media/audio/AllBinarySensor.h"
#endif
#if __has_include("org/allbinary/media/audio/AllBinarySensor.h")
#include "org/allbinary/media/audio/AllBinarySensor.h"
#endif
#if __has_include("org/allbinary/string/AllBinarySensor.h")
#include "org/allbinary/string/AllBinarySensor.h"
#endif
#if __has_include("org/allbinary/string/AllBinarySensor.h")
#include "org/allbinary/string/AllBinarySensor.h"
#endif
#if __has_include("org/allbinary/thread/AllBinarySensor.h")
#include "org/allbinary/thread/AllBinarySensor.h"
#endif
#if __has_include("org/allbinary/time/AllBinarySensor.h")
#include "org/allbinary/time/AllBinarySensor.h"
#endif
#if __has_include("org/allbinary/time/AllBinarySensor.h")
#include "org/allbinary/time/AllBinarySensor.h"
#endif
#if __has_include("org/allbinary/time/AllBinarySensor.h")
#include "org/allbinary/time/AllBinarySensor.h"
#endif
#if __has_include("org/allbinary/util/AllBinarySensor.h")
#include "org/allbinary/util/AllBinarySensor.h"
#endif
#if __has_include("org/allbinary/util/AllBinarySensor.h")
#include "org/allbinary/util/AllBinarySensor.h"
#endif
#if __has_include("org/allbinary/util/AllBinarySensor.h")
#include "org/allbinary/util/AllBinarySensor.h"
#endif
#if __has_include("org/allbinary/util/AllBinarySensor.h")
#include "org/allbinary/util/AllBinarySensor.h"
#endif
#if __has_include("org/allbinary/game/displayable/canvas/ThreadPool.h")
#include "org/allbinary/game/displayable/canvas/ThreadPool.h"
#endif
#if __has_include("javax/microedition/lcdui/ThreadPool.h")
#include "javax/microedition/lcdui/ThreadPool.h"
#endif
#if __has_include("javax/microedition/lcdui/ThreadPool.h")
#include "javax/microedition/lcdui/ThreadPool.h"
#endif
#if __has_include("javax/microedition/lcdui/ThreadPool.h")
#include "javax/microedition/lcdui/ThreadPool.h"
#endif
#if __has_include("javax/microedition/lcdui/ThreadPool.h")
#include "javax/microedition/lcdui/ThreadPool.h"
#endif
#if __has_include("javax/microedition/lcdui/ThreadPool.h")
#include "javax/microedition/lcdui/ThreadPool.h"
#endif
#if __has_include("javax/microedition/lcdui/ThreadPool.h")
#include "javax/microedition/lcdui/ThreadPool.h"
#endif
#if __has_include("org/allbinary/ThreadPool.h")
#include "org/allbinary/ThreadPool.h"
#endif
#if __has_include("org/allbinary/ThreadPool.h")
#include "org/allbinary/ThreadPool.h"
#endif
#if __has_include("org/allbinary/business/advertisement/ThreadPool.h")
#include "org/allbinary/business/advertisement/ThreadPool.h"
#endif
#if __has_include("org/allbinary/canvas/ThreadPool.h")
#include "org/allbinary/canvas/ThreadPool.h"
#endif
#if __has_include("org/allbinary/canvas/ThreadPool.h")
#include "org/allbinary/canvas/ThreadPool.h"
#endif
#if __has_include("org/allbinary/canvas/ThreadPool.h")
#include "org/allbinary/canvas/ThreadPool.h"
#endif
#if __has_include("org/allbinary/canvas/ThreadPool.h")
#include "org/allbinary/canvas/ThreadPool.h"
#endif
#if __has_include("org/allbinary/debug/ThreadPool.h")
#include "org/allbinary/debug/ThreadPool.h"
#endif
#if __has_include("org/allbinary/debug/ThreadPool.h")
#include "org/allbinary/debug/ThreadPool.h"
#endif
#if __has_include("org/allbinary/game/ThreadPool.h")
#include "org/allbinary/game/ThreadPool.h"
#endif
#if __has_include("org/allbinary/game/ThreadPool.h")
#include "org/allbinary/game/ThreadPool.h"
#endif
#if __has_include("org/allbinary/game/ThreadPool.h")
#include "org/allbinary/game/ThreadPool.h"
#endif
#if __has_include("org/allbinary/game/ThreadPool.h")
#include "org/allbinary/game/ThreadPool.h"
#endif
#if __has_include("org/allbinary/game/ThreadPool.h")
#include "org/allbinary/game/ThreadPool.h"
#endif
#if __has_include("org/allbinary/game/ThreadPool.h")
#include "org/allbinary/game/ThreadPool.h"
#endif
#if __has_include("org/allbinary/game/ThreadPool.h")
#include "org/allbinary/game/ThreadPool.h"
#endif
#if __has_include("org/allbinary/game/ThreadPool.h")
#include "org/allbinary/game/ThreadPool.h"
#endif
#if __has_include("org/allbinary/game/ThreadPool.h")
#include "org/allbinary/game/ThreadPool.h"
#endif
#if __has_include("org/allbinary/game/commands/ThreadPool.h")
#include "org/allbinary/game/commands/ThreadPool.h"
#endif
#if __has_include("org/allbinary/game/configuration/ThreadPool.h")
#include "org/allbinary/game/configuration/ThreadPool.h"
#endif
#if __has_include("org/allbinary/game/configuration/ThreadPool.h")
#include "org/allbinary/game/configuration/ThreadPool.h"
#endif
#if __has_include("org/allbinary/game/configuration/event/ThreadPool.h")
#include "org/allbinary/game/configuration/event/ThreadPool.h"
#endif
#if __has_include("org/allbinary/game/configuration/event/ThreadPool.h")
#include "org/allbinary/game/configuration/event/ThreadPool.h"
#endif
#if __has_include("org/allbinary/game/configuration/event/ThreadPool.h")
#include "org/allbinary/game/configuration/event/ThreadPool.h"
#endif
#if __has_include("org/allbinary/game/configuration/feature/ThreadPool.h")
#include "org/allbinary/game/configuration/feature/ThreadPool.h"
#endif
#if __has_include("org/allbinary/game/configuration/feature/ThreadPool.h")
#include "org/allbinary/game/configuration/feature/ThreadPool.h"
#endif
#if __has_include("org/allbinary/game/configuration/feature/ThreadPool.h")
#include "org/allbinary/game/configuration/feature/ThreadPool.h"
#endif
#if __has_include("org/allbinary/game/configuration/feature/ThreadPool.h")
#include "org/allbinary/game/configuration/feature/ThreadPool.h"
#endif
#if __has_include("org/allbinary/game/configuration/feature/ThreadPool.h")
#include "org/allbinary/game/configuration/feature/ThreadPool.h"
#endif
#if __has_include("org/allbinary/game/configuration/feature/ThreadPool.h")
#include "org/allbinary/game/configuration/feature/ThreadPool.h"
#endif
#if __has_include("org/allbinary/game/configuration/feature/ThreadPool.h")
#include "org/allbinary/game/configuration/feature/ThreadPool.h"
#endif
#if __has_include("org/allbinary/game/displayable/ThreadPool.h")
#include "org/allbinary/game/displayable/ThreadPool.h"
#endif
#if __has_include("org/allbinary/game/init/ThreadPool.h")
#include "org/allbinary/game/init/ThreadPool.h"
#endif
#if __has_include("org/allbinary/game/init/ThreadPool.h")
#include "org/allbinary/game/init/ThreadPool.h"
#endif
#if __has_include("org/allbinary/game/input/ThreadPool.h")
#include "org/allbinary/game/input/ThreadPool.h"
#endif
#if __has_include("org/allbinary/game/input/ThreadPool.h")
#include "org/allbinary/game/input/ThreadPool.h"
#endif
#if __has_include("org/allbinary/game/input/ThreadPool.h")
#include "org/allbinary/game/input/ThreadPool.h"
#endif
#if __has_include("org/allbinary/game/input/ThreadPool.h")
#include "org/allbinary/game/input/ThreadPool.h"
#endif
#if __has_include("org/allbinary/game/input/event/ThreadPool.h")
#include "org/allbinary/game/input/event/ThreadPool.h"
#endif
#if __has_include("org/allbinary/game/layer/ThreadPool.h")
#include "org/allbinary/game/layer/ThreadPool.h"
#endif
#if __has_include("org/allbinary/game/layer/ThreadPool.h")
#include "org/allbinary/game/layer/ThreadPool.h"
#endif
#if __has_include("org/allbinary/game/paint/ThreadPool.h")
#include "org/allbinary/game/paint/ThreadPool.h"
#endif
#if __has_include("org/allbinary/game/paint/ThreadPool.h")
#include "org/allbinary/game/paint/ThreadPool.h"
#endif
#if __has_include("org/allbinary/game/resource/ThreadPool.h")
#include "org/allbinary/game/resource/ThreadPool.h"
#endif
#if __has_include("org/allbinary/game/resource/ThreadPool.h")
#include "org/allbinary/game/resource/ThreadPool.h"
#endif
#if __has_include("org/allbinary/game/score/ThreadPool.h")
#include "org/allbinary/game/score/ThreadPool.h"
#endif
#if __has_include("org/allbinary/game/score/ThreadPool.h")
#include "org/allbinary/game/score/ThreadPool.h"
#endif
#if __has_include("org/allbinary/game/score/ThreadPool.h")
#include "org/allbinary/game/score/ThreadPool.h"
#endif
#if __has_include("org/allbinary/game/score/ThreadPool.h")
#include "org/allbinary/game/score/ThreadPool.h"
#endif
#if __has_include("org/allbinary/game/score/ThreadPool.h")
#include "org/allbinary/game/score/ThreadPool.h"
#endif
#if __has_include("org/allbinary/game/score/displayable/ThreadPool.h")
#include "org/allbinary/game/score/displayable/ThreadPool.h"
#endif
#if __has_include("org/allbinary/game/state/ThreadPool.h")
#include "org/allbinary/game/state/ThreadPool.h"
#endif
#if __has_include("org/allbinary/game/state/ThreadPool.h")
#include "org/allbinary/game/state/ThreadPool.h"
#endif
#if __has_include("org/allbinary/graphics/ThreadPool.h")
#include "org/allbinary/graphics/ThreadPool.h"
#endif
#if __has_include("org/allbinary/graphics/ThreadPool.h")
#include "org/allbinary/graphics/ThreadPool.h"
#endif
#if __has_include("org/allbinary/graphics/ThreadPool.h")
#include "org/allbinary/graphics/ThreadPool.h"
#endif
#if __has_include("org/allbinary/graphics/ThreadPool.h")
#include "org/allbinary/graphics/ThreadPool.h"
#endif
#if __has_include("org/allbinary/graphics/canvas/transition/progress/ThreadPool.h")
#include "org/allbinary/graphics/canvas/transition/progress/ThreadPool.h"
#endif
#if __has_include("org/allbinary/graphics/canvas/transition/progress/ThreadPool.h")
#include "org/allbinary/graphics/canvas/transition/progress/ThreadPool.h"
#endif
#if __has_include("org/allbinary/graphics/color/ThreadPool.h")
#include "org/allbinary/graphics/color/ThreadPool.h"
#endif
#if __has_include("org/allbinary/graphics/color/ThreadPool.h")
#include "org/allbinary/graphics/color/ThreadPool.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/ThreadPool.h")
#include "org/allbinary/graphics/displayable/ThreadPool.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/ThreadPool.h")
#include "org/allbinary/graphics/displayable/ThreadPool.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/ThreadPool.h")
#include "org/allbinary/graphics/displayable/ThreadPool.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/command/ThreadPool.h")
#include "org/allbinary/graphics/displayable/command/ThreadPool.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/event/ThreadPool.h")
#include "org/allbinary/graphics/displayable/event/ThreadPool.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/event/ThreadPool.h")
#include "org/allbinary/graphics/displayable/event/ThreadPool.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/event/ThreadPool.h")
#include "org/allbinary/graphics/displayable/event/ThreadPool.h"
#endif
#if __has_include("org/allbinary/graphics/font/ThreadPool.h")
#include "org/allbinary/graphics/font/ThreadPool.h"
#endif
#if __has_include("org/allbinary/graphics/font/ThreadPool.h")
#include "org/allbinary/graphics/font/ThreadPool.h"
#endif
#if __has_include("org/allbinary/graphics/font/ThreadPool.h")
#include "org/allbinary/graphics/font/ThreadPool.h"
#endif
#if __has_include("org/allbinary/graphics/form/ThreadPool.h")
#include "org/allbinary/graphics/form/ThreadPool.h"
#endif
#if __has_include("org/allbinary/graphics/form/ThreadPool.h")
#include "org/allbinary/graphics/form/ThreadPool.h"
#endif
#if __has_include("org/allbinary/graphics/form/ThreadPool.h")
#include "org/allbinary/graphics/form/ThreadPool.h"
#endif
#if __has_include("org/allbinary/graphics/form/ThreadPool.h")
#include "org/allbinary/graphics/form/ThreadPool.h"
#endif
#if __has_include("org/allbinary/graphics/form/ThreadPool.h")
#include "org/allbinary/graphics/form/ThreadPool.h"
#endif
#if __has_include("org/allbinary/graphics/form/ThreadPool.h")
#include "org/allbinary/graphics/form/ThreadPool.h"
#endif
#if __has_include("org/allbinary/graphics/form/item/ThreadPool.h")
#include "org/allbinary/graphics/form/item/ThreadPool.h"
#endif
#if __has_include("org/allbinary/graphics/form/item/ThreadPool.h")
#include "org/allbinary/graphics/form/item/ThreadPool.h"
#endif
#if __has_include("org/allbinary/graphics/opengles/ThreadPool.h")
#include "org/allbinary/graphics/opengles/ThreadPool.h"
#endif
#if __has_include("org/allbinary/graphics/opengles/ThreadPool.h")
#include "org/allbinary/graphics/opengles/ThreadPool.h"
#endif
#if __has_include("org/allbinary/graphics/opengles/ThreadPool.h")
#include "org/allbinary/graphics/opengles/ThreadPool.h"
#endif
#if __has_include("org/allbinary/graphics/opengles/ThreadPool.h")
#include "org/allbinary/graphics/opengles/ThreadPool.h"
#endif
#if __has_include("org/allbinary/graphics/paint/ThreadPool.h")
#include "org/allbinary/graphics/paint/ThreadPool.h"
#endif
#if __has_include("org/allbinary/graphics/paint/ThreadPool.h")
#include "org/allbinary/graphics/paint/ThreadPool.h"
#endif
#if __has_include("org/allbinary/graphics/paint/ThreadPool.h")
#include "org/allbinary/graphics/paint/ThreadPool.h"
#endif
#if __has_include("org/allbinary/graphics/paint/ThreadPool.h")
#include "org/allbinary/graphics/paint/ThreadPool.h"
#endif
#if __has_include("org/allbinary/graphics/paint/ThreadPool.h")
#include "org/allbinary/graphics/paint/ThreadPool.h"
#endif
#if __has_include("org/allbinary/image/opengles/ThreadPool.h")
#include "org/allbinary/image/opengles/ThreadPool.h"
#endif
#if __has_include("org/allbinary/input/gyro/ThreadPool.h")
#include "org/allbinary/input/gyro/ThreadPool.h"
#endif
#if __has_include("org/allbinary/input/gyro/ThreadPool.h")
#include "org/allbinary/input/gyro/ThreadPool.h"
#endif
#if __has_include("org/allbinary/input/motion/button/ThreadPool.h")
#include "org/allbinary/input/motion/button/ThreadPool.h"
#endif
#if __has_include("org/allbinary/input/motion/button/ThreadPool.h")
#include "org/allbinary/input/motion/button/ThreadPool.h"
#endif
#if __has_include("org/allbinary/input/motion/button/ThreadPool.h")
#include "org/allbinary/input/motion/button/ThreadPool.h"
#endif
#if __has_include("org/allbinary/input/motion/button/ThreadPool.h")
#include "org/allbinary/input/motion/button/ThreadPool.h"
#endif
#if __has_include("org/allbinary/input/motion/button/ThreadPool.h")
#include "org/allbinary/input/motion/button/ThreadPool.h"
#endif
#if __has_include("org/allbinary/input/motion/gesture/observer/ThreadPool.h")
#include "org/allbinary/input/motion/gesture/observer/ThreadPool.h"
#endif
#if __has_include("org/allbinary/logic/ThreadPool.h")
#include "org/allbinary/logic/ThreadPool.h"
#endif
#if __has_include("org/allbinary/logic/communication/log/ThreadPool.h")
#include "org/allbinary/logic/communication/log/ThreadPool.h"
#endif
#if __has_include("org/allbinary/logic/communication/log/ThreadPool.h")
#include "org/allbinary/logic/communication/log/ThreadPool.h"
#endif
#if __has_include("org/allbinary/logic/communication/log/ThreadPool.h")
#include "org/allbinary/logic/communication/log/ThreadPool.h"
#endif
#if __has_include("org/allbinary/logic/string/ThreadPool.h")
#include "org/allbinary/logic/string/ThreadPool.h"
#endif
#if __has_include("org/allbinary/logic/string/ThreadPool.h")
#include "org/allbinary/logic/string/ThreadPool.h"
#endif
#if __has_include("org/allbinary/logic/system/os/ThreadPool.h")
#include "org/allbinary/logic/system/os/ThreadPool.h"
#endif
#if __has_include("org/allbinary/logic/system/security/licensing/ThreadPool.h")
#include "org/allbinary/logic/system/security/licensing/ThreadPool.h"
#endif
#if __has_include("org/allbinary/logic/util/event/ThreadPool.h")
#include "org/allbinary/logic/util/event/ThreadPool.h"
#endif
#if __has_include("org/allbinary/logic/util/event/ThreadPool.h")
#include "org/allbinary/logic/util/event/ThreadPool.h"
#endif
#if __has_include("org/allbinary/media/audio/ThreadPool.h")
#include "org/allbinary/media/audio/ThreadPool.h"
#endif
#if __has_include("org/allbinary/media/audio/ThreadPool.h")
#include "org/allbinary/media/audio/ThreadPool.h"
#endif
#if __has_include("org/allbinary/media/audio/ThreadPool.h")
#include "org/allbinary/media/audio/ThreadPool.h"
#endif
#if __has_include("org/allbinary/media/audio/ThreadPool.h")
#include "org/allbinary/media/audio/ThreadPool.h"
#endif
#if __has_include("org/allbinary/media/audio/ThreadPool.h")
#include "org/allbinary/media/audio/ThreadPool.h"
#endif
#if __has_include("org/allbinary/string/ThreadPool.h")
#include "org/allbinary/string/ThreadPool.h"
#endif
#if __has_include("org/allbinary/string/ThreadPool.h")
#include "org/allbinary/string/ThreadPool.h"
#endif
#if __has_include("org/allbinary/thread/ThreadPool.h")
#include "org/allbinary/thread/ThreadPool.h"
#endif
#if __has_include("org/allbinary/time/ThreadPool.h")
#include "org/allbinary/time/ThreadPool.h"
#endif
#if __has_include("org/allbinary/time/ThreadPool.h")
#include "org/allbinary/time/ThreadPool.h"
#endif
#if __has_include("org/allbinary/time/ThreadPool.h")
#include "org/allbinary/time/ThreadPool.h"
#endif
#if __has_include("org/allbinary/util/ThreadPool.h")
#include "org/allbinary/util/ThreadPool.h"
#endif
#if __has_include("org/allbinary/util/ThreadPool.h")
#include "org/allbinary/util/ThreadPool.h"
#endif
#if __has_include("org/allbinary/util/ThreadPool.h")
#include "org/allbinary/util/ThreadPool.h"
#endif
#if __has_include("org/allbinary/util/ThreadPool.h")
#include "org/allbinary/util/ThreadPool.h"
#endif


static constexpr int32_t AllBinaryGameCanvas_id_ = 0;


void AllBinaryGameCanvas_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation AllBinaryGameCanvas

- (void) initFields {
    self->basicColorFactory = [BasicColorFactory getInstance];
    self->basicSetColorUtil = [BasicColorSetUtil getInstance];
    self->touchFeatureFactory = [TouchFeatureFactory getInstance];
    self->openGLFeatureFactory = [OpenGLFeatureFactory getInstance];
    self->touchButtonFactory = [TouchButtonFactory getInstance];
    self->gameAdStateFactory = [GameAdStateFactory getInstance];
    self->gameStrings = [GameStrings getInstance];
    self->gameInputStrings = [GameInputStrings getInstance];
    self->gameStateFactory = [GameStateFactory getInstance];
    self->gameTickTimeDelayHelper = [GameTickTimeDelayHelperFactory getInstance];
    self->gameTickDisplayInfoSingleton = [GameTickDisplayInfoSingleton getInstance];
    self->gameRunnable = [((GameCanvasRunnable*) [GameCanvasRunnable alloc]) init:self];
    self->gamePauseRunnable = [((GameCanvasPauseRunnable*) [GameCanvasPauseRunnable alloc]) init:self];
    self->formUtil = [FormUtil getInstance];
    self->myFormUtil = [MyFormUtil getInstance];
    self->updateMyFontProcessor = [((UpdateMyFontProcessor*) [UpdateMyFontProcessor alloc]) init:self];
    self->myFontProcessor = self->updateMyFontProcessor;
    self->gameSpecificPaintable = [NullPaintable getInstance];
    self->sensorGameUpdateProcessor = [((SingleSensorGameUpdateProcessor*) [SingleSensorGameUpdateProcessor alloc]) init];
    self->endGameInfo = [((EndGameInfo*) [EndGameInfo alloc]) init];
    self->startIntermissionInterface = [((Intermission*) [Intermission alloc]) init];
    self->endLevelIntermissionInterface = [((Intermission*) [Intermission alloc]) init];
    self->gameLayerManager = [AllBinaryGameLayerManager getNullInstance];
    self->gameState = self->gameStateFactory->NO_GAME_STATE;
    self->gameOver = false;
    self->initialized = false;
    self->gameStateTimeHelper = [((TimeDelayHelper*) [TimeDelayHelper alloc]) init:0];
    
    self->highScoreSubmitted = false;
    self->realHighScoresPaintable = [((HighScoresPaintable*) [HighScoresPaintable alloc]) init];
    self->highScoresPaintable = [NullPaintable getInstance];
    self->localPlayerGameInputList = [((BasicArrayListD*) [BasicArrayListD alloc]) init];
    self->isCheating = false;
    self->hashtable = self->stdUtil->NULL_TABLE;
    self->isSingleKeyRepeatableProcessing = false;
    self->gameInitializationInterfaceFactoryInterface = (BasicBuildGameInitializerFactory_staticInit(), BasicBuildGameInitializerFactory_NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY);
    self->touchButtonsPaintable = [NullPaintable getInstance];
    self->touchPaintable = [NullPaintable getInstance];
    self->cheatProcessor = [NoPlayerGameInput getInstance];
    self->gameInputProcessor = [Processor getInstance];
    self->endGameProcessor = [Processor getInstance];
    self->realEndGameProcessor = [Processor getInstance];
    self->startIntermissionProcessor = [Processor getInstance];
    self->realStartIntermissionProcessor = [Processor getInstance];
    self->endGamePaintable = [NullPaintable getInstance];
    self->endGameStatePaintable = [NullPaintable getInstance];
    self->nonBotPaintable = [NullPaintable getInstance];
    self->intermissionPaintable = [NullPaintable getInstance];
    self->startIntermissionPaintable = [NullInitUpdatePaintable getInstance];
    self->mainStateProcessor = [Processor getInstance];
    self->processGameProcessor = [Processor getInstance];
    
    self->startLevel = 0;
    self->mainMenuInputProcessor = [NoMenuInputProcessor getInstance];
    self->popupMenuInputProcessor = [NoMenuInputProcessor getInstance];
    self->menuInputProcessor = [NoMenuInputProcessor getInstance];
    self->menuForm = [ScrollSelectionForm getNullScrollSelectionForm];
    self->formPaintable = [NullPaintable getInstance];
    self->openMenuPaintable = [NullPaintable getInstance];
    self->menuPaintable = [NullPaintable getInstance];
    self->currentTouchInputFactory = [NoButtonsTouchInputFactory getInstance];
    self->colorFillPaintable = [[ColorFillPaintableFactory getInstance] getInstance:self->basicColorFactory->BLACK :true];
    self->baseGameStatistics = [GameStatisticsFactory getInstance];
    self->primaryPlayerQueue = [PrimaryPlayerQueueFactory getInstance];
    self->secondaryPlayerQueue = [SecondaryPlayerQueueFactory getInstance];
    self->BUILD_GAME = "buildGame";
    self->gameTypeFactory = [GameTypeFactory getInstance];
    self->screenCapture = [ScreenCaptureFactory getInstance];
    self->basicMotionGesturesHandler = [BasicMotionGesturesHandler getInstance];
    self->gameKeyEventHandler = [GameKeyEventHandler getInstance];
    self->gameBehavior = nullptr;
    self->menuBehavior = nullptr;
    self->progressPaintable = [ProgressCanvasFactory getLazyInstance];
    self->fontHeightP = 0;
    self->gameCanvasStartListener = (NullDemoPaintable_staticInit(), NullDemoPaintable_NULL_DEMO_PAINTABLE);
    self->rawGameInputProcessor = [((GameCanvasInputProcessor*) [GameCanvasInputProcessor alloc]) init:self];
    self->rawInputProcessor = [((FormInputProcessor*) [FormInputProcessor alloc]) init:self];
    self->inputProcessor = [self getRawGameInputProcessor];
    self->YIELD_SLEEP = 100LL;
}


- (instancetype) init:(CommandListener*)commandListener :(AllBinaryGameLayerManager*)gameLayerManager :(HighScoresFactoryInterface*)highScoresFactoryInterface :(BasicBuildGameInitializerFactory*)gameInitializationInterfaceFactoryInterface :(bool)buffered {
        self = [super init:commandListener :[CanvasStrings getInstance]->EMPTY_CHILD_NAME_LIST :true];
        [self initFields];
        self->highScoresHelper = [highScoresFactoryInterface createHighScoresHelper];
        self->gameInitializationInterfaceFactoryInterface = gameInitializationInterfaceFactoryInterface;
        [self init_:gameLayerManager :buffered];
        self->highScoresFactoryInterface = highScoresFactoryInterface;
        if ([[self->gameLayerManager getGameInfo] getGameType] == self->gameTypeFactory->BOT || [[self->gameLayerManager getGameInfo] getGameType] == self->gameTypeFactory->NONE) {
            self->gameBehavior = [DemoGameBehavior getInstance];
            self->menuBehavior = [BaseMenuBehavior getInstance];
        } else {
            self->gameBehavior = [BaseGameBehavior getInstance];
            self->menuBehavior = [self getInGameMenuBehavior];
        }
        [self initPopupMenu];
        [self initMenu];
        [self initSpecialPaint];
        [[DisplayChangeEventHandler getInstance] addListenerInterface:self];
    return self;
}


- (void) updateMeasurement:(Graphics*)graphics {
        JAVA_TRY {
            Font* font = [graphics getFont];
            [self->logUtil putF:[[[[[[[((StringMaker*) [StringMaker alloc]) init] append:self->commonStrings->START] append:self->canvasStrings->FD_WIDTH] appendint:[MyFontProcessor defaultCharWidth:font]] append:self->canvasStrings->FD_HEIGHT] appendint:[font getHeight]] toString] :self :self->canvasStrings->UPDATE_MEASUREMENT];
            self->fontHeightP = [font getHeight];
            [self->myFormUtil updateMeasurement:graphics];
            Rectangle* popupMenuRectangle = [self->myFormUtil getPopupMenuRectangle];
            BasicPopupMenuPaintable* basicPopupMenuPaintable = (((BasicPopupMenuPaintable*) [self getOpenMenuPaintable]));
            [basicPopupMenuPaintable init_:popupMenuRectangle];
            if ([self getPopupMenuInputProcessor] != [NoMenuInputProcessor getInstance]) {
                PopupMenuInputProcessor* popupMenuInputProcessor = (((PopupMenuInputProcessor*) [self getPopupMenuInputProcessor]));
                [popupMenuInputProcessor init_:popupMenuRectangle];
            }
            self->myFontProcessor = [MyFontProcessor getInstance];
        } JAVA_CATCH(Exception, e) {
            [self->logUtil put:self->commonStrings->EXCEPTION :self :self->canvasStrings->ON_DISPLAY_CHANGE_EVENT :e];
        } JAVA_END_TRY;
}


- (BaseMenuBehavior*) getInGameMenuBehavior {
        return [InGameMenuBehavior getInstance];
}


- (void) setCurrentThread {
        if ([J2MEUtil isHTML]) {
            [super setCurrentThreadFake];
        } else {
            [super setCurrentThread];
        }
}


- (void) onEvent:(AllBinaryEventObject*)eventObject {
        [ForcedLogUtil log:[EventStrings getInstance]->PERFORMANCE_MESSAGE :self];
}


- (void) onDisplayChangeEvent:(DisplayChangeEvent*)displayChangeEvent {
        JAVA_TRY {
            [self->logUtil putF:[[[[((StringMaker*) [StringMaker alloc]) init] append:self->commonStrings->START] append:[[DisplayInfoSingleton getInstance] toString]] toString] :self :self->canvasStrings->UPDATE_MEASUREMENT];
            self->myFontProcessor = self->updateMyFontProcessor;
            [self->menuBehavior onDisplayChangeEvent:self :displayChangeEvent];
        } JAVA_CATCH(Exception, e) {
            [self->logUtil put:self->commonStrings->EXCEPTION :self :self->canvasStrings->ON_DISPLAY_CHANGE_EVENT :e];
        } JAVA_END_TRY;
}


// throws Exception
- (void) updateMenuFromEvent:(DisplayChangeEvent*)displayChangeEvent {
        FormType* formType = [[FormTypeFactory getInstance] getFormType];
        Rectangle* rectangle = [self->formUtil createFormRectangle];
        [self->menuForm init_:rectangle :formType];
        if (self->currentTouchInputFactory != [NoButtonsTouchInputFactory getInstance]) {
            [self->touchButtonFactory toggle:[self isPaused] :[self->currentTouchInputFactory getList]];
        }
        self->myFontProcessor = self->updateMyFontProcessor;
}


// throws Exception
- (void) processSleep {
        [super processSleep];
        if ([AllBinaryMediaManager update]) {
            if (![self->primaryPlayerQueue process]) {
                [self->secondaryPlayerQueue process];
            }
        }
        if ([self->menuInputProcessor processInputList] != -1) {
            [self->runnableCanvasRefreshHelper process];
        }
}


// throws Exception
- (void) initPopupMenu {
        if (self->popupMenuInputProcessor == [NoMenuInputProcessor getInstance]) {
            Features* features = [Features getInstance];
            Rectangle* popupMenuRectangle = [self->myFormUtil getPopupMenuRectangle];
            if ([features isFeature:self->touchFeatureFactory->TOUCH_ENABLED]) {
                [self setOpenMenuPaintable:[((BasicPopupMenuPaintable*) [BasicPopupMenuPaintable alloc]) init:popupMenuRectangle :[self->gameLayerManager getBackgroundBasicColor] :[self->gameLayerManager getForegroundBasicColor]]];
                [self setPopupMenuInputProcessor:[((PopupMenuInputProcessor*) [PopupMenuInputProcessor alloc]) init:[((BasicArrayListD*) [BasicArrayListD alloc]) init] :-1 :self :popupMenuRectangle]];
            }
        } else {
        }
}


- (void) initMenu {
        JAVA_TRY {
            [self->menuBehavior initMenu:self];
        } JAVA_CATCH(Exception, e) {
            [self->logUtil put:self->commonStrings->EXCEPTION :self :"initMenu" :e];
        } JAVA_END_TRY;
}


// throws Exception
- (void) initMenu2 {
        [self closeMenu];
        FormType* formType = [[FormTypeFactory getInstance] getFormType];
        GameLimitedCommandTextItemArrayFactory* gameLimitedCommandTextItemArrayFactory = [GameLimitedCommandTextItemArrayFactory getInstance];
        CommandTextItemArrayFactory* commandTextItemArrayFactory = [gameLimitedCommandTextItemArrayFactory getCommandTextItemArrayFactory];
        ABCustomItem** items = [commandTextItemArrayFactory getInstance:[self getCommandStack] :[self->gameLayerManager getBackgroundBasicColor] :[self->gameLayerManager getForegroundBasicColor]];
        Rectangle* rectangle = [self->formUtil createFormRectangle];
        [self setMenuForm:[CommandCurrentSelectionFormFactory getInstance:[StringUtil getInstance]->EMPTY_STRING :items :rectangle :formType :25 :false :[self->gameLayerManager getBackgroundBasicColor] :[self->gameLayerManager getForegroundBasicColor]]];
        ScrollSelectionForm* scrollSelectionForm = [self getMenuForm];
        Features* features = [Features getInstance];
        if ([features isFeature:self->touchFeatureFactory->TOUCH_ENABLED]) {
            self->mainMenuInputProcessor = [((PopupCommandFormInputProcessor*) [PopupCommandFormInputProcessor alloc]) init:[((BasicArrayListD*) [BasicArrayListD alloc]) init] :-1 :self :scrollSelectionForm :((PopupMenuInputProcessor*) [self getPopupMenuInputProcessor])];
        } else {
        }
        [self setMenuInputProcessor:[self getPopupMenuInputProcessor]];
        if (scrollSelectionForm != [ScrollSelectionFormNoneFactory getInstance]) {
            [self setFormPaintable:[((FormPaintable*) [FormPaintable alloc]) init:scrollSelectionForm]];
        } else {
        }
        [self closeMenu];
}


- (void) updateMenu {
        JAVA_TRY {
            [self->menuBehavior updateMenu:self];
        } JAVA_CATCH(Exception, e) {
            [self->logUtil put:self->commonStrings->EXCEPTION :self :"initMenu" :e];
        } JAVA_END_TRY;
}


// throws Exception
- (void) updateMenu2 {
        ScrollSelectionForm* scrollSelectionForm = [self getMenuForm];
        [scrollSelectionForm deleteAll];
        GameLimitedCommandTextItemArrayFactory* gameLimitedCommandTextItemArrayFactory = [GameLimitedCommandTextItemArrayFactory getInstance];
        CommandTextItemArrayFactory* commandTextItemArrayFactory = [gameLimitedCommandTextItemArrayFactory getCommandTextItemArrayFactory];
        ABCustomItem** items = [commandTextItemArrayFactory getInstance:[self getCommandStack] :[self->gameLayerManager getBackgroundBasicColor] :[self->gameLayerManager getForegroundBasicColor]];
        int32_t size = java_array_length(items);
        for (int32_t index = 0; index < size; index++) {
            [scrollSelectionForm append:items[index]];
        }
        FormType* formType = [[FormTypeFactory getInstance] getFormType];
        Rectangle* rectangle = [self->formUtil createFormRectangle];
        [scrollSelectionForm init_:rectangle :formType];
}


// synchronized
- (void) pause {
        [self->gameBehavior pause:self];
        [self closeMenu];
        [super pause];
        [self->touchButtonFactory toggle:[self isPaused] :[[BasicArrayListUtil getInstance] getImmutableInstance]];
        [self->tsUtil gc];
}


// synchronized
- (void) unPause {
        [self->logUtil putF:self->commonStrings->START :self :self->gameStrings->UNPAUSE];
        [self closeMenu];
        [self->tsUtil gc];
        [super unPause];
        [self->touchButtonFactory toggle:[self isPaused] :[[BasicArrayListUtil getInstance] getImmutableInstance]];
        [self->gameBehavior unPause:self];
}


- (bool) isPausable {
        if ([[CurrentDisplayableFactory getInstance] getUsedRunnable] == [NullWaitGameRunnable getInstance]) {
            return true;
        } else {
            return false;
        }
}


// throws Exception
- (void) popupMenu {
        [self->menuBehavior popupMenu:self];
}


// throws Exception
- (void) popupMenu2 {
        [self->primaryPlayerQueue add:[SelectSound getInstance]];
        [self setMenuPaintable:[self getFormPaintable]];
        [self setMenuInputProcessor:self->mainMenuInputProcessor];
        [self->basicMotionGesturesHandler addListenerInterface:self->mainMenuInputProcessor];
        [self->gameKeyEventHandler addListener:self->mainMenuInputProcessor];
}


// throws Exception
- (void) toggleMenu {
        [self->logUtil putF:self->commonStrings->START :self :self->gameStrings->TOGGLE_MENU];
        if ([self getMenuPaintable] == [self getOpenMenuPaintable]) {
            [self pause];
            [self updateMenu];
            [self popupMenu];
        } else if ([self getMenuPaintable] == [self getFormPaintable]) {
            [self->primaryPlayerQueue add:[SelectSound getInstance]];
            [self unPause];
        }
}


- (void) closeMenu {
        [self->menuBehavior closeMenu:self];
}


- (void) closeMenu2 {
        [self setMenuPaintable:[self getOpenMenuPaintable]];
        [self->basicMotionGesturesHandler removeListener:self->mainMenuInputProcessor];
        [self->gameKeyEventHandler removeListener:self->mainMenuInputProcessor];
        [self setMenuInputProcessor:[self getPopupMenuInputProcessor]];
}


- (void) open {
        [self->basicMotionGesturesHandler addListenerInterface:self->menuInputProcessor];
        [self->gameKeyEventHandler addListener:self->menuInputProcessor];
}


- (void) close {
        [self->basicMotionGesturesHandler removeListener:self->menuInputProcessor];
        [self->gameKeyEventHandler removeListener:self->menuInputProcessor];
        [self->primaryPlayerQueue clear];
        [self->secondaryPlayerQueue clear];
}


// throws Exception
- (void) processorInit {
        [self setMainStateProcessor:[Processor getInstance]];
        [self setProcessGameProcessorInit];
}


- (void) setProcessGameProcessorInit {
        [self setProcessGameProcessor:[((GameProcessor*) [GameProcessor alloc]) init:self]];
}


- (void) initSpecialPaint {
        [self->menuBehavior initSpecialPaint:self];
}


// throws Exception
- (void) init_:(AllBinaryGameLayerManager*)gameLayerManager :(bool)buffered {
        [self->gameStateTimeHelper setStartTimeTNT];
        [self setHighScoreSubmitted:false];
        [self setLayerManager:gameLayerManager];
        if (!buffered) {
            const char* BUFF_MESSAGE = "XXX Not Buffering Causes Concurrency Issues XXX";
            [self->logUtil putF:BUFF_MESSAGE :self :self->commonStrings->CONSTRUCTOR];
        } else {
            java_throw(java_exception_new("Exception", "Buffering is disabled"));
        }
        [self setGameInputProcessor:[Processor getInstance]];
        Features* features = [Features getInstance];
        if ([features isFeature:[GameFeatureFactory getInstance]->CHEATING]) {
            self->isCheating = true;
            self->cheatProcessor = [((CheatGameInputProcessor*) [CheatGameInputProcessor alloc]) init:self];
            [self->gameKeyEventHandler addListener:self->cheatProcessor];
        } else {
            self->isCheating = false;
            self->cheatProcessor = [NoPlayerGameInput getInstance];
        }
        self->realEndGameProcessor = [((EndGameProcessor*) [EndGameProcessor alloc]) init:self];
        [self setEndGameProcessor:[Processor getInstance]];
        self->realStartIntermissionProcessor = [((StartIntermissionProcessor*) [StartIntermissionProcessor alloc]) init:self];
        self->startIntermissionProcessor = [Processor getInstance];
        [self setEndGameStatePaintable:[((EndGamePaintable*) [EndGamePaintable alloc]) init:self]];
        [self setEndGamePaintable:[NullPaintable getInstance]];
        [self setIntermissionPaintable:[NullPaintable getInstance]];
        [[self getStartIntermissionInterface] setListener:self];
}


- (void) notifyIntermission:(bool)enable {
        if (enable) {
            self->startIntermissionProcessor = self->realStartIntermissionProcessor;
        } else {
            self->startIntermissionProcessor = [Processor getInstance];
        }
        if (enable) {
            [self setIntermissionPaintable:[self getStartIntermissionPaintable]];
        } else {
            [self setIntermissionPaintable:[NullPaintable getInstance]];
        }
}


// throws Exception
- (void) mediaInit {
        [ForcedLogUtil log:self->commonStrings->NOT_IMPLEMENTED :self];
}


// throws Exception
// synchronized
- (void) initConfigurable:(AbeClientInformationInterface*)abeClientInformation {
        ProgressCanvas* progressCanvas = [ProgressCanvasFactory getInstance];
        [progressCanvas addNormalPortion:50 :"Setting Configurables"];
        [[GameInitializationUtil getInstance] initGame:abeClientInformation :self :self->gameInitializationInterfaceFactoryInterface];
        GameFeatureFactory* gameFeatureFactory = [GameFeatureFactory getInstance];
        ChangedGameFeatureListener* changedGameFeatureListener = [ChangedGameFeatureListener getInstance];
        if ([changedGameFeatureListener isChangedFeature:gameFeatureFactory->SOUND]) {
            Features* features = [Features getInstance];
            [self->logUtil putF:[[[[((StringMaker*) [StringMaker alloc]) init] append:"Sound Changing To: "] appendboolean:[features isFeature:gameFeatureFactory->SOUND]] toString] :self :"initConfigurable"];
            [self mediaInit];
            [changedGameFeatureListener remove:gameFeatureFactory->SOUND];
        }
        SensorFeatureFactory* sensorFeatureFactory = [SensorFeatureFactory getInstance];
        if ([changedGameFeatureListener isChangedFeature:sensorFeatureFactory->ORIENTATION_SENSORS] || [changedGameFeatureListener isChangedFeature:sensorFeatureFactory->NO_ORIENTATION] || [changedGameFeatureListener isChangedFeature:sensorFeatureFactory->SIMULATED_ORIENTATION_SENSORS]) {
            [changedGameFeatureListener remove:sensorFeatureFactory->NO_ORIENTATION];
            [changedGameFeatureListener remove:sensorFeatureFactory->ORIENTATION_SENSORS];
            [changedGameFeatureListener remove:sensorFeatureFactory->SIMULATED_ORIENTATION_SENSORS];
        }
        ResourceLoadingLevelFactory* resourceLoadingLevelFactory = [ResourceLoadingLevelFactory getInstance];
        [self loadResourceLoadingLevel:resourceLoadingLevelFactory->LOAD_GAME];
}


// throws Exception
- (void) initApp:(AbeClientInformationInterface*)abeClientInformation {
        [self initConfigurable:abeClientInformation];
        [self processorInit];
        [self->sensorGameUpdateProcessor process:self->gameLayerManager];
        [self->sensorGameUpdateProcessor sendNotifications:self->gameLayerManager];
        [self initTouch];
}


// throws Exception
- (void) initTouch {
        GameInitializedEvent* gameInitializedEvent = [GameInitializationUtil getInstance]->EVENT;
        ResourceLoadingLevelFactory* resourceLoadingLevelFactory = [ResourceLoadingLevelFactory getInstance];
        [gameInitializedEvent setResourceLoadingLevel:resourceLoadingLevelFactory->LOAD_TOUCH];
        [[GameInitializedEventHandler getInstance] fireEvent:gameInitializedEvent];
        [self->touchButtonFactory defaultList];
        [self updateTouch];
        [self postInitTouch];
}


// throws Exception
- (void) updateCurrentTouchInputFactory:(BaseTouchInput*)nextTouchInput {
        if (nextTouchInput != self->currentTouchInputFactory) {
            self->currentTouchInputFactory = nextTouchInput;
            [PreLogUtil put:[self->currentTouchInputFactory toString] :self :self->gameInputStrings->UDPATE_CURRENT_TOUCH_INPUT_FACTORY];
            [self->touchButtonFactory toggle:[self isPaused] :[self->currentTouchInputFactory getList]];
        }
}


// throws Exception
- (void) updateTouch {
        [self->gameBehavior updateTouch:self];
}


// throws Exception
- (void) updateTouch2 {
        Features* features = [Features getInstance];
        if ([features isFeature:self->touchFeatureFactory->AUTO_HIDE_SHOW_SCREEN_BUTTONS]) {
            if ([[self->gameLayerManager getGameInfo] getCurrentLevel] - [self getStartLevel] == 1) {
                [self setTouchPaintableP:[NullPaintable getInstance]];
            }
        }
}


// throws Exception
- (void) postInitTouch {
        [self setTouchButtonsPaintable:[TouchButtonsPaintableFactory getInstance:[self->gameLayerManager getForegroundBasicColor]]];
        [self updateScreenButtonPaintable];
}


- (void) initCommands:(CommandListener*)cmdListener {
        [self removeAllCommands];
        [self addCommands];
        [self setCommandListener:cmdListener];
}


- (void) addCommands {
        GameCommandsFactory* gameCommandsFactory = [GameCommandsFactory getInstance];
        MyCommandsFactory* myCommandsFactory = [MyCommandsFactory getInstance];
        if ([DebugFactory getInstance] != [NoDebug getInstance]) {
            [self addCommand:gameCommandsFactory->START_TRACE];
        }
        [self addCommand:gameCommandsFactory->RESTART_COMMAND];
        [self addCommand:myCommandsFactory->PAUSE_COMMAND];
        [self addCommand:gameCommandsFactory->QUIT_COMMAND];
        bool isOverScan = [[[OperatingSystemFactory getInstance] getOperatingSystemInstance] isOverScan];
        if ([J2MEUtil isHTML]) {
        } else if ((SWTUtil_staticInit(), SWTUtil_isSWT)) {
        } else if (!isOverScan) {
            if ([[TouchScreenFactory getInstance] isTouch] && [[((InGameFeatures*) [InGameFeatures alloc]) init] isAny]) {
                [self addCommand:(InGameOptionsForm_staticInit(), InGameOptionsForm_DISPLAY)];
            }
            [self addCommand:gameCommandsFactory->SAVE];
            [self addCommand:gameCommandsFactory->DISPLAY_LOAD_FORM];
        }
}


- (void) itemStateChanged:(Item*)item {
        JAVA_TRY {
            const char* itemLabel = [item getLabel];
            [self->logUtil putF:[[[[((StringMaker*) [StringMaker alloc]) init] append:self->commonLabels->ITEM_LABEL] append:itemLabel] toString] :self :"itemStateChanged"];
            if (java_objc_instanceof(item, [ChoiceGroup class])) {
                GameFeatureUtil* gameFeatureUtil = [GameFeatureUtil getInstance];
                if ([gameFeatureUtil isExclusive:itemLabel]) {
                    [gameFeatureUtil updateExclusiveForChoiceGroup:((ChoiceGroup*) item)];
                } else {
                    [gameFeatureUtil updateMultiple:((ChoiceGroup*) item)];
                }
            }
            [self->sensorGameUpdateProcessor process:self->gameLayerManager];
            [self updateTouch];
            [self updateScreenButtonPaintable];
            [self->sensorGameUpdateProcessor sendNotifications:self->gameLayerManager];
        } JAVA_CATCH(Exception, e) {
            [self->logUtil put:self->commonStrings->EXCEPTION :self :"itemStateChanged" :e];
        } JAVA_END_TRY;
}


// throws Exception
- (void) updateScreenButtonPaintable {
        [self->gameBehavior updateScreenButtonPaintable:self];
}


- (void) updateScreenButtonPaintable2 {
        Features* features = [Features getInstance];
        if ([features isFeature:self->touchFeatureFactory->AUTO_HIDE_SHOW_SCREEN_BUTTONS]) {
            [self setTouchPaintableP:[self getTouchButtonsPaintable]];
            [self setStartLevel:[[self->gameLayerManager getGameInfo] getCurrentLevel]];
        } else if ([features isFeature:self->touchFeatureFactory->SHOW_SCREEN_BUTTONS]) {
            [self setTouchPaintableP:[self getTouchButtonsPaintable]];
        } else if ([features isFeature:self->touchFeatureFactory->HIDE_SCREEN_BUTTONS]) {
            [self setTouchPaintableP:[NullPaintable getInstance]];
        } else {
            [self setTouchPaintableP:[NullPaintable getInstance]];
        }
}


- (AllBinaryGameLayerManager*) getLayerManager {
        return self->gameLayerManager;
}


- (void) setLayerManager:(AllBinaryGameLayerManager*)layerManager {
        self->gameLayerManager = layerManager;
}


// synchronized
- (bool) isGameOver {
        return self->gameOver;
}


// synchronized
- (void) setGameOver:(bool)gameOver {
        self->gameOver = gameOver;
}


// throws Exception
- (void) processGameOver {
        [PreLogUtil put:self->commonStrings->START :self :self->gameStrings->SET_GAME_OVER];
        [self setGameOver:true];
        [self removePauseCommand];
        [self setGameState:self->gameStateFactory->SHOW_END_RESULT_GAME_STATE];
        [self setEndGamePaintable:[self getEndGameStatePaintable]];
}


- (bool) isHighScoreSubmitted {
        return self->highScoreSubmitted;
}


// throws Exception
- (void) setHighScoreSubmitted:(bool)highScoreSubmitted {
        self->highScoreSubmitted = highScoreSubmitted;
        if (highScoreSubmitted) {
            [self->highScoresHelper setSelectedHighScores:[NullHighScoresSingletonFactory getInstance]];
        }
        [self->logUtil putF:[[[[((StringMaker*) [StringMaker alloc]) init] append:"isHighScoreSubmitted: "] appendboolean:highScoreSubmitted] toString] :self :"setHighScoreSubmitted"];
}


- (GameState*) getGameState {
        return self->gameState;
}


// throws Exception
- (void) setGameState:(GameState*)gameState {
        [self->logUtil putF:[[[[((StringMaker*) [StringMaker alloc]) init] append:self->gameStrings->GAME_STATE] append:[self->stringUtil toString:gameState]] toString] :self :self->gameStrings->SET_GAME_STATE];
        self->gameState = gameState;
        [self->gameStateTimeHelper setStartTimeTNT];
        [self updateEndGameProcessor];
        [self updateGameKeyEventProcessor];
        [self->gameBehavior setGameState:self];
}


// throws Exception
- (void) updateGameState {
        GameAdState* gameAdState = [self->gameAdStateFactory getCurrentInstance];
        [gameAdState processAdState:self->gameState :[[self->gameLayerManager getGameInfo] getGameType]];
        if (self->gameState != self->gameStateFactory->PLAYING_GAME_STATE) {
            [gameAdState processPageAdState];
        }
}


- (void) updateGameKeyEventProcessor {
        if ([self getGameState] != self->gameStateFactory->PLAYING_GAME_STATE || self->isCheating) {
        } else {
        }
}


- (void) removeAllGameKeyInputListenersOnBuild {
        [self removeAllGameKeyInputListeners];
}


- (void) removeAllGameKeyInputListeners {
        [self->gameBehavior removeAllGameKeyInputListeners:self];
}


- (void) removeAllGameKeyInputListeners2 {
        [self->logUtil putF:"Remove PlayerInput Listeners" :self :"removeAllGameKeyInputListeners"];
        for (int32_t index = [self->localPlayerGameInputList size] - 1; index >= 0; index--) {
            PlayerGameInput* playerGameInput = ((PlayerGameInput*) [self->localPlayerGameInputList get:index]);
            [self removeKeyInputListener:playerGameInput];
            [playerGameInput removeNonAIInputGameKeyEvents];
        }
}


- (void) removeKeyInputListener:(PlayerGameInput*)playerGameInput {
        [self->gameKeyEventHandler removeListener:playerGameInput];
}


// throws Exception
- (void) updateEndGameProcessor {
        [self->gameBehavior updateEndGameProcessor:self];
}


// throws Exception
- (void) updateEndGameProcessor2 {
        if ([self getGameState] == self->gameStateFactory->SHOW_END_RESULT_GAME_STATE || [self getGameState] == self->gameStateFactory->SHOW_HIGH_SCORE_GAME_STATE) {
            [self setEndGameProcessor:self->realEndGameProcessor];
        } else {
            [self setEndGameProcessor:[Processor getInstance]];
        }
}


// throws Exception
- (void) buildGameInit:(bool)isPortion {
}


// throws Exception
- (void) cleanupGame {
        [self->logUtil putF:self->commonStrings->START :self :self->commonStrings->CLEANUP];
        ProgressCanvas* progressCanvas = [ProgressCanvasFactory getInstance];
        [progressCanvas addNormalPortion:10 :"Cleaning Up"];
        [self->primaryPlayerQueue clear];
        [self->secondaryPlayerQueue clear];
        [[GameLevelDisplayChangeEventListenersFactory getInstance] clear];
}


// throws Exception
- (void) loadResourceLoadingLevel:(ResourceLoadingLevel*)resourceLoadingLevel {
        GameInitializedEvent* gameInitializedEvent = [GameInitializationUtil getInstance]->EVENT;
        [gameInitializedEvent setResourceLoadingLevel:resourceLoadingLevel];
        [[GameInitializedEventHandler getInstance] fireEvent:gameInitializedEvent];
}


// throws Exception
- (void) loadResources:(int32_t)level {
        GameInitializedEvent* gameInitializedEvent = [GameInitializationUtil getInstance]->EVENT;
        [gameInitializedEvent setLevel:level];
        [[GameInitializedEventHandler getInstance] fireEvent:gameInitializedEvent];
}


// throws Exception
- (void) updateColor {
}


// throws Exception
- (void) buildGame:(int32_t)portion {
        [self->screenCapture endRecording];
        [self->screenCapture startRecording];
        ProgressCanvas* progressCanvas = [ProgressCanvasFactory getInstance];
        Features* features = [Features getInstance];
        [progressCanvas addNormalPortion:portion :"Generic Build"];
        [self removeAllGameKeyInputListenersOnBuild];
        [self updateTouch];
        [progressCanvas addNormalPortion:portion :"High Scores"];
        [self->highScoresFactoryInterface fetchHighScores:[self->gameLayerManager getGameInfo] :self->highScoresHelper];
        [self setHighScoresPaintable:[NullPaintable getInstance]];
        [progressCanvas addNormalPortion:portion :"Finishing."];
        [[self getEndGameInfoP] update:[[self getLayerManager] getGameInfo] :self];
        self->isSingleKeyRepeatableProcessing = [features isFeature:[InputFeatureFactory getInstance]->SINGLE_KEY_REPEAT_PRESS];
        [self setGameOver:false];
        [progressCanvas addNormalPortion:portion :"Finishing.."];
        [self updateColor];
        [[self getStartIntermissionPaintable] update];
        if (![self isRunningInAnotherThread]) {
            return;
        }
        [progressCanvas addNormalPortion:portion :"Finishing..."];
        if ([self isMainCanvas] || ![self isInitialized]) {
            if ([features isFeature:[MainFeatureFactory getInstance]->LOAD_ONDEMAND]) {
                if ([self getCustomCommandListener] != nil) {
                    [progressCanvas end];
                }
            } else {
                [progressCanvas end];
            }
            [self setInitialized:true];
        }
        if ([self getCustomCommandListener] == (NullCommandListener_staticInit(), NullCommandListener_NULL_COMMAND_LISTENER)) {
            [self->logUtil putF:"Show Game Paintable in DemoCanvas Thread" :self :self->BUILD_GAME];
            [self->gameCanvasStartListener showGamePaintable];
        } else {
            [self->logUtil putF:"No GameCanvasStartListener" :self :self->BUILD_GAME];
        }
        [self->colorFillPaintable setBasicColorP:[self->gameLayerManager getBackgroundBasicColor]];
        [self->gameBehavior buildGame:self];
}


- (void) buildGame2 {
        [PreLogUtil put:[[[[((StringMaker*) [StringMaker alloc]) init] append:self->gameInputStrings->ENABLE_PLAYER_GAME_INPUTS] appendint:[self->localPlayerGameInputList size]] toString] :self :self->BUILD_GAME];
        PlayerGameInput* playerGameInput = nullptr;
        for (int32_t index = [self->localPlayerGameInputList size] - 1; index >= 0; index--) {
            playerGameInput = ((PlayerGameInput*) [self->localPlayerGameInputList get:index]);
            [PreLogUtil put:[[[[((StringMaker*) [StringMaker alloc]) init] append:self->gameInputStrings->ENABLE_PLAYER_GAME_INPUT] append:[playerGameInput toString]] toString] :self :self->BUILD_GAME];
            [playerGameInput removeNonAIInputGameKeyEvents];
            [self addKeyInputListener:playerGameInput];
        }
}


- (void) addKeyInputListener:(PlayerGameInput*)playerGameInput {
        [[GameKeyEventHandler getInstance] addListenerForPlayer:playerGameInput :[playerGameInput getPlayerInputId]];
}


- (void) setGameCanvasStartListener:(DemoPaintableInterface*)gameCanvasStartListener {
        self->gameCanvasStartListener = gameCanvasStartListener;
}


// throws Exception
- (void) loadState {
        [self->logUtil putF:self->commonStrings->START :self :self->commonStrings->LOAD];
        ABHashtable* hashtable = [self getLoadStateHashtable];
        if (hashtable != nil && [hashtable size] > 0) {
            const char* levelAsString = ((const char*) [hashtable get:JAVA_BOX(((id) (GameInfo_staticInit(), GameInfo_LEVEL_NAME)))]);
            int32_t level = ((int32_t) (((int32_t) strtoll(levelAsString, nullptr, 10))));
            GameInfo* gameInfo = [self->gameLayerManager getGameInfo];
            [gameInfo setCurrentLevel:level];
        }
}


// throws Exception
- (ABHashtable*) getLoadStateHashtable {
        [self->logUtil putF:[[[[((StringMaker*) [StringMaker alloc]) init] append:self->commonLabels->START_LABEL] append:[self->stringUtil toString:self->hashtable]] toString] :self :"getLoadStateHashtable"];
        return self->hashtable;
}


- (void) setLoadStateHashtable:(ABHashtable*)hashtable {
        [self->logUtil putF:[[[[((StringMaker*) [StringMaker alloc]) init] append:self->commonLabels->START_LABEL] append:[self->stringUtil toString:hashtable]] toString] :self :"setLoadStateHashtable"];
        self->hashtable = hashtable;
}


- (ABHashtable*) getCurrentStateHashtable {
        ABHashtable* hashtable = [self->stdUtil createHashtable];
        int32_t level = [[self->gameLayerManager getGameInfo] getCurrentLevel];
        [hashtable put:JAVA_BOX([(GameInfo_staticInit(), GameInfo_LEVEL_NAME) toString]) :JAVA_BOX(java_string_of(level))];
        [self->logUtil putF:[[[[((StringMaker*) [StringMaker alloc]) init] append:"End: "] append:[self->stringUtil toString:hashtable]] toString] :self :"getCurrentStateHashtable"];
        return hashtable;
}


- (void) paintGameOver:(Graphics*)graphics {
        [ForcedLogUtil log:self->commonStrings->NOT_IMPLEMENTED :self];
}


- (void) draw:(Graphics*)graphics {
        [self->colorFillPaintable paint:graphics];
        [self->basicSetColorUtil setBasicColorP:graphics :[self->gameLayerManager getForegroundBasicColor]];
        [self->gameSpecificPaintable paint:graphics];
}


- (void) clear:(Graphics*)graphics {
        [self->colorFillPaintable paint:graphics];
}


- (void) paint:(Graphics*)graphics {
        [self->myFontProcessor process:graphics];
        [self->baseGameStatistics nextRefresh];
        [self draw:graphics];
        [self->menuPaintable paint:graphics];
        [self->progressPaintable paint:graphics];
}


- (void) paintThreed:(Graphics*)graphics {
}


// throws Exception
- (void) processEndLevelIntermissionGameState {
}


- (void) nonBotPaint:(Graphics*)graphics {
        [self->endGamePaintable paint:graphics];
        [self->intermissionPaintable paint:graphics];
        [self paintIntermission:graphics];
        [self->touchPaintable paint:graphics];
}


- (void) paintIntermission:(Graphics*)graphics {
}


- (void) keyPressed:(int32_t)keyCode {
        [self keyPressedByDevice:keyCode :0];
}


- (void) keyReleased:(int32_t)keyCode {
        [self keyReleasedByDevice:keyCode :0];
}


- (void) keyRepeated:(int32_t)keyCode {
        [self keyRepeatedByDevice:keyCode :0];
}


- (void) keyPressedByDevice:(int32_t)keyCode :(int32_t)deviceId {
        [self->inputProcessor keyPressedByDevice:keyCode :deviceId];
}


- (void) keyRepeatedByDevice:(int32_t)keyCode :(int32_t)deviceId {
        if (self->isSingleKeyRepeatableProcessing) {
            [self->inputProcessor keyPressedByDevice:keyCode :deviceId];
        }
}


- (void) keyReleasedByDevice:(int32_t)keyCode :(int32_t)deviceId {
        [self->inputProcessor keyReleasedByDevice:self :keyCode :deviceId];
}


// throws Exception
- (void) handleRawKey:(int32_t)keyCode :(int32_t)deviceId :(bool)repeated {
}


- (int32_t) endProgress:(bool)isProgress {
        int32_t portion = 30;
        if (isProgress && [self isMainCanvas]) {
            MyCommandsFactory* myCommandsFactory = [MyCommandsFactory getInstance];
            ProgressCanvas* progressCanvas = [ProgressCanvasFactory getInstance];
            [progressCanvas start];
            [[self getCustomCommandListener] commandAction:myCommandsFactory->SET_DISPLAYABLE :progressCanvas];
            portion = 4;
        }
        return portion;
}


// throws Exception
- (void) processPlayingGame {
        [self->cheatProcessor update];
        [[self->sensorGameUpdateProcessor getInputSensor] update];
        [self->gameInputProcessor process];
        [self->gameLayerManager process];
        [self->startIntermissionProcessor process];
}


// throws Exception
- (void) threadInit {
}


// throws Exception
- (void) processGame {
        [super process];
        if ([AllBinaryMediaManager update]) {
            if (![self->primaryPlayerQueue process]) {
                [self->secondaryPlayerQueue process];
            }
        }
        [self->mainStateProcessor process];
        [self->menuInputProcessor processInputList];
        [self->endGameProcessor process];
        [self->baseGameStatistics nextFrame];
}


- (void) notifyDonePainting {
        java_monitor_enter(self);
        {
            [self->threadObjectUtil notifyObject:self];
        }
        java_monitor_exit(self);
}


// throws Exception
- (void) shouldWait {
        Features* features = [Features getInstance];
        if ([AndroidUtil isAndroid]) {
        } else if ([features isFeature:self->openGLFeatureFactory->OPENGL_2D]) {
        } else {
            if ([features isDefault:self->openGLFeatureFactory->OPENGL]) {
                OpenGLImageSpecificFactory* openGLImageSpecificFactory = [OpenGLImageSpecificFactory getInstance];
                while (openGLImageSpecificFactory->updating) {
                    java_sleep(self->YIELD_SLEEP);
                }
            }
        }
}


- (void) run {
        JAVA_TRY {
            [self->logUtil putF:self->commonStrings->START_RUNNABLE :self :self->commonStrings->RUN];
            ProgressCanvas* progressCanvas = [ProgressCanvasFactory getInstance];
            [progressCanvas addNormalPortion:50 :"Game Thread"];
            [self setCurrentThread];
            [self setRunning:true];
            if ([self getCustomCommandListener] == (NullCommandListener_staticInit(), NullCommandListener_NULL_COMMAND_LISTENER)) {
                java_sleep(self->YIELD_SLEEP);
            }
            [self shouldWait];
            [self threadInit];
            if ([self getCustomCommandListener] == (NullCommandListener_staticInit(), NullCommandListener_NULL_COMMAND_LISTENER)) {
                java_sleep(self->YIELD_SLEEP);
            }
            [self open];
            GameAdState* gameAdState = [self->gameAdStateFactory getCurrentInstance];
            [gameAdState init_];
            [gameAdState setGameIsReady:true];
            [self->gameBehavior run:self];
            [self->logUtil putF:self->commonStrings->END_RUNNABLE :self :self->commonStrings->RUN];
        } JAVA_CATCH(Exception, e) {
            [self->logUtil put:self->commonStrings->EXCEPTION :self :self->commonStrings->RUN :e];
        } JAVA_END_TRY;
}


// throws Exception
- (void) run2 {
        Features* features = [Features getInstance];
        if ([features isDefault:self->openGLFeatureFactory->OPENGL_AS_GAME_THREAD] || [J2MEUtil isHTML]) {
            if ([features isDefault:self->openGLFeatureFactory->OPENGL_AS_GAME_THREAD]) {
                [self->logUtil putF:[self->openGLFeatureFactory->OPENGL_AS_GAME_THREAD getName] :self :self->commonStrings->RUN];
            }
            if ([J2MEUtil isHTML]) {
                [self->logUtil putF:[GraphicsStrings getInstance]->HTML :self :self->commonStrings->RUN];
            }
            CurrentDisplayableFactory* currentDisplayableFactory = [CurrentDisplayableFactory getInstance];
            [currentDisplayableFactory setRunnable:self->gameRunnable];
            [currentDisplayableFactory setDisplayable:self];
            [[OpenGLThreadUtil getInstance] onResume];
        } else if ([features isDefault:self->openGLFeatureFactory->OPENGL_AND_GAME_HAVE_DIFFERENT_THREADS]) {
            [self->logUtil putF:[self->openGLFeatureFactory->OPENGL_AND_GAME_HAVE_DIFFERENT_THREADS getName] :self :self->commonStrings->RUN];
            [[OpenGLThreadUtil getInstance] onResume];
            while ([self isRunning]) {
                [self run3];
            }
            [self end];
        } else {
            [self->logUtil putF:"this thread" :self :self->commonStrings->RUN];
            while ([self isRunning]) {
                [self run3];
            }
            [self end];
        }
}


// throws Exception
- (void) run3 {
        [self->loopTimeHelper setStartTime:[self->gameTickTimeDelayHelper setStartTime]];
        [self->gameTickDisplayInfoSingleton update];
        [self processGame];
        [self processLoopSleep];
}


- (void) setRunning:(bool)running {
        [super setRunning:running];
        JAVA_TRY {
            Features* features = [Features getInstance];
            if (running) {
            } else {
                if ([features isDefault:self->openGLFeatureFactory->OPENGL] || (SWTUtil_staticInit(), SWTUtil_isSWT)) {
                    if ([[self->gameLayerManager getGameInfo] getGameType] != self->gameTypeFactory->BOT) {
                        CurrentDisplayableFactory* currentDisplayableFactory = [CurrentDisplayableFactory getInstance];
                        [currentDisplayableFactory clearRunnable];
                    }
                    [self end];
                }
            }
        } JAVA_CATCH(Exception, e) {
            [self->logUtil put:self->commonStrings->EXCEPTION :self :self->SET_RUNNING :e];
        } JAVA_END_TRY;
}


// throws Exception
- (void) end {
        [self->screenCapture endRecording];
        [self->baseGameStatistics add:[[[[((StringMaker*) [StringMaker alloc]) init] append:[self->baseGameStatistics toString]] append:[CommonSeps getInstance]->NEW_LINE] toString]];
        [self->baseGameStatistics init_];
        [self->gameKeyEventHandler removeListener:self->cheatProcessor];
        [self close];
        [self removeAllGameKeyInputListeners];
        [self endGameThread];
}


// throws Exception
- (void) endGameThread {
        [[DisplayChangeEventHandler getInstance] removeListener:self];
        [[GameLevelDisplayChangeEventListenersFactory getInstance] clear];
        GameAdState* gameAdState = [self->gameAdStateFactory getCurrentInstance];
        [gameAdState notPlayingAdState];
}


- (HighScore*) createHighScore:(int64_t)score {
        GameInfo* gameInfo = [self->gameLayerManager getGameInfo];
        return [((HighScore*) [HighScore alloc]) init:0 :"NONE" :[((GameInfo*) [GameInfo alloc]) init:[gameInfo getGameType] :[gameInfo getGameMode] :[PlayerTypesFactory getInstance]->PLAYER_TYPE_ONE :0 :0] :score];
}


// throws Exception
- (void) setHighScore:(AbeClientInformationInterface*)abeClientInformation :(const char*)name :(int64_t)score :(bool)autoSubmit :(bool)isLast {
        [self->gameBehavior setHighScore:abeClientInformation :self :name :score :autoSubmit :isLast];
}


// throws Exception
- (void) setHighScore2:(AbeClientInformationInterface*)abeClientInformation :(const char*)name :(int64_t)score :(bool)autoSubmit :(bool)isLast {
        HighScore* highScore = [self createHighScore:score];
        HighScoreTextBox* textBox = [((HighScoreTextBox*) [HighScoreTextBox alloc]) init:self->highScoresFactoryInterface :self->highScoresHelper :abeClientInformation :[self->gameLayerManager getGameInfo] :[self getCustomCommandListener] :name :highScore :[self->gameLayerManager getBackgroundBasicColor] :[self->gameLayerManager getForegroundBasicColor]];
        if (isLast) {
            [[self getCustomCommandListener] commandAction:[GameCommandsFactory getInstance]->SET_MENU_DISPLAYABLE :textBox];
        }
        if (autoSubmit) {
            [[SecondaryThreadPool getInstance] runTask:[((SaveHighScoreRunnable*) [SaveHighScoreRunnable alloc]) init:isLast :textBox]];
        }
}


- (TimeDelayHelper*) getGameStateTimeHelper {
        return self->gameStateTimeHelper;
}


- (void) setInitialized:(bool)initialized {
        self->initialized = initialized;
}


- (bool) isInitialized {
        return self->initialized;
}


- (int32_t) getSourceId {
        return AllBinaryGameCanvas_id_;
}


- (void) setProgressPaintable:(PaintableInterface*)paintable {
        self->progressPaintable = paintable;
}


- (IntermissionInterface*) getStartIntermissionInterface {
        return self->startIntermissionInterface;
}


- (IntermissionInterface*) getEndLevelIntermissionInterface {
        return self->endLevelIntermissionInterface;
}


- (void) setTouchPaintableP:(Paintable*)paintable {
        self->touchPaintable = paintable;
}


- (Paintable*) getTouchPaintableP {
        return self->touchPaintable;
}


- (void) setEndGamePaintable:(Paintable*)endGamePaintable {
        self->endGamePaintable = endGamePaintable;
}


- (Paintable*) getEndGamePaintable {
        return self->endGamePaintable;
}


- (void) setIntermissionPaintable:(Paintable*)intermissionPaintable {
        self->intermissionPaintable = intermissionPaintable;
}


- (Paintable*) getIntermissionPaintable {
        return self->intermissionPaintable;
}


- (EndGameInfo*) getEndGameInfoP {
        return self->endGameInfo;
}


- (void) setHighScoresPaintable:(Paintable*)highScoresPaintable {
        self->highScoresPaintable = highScoresPaintable;
}


- (Paintable*) getHighScoresPaintable {
        return self->highScoresPaintable;
}


- (HighScoresPaintable*) getRealHighScoresPaintable {
        return self->realHighScoresPaintable;
}


- (void) clearPlayerGameInputList {
        PlayerGameInput* playerGameInput = nullptr;
        for (int32_t index = [self->localPlayerGameInputList size] - 1; index >= 0; index--) {
            playerGameInput = ((PlayerGameInput*) [self->localPlayerGameInputList get:index]);
            [self->gameKeyEventHandler removeListener:playerGameInput];
        }
        [self->localPlayerGameInputList clear];
}


- (void) addPlayerGameInput:(PlayerGameInput*)playerGameInput {
        [self->localPlayerGameInputList add:playerGameInput];
}


- (void) setMenuInputProcessor:(BasicMenuInputProcessor*)menuInputProcessor {
        self->menuInputProcessor = menuInputProcessor;
}


- (BasicMenuInputProcessor*) getMenuInputProcessor {
        return self->menuInputProcessor;
}


- (ScrollSelectionForm*) getMenuForm {
        return self->menuForm;
}


- (void) setMenuForm:(ScrollSelectionForm*)menuForm {
        self->menuForm = menuForm;
}


- (int32_t) getStartLevel {
        return self->startLevel;
}


- (void) setStartLevel:(int32_t)startLevel {
        self->startLevel = startLevel;
}


- (void) setTouchButtonsPaintable:(Paintable*)touchButtonsPaintable {
        self->touchButtonsPaintable = touchButtonsPaintable;
}


- (Paintable*) getTouchButtonsPaintable {
        return self->touchButtonsPaintable;
}


- (void) setGameInputProcessor:(Processor*)gameInputProcessor {
        self->gameInputProcessor = gameInputProcessor;
}


- (Processor*) getGameInputProcessor {
        return self->gameInputProcessor;
}


- (void) setEndGameProcessor:(Processor*)endGameProcessor {
        self->endGameProcessor = endGameProcessor;
}


- (Processor*) getEndGameProcessor {
        return self->endGameProcessor;
}


- (void) setEndGameStatePaintable:(Paintable*)endGameStatePaintable {
        self->endGameStatePaintable = endGameStatePaintable;
}


- (Paintable*) getEndGameStatePaintable {
        return self->endGameStatePaintable;
}


- (void) setNonBotPaintableP:(Paintable*)nonBotPaintable {
        self->nonBotPaintable = nonBotPaintable;
}


- (Paintable*) getNonBotPaintableP {
        return self->nonBotPaintable;
}


- (void) setStartIntermissionPaintable:(InitUpdatePaintable*)startIntermissionPaintable {
        self->startIntermissionPaintable = startIntermissionPaintable;
}


- (InitUpdatePaintable*) getStartIntermissionPaintable {
        return self->startIntermissionPaintable;
}


- (void) setMainStateProcessor:(Processor*)mainStateProcessor {
        self->mainStateProcessor = mainStateProcessor;
}


- (Processor*) getMainStateProcessor {
        return self->mainStateProcessor;
}


- (void) setProcessGameProcessor:(Processor*)processGameProcessor {
        self->processGameProcessor = processGameProcessor;
}


- (Processor*) getProcessGameProcessor {
        return self->processGameProcessor;
}


- (void) setOpenMenuPaintable:(Paintable*)openMenuPaintable {
        self->openMenuPaintable = openMenuPaintable;
}


- (Paintable*) getOpenMenuPaintable {
        return self->openMenuPaintable;
}


- (void) setPopupMenuInputProcessor:(BasicMenuInputProcessor*)popupMenuInputProcessor {
        self->popupMenuInputProcessor = popupMenuInputProcessor;
}


- (BasicMenuInputProcessor*) getPopupMenuInputProcessor {
        return self->popupMenuInputProcessor;
}


- (SensorGameUpdateProcessor*) getSensorGameUpdateProcessor {
        return self->sensorGameUpdateProcessor;
}


- (InputProcessor*) getRawGameInputProcessor {
        return self->rawGameInputProcessor;
}


- (InputProcessor*) getRawInputProcessor {
        return self->rawInputProcessor;
}


- (void) setInputProcessor:(InputProcessor*)inputProcessor {
        self->inputProcessor = inputProcessor;
}


- (InputProcessor*) getInputProcessor {
        return self->inputProcessor;
}


- (void) setMenuPaintable:(Paintable*)menuPaintable {
        self->menuPaintable = menuPaintable;
}


- (Paintable*) getMenuPaintable {
        return self->menuPaintable;
}


- (void) setFormPaintable:(Paintable*)formPaintable {
        self->formPaintable = formPaintable;
}


- (Paintable*) getFormPaintable {
        return self->formPaintable;
}


- (void) setGameSpecificPaintableP:(Paintable*)gameSpecificPaintable {
        self->gameSpecificPaintable = gameSpecificPaintable;
}


- (Paintable*) getGameSpecificPaintableP {
        return self->gameSpecificPaintable;
}


- (bool) isSingleThread {
        return [[OpenGLFeatureUtil getInstance] isAnyThreed] || (SWTUtil_staticInit(), SWTUtil_isSWT);
}


- (bool) isRunningInAnotherThread {
        Features* features = [Features getInstance];
        OpenGLFeatureFactory* openGLFeatureFactory = [OpenGLFeatureFactory getInstance];
        if ([features isDefault:openGLFeatureFactory->OPENGL_AS_GAME_THREAD]) {
            return true;
        } else {
            return [self isRunning];
        }
}


- (int32_t) getType {
        return AllBinaryGameCanvas_TYPE;
}


- (const char*) getTitle {
        return [super getTitle];
}


- (bool) isPaused {
        return [super isPaused];
}

@end

