// Generated Code Do Not Modify
#include "org/allbinary/game/midlet/GameMidlet.h"
#include "javax/microedition/lcdui/Canvas.h"
#include "javax/microedition/lcdui/Command.h"
#include "javax/microedition/lcdui/Displayable.h"
#include "javax/microedition/lcdui/NullCanvas.h"
#include "javax/microedition/midlet/MIDletStateChangeException.h"
#include "org/allbinary/J2MEUtil.h"
#include "org/allbinary/TsUtil.h"
#include "org/allbinary/business/advertisement/GameAdStateFactory.h"
#include "org/allbinary/canvas/FullScreenUtil.h"
#include "org/allbinary/canvas/GameStatisticsFactory.h"
#include "org/allbinary/debug/DebugFactory.h"
#include "org/allbinary/debug/DebugInterface.h"
#include "org/allbinary/game/GameAdState.h"
#include "org/allbinary/game/GameInfo.h"
#include "org/allbinary/game/GameMode.h"
#include "org/allbinary/game/GameStrings.h"
#include "org/allbinary/game/GameTypeFactory.h"
#include "org/allbinary/game/PlayerTypesFactory.h"
#include "org/allbinary/game/commands/GameCommandsFactory.h"
#include "org/allbinary/game/configuration/GameOptionsForm.h"
#include "org/allbinary/game/configuration/GameOptionsFormFactory.h"
#include "org/allbinary/game/configuration/InGameFeatures.h"
#include "org/allbinary/game/configuration/InGameOptionsForm.h"
#include "org/allbinary/game/configuration/InGameOptionsFormFactory.h"
#include "org/allbinary/game/configuration/LoadGameForm.h"
#include "org/allbinary/game/configuration/event/ChangedGameFeatureListener.h"
#include "org/allbinary/game/configuration/event/GameFeatureEventHandler.h"
#include "org/allbinary/game/configuration/feature/Features.h"
#include "org/allbinary/game/configuration/feature/GameFeatureFormUtil.h"
#include "org/allbinary/game/configuration/feature/MainFeatureFactory.h"
#include "org/allbinary/game/configuration/persistance/GamePersistanceSingleton.h"
#include "org/allbinary/game/configuration/persistance/KeyValuePersistance.h"
#include "org/allbinary/game/displayable/canvas/AllBinaryGameCanvas.h"
#include "org/allbinary/game/displayable/canvas/BasicPaintablesCanvas.h"
#include "org/allbinary/game/displayable/canvas/DemoCanvas.h"
#include "org/allbinary/game/displayable/canvas/GameCanvasRunnableInterface.h"
#include "org/allbinary/game/displayable/canvas/GameEventHandlerUtil.h"
#include "org/allbinary/game/displayable/canvas/GameInputMappingCanvas.h"
#include "org/allbinary/game/displayable/canvas/GameInputMappingInstructionsCanvas.h"
#include "org/allbinary/game/displayable/canvas/MenuListener.h"
#include "org/allbinary/game/displayable/canvas/NullGameCanvasRunnable.h"
#include "org/allbinary/game/input/TextNotificationUtil.h"
#include "org/allbinary/game/layer/AllBinaryGameLayerManager.h"
#include "org/allbinary/game/layer/hud/event/GameNotificationEventHandler.h"
#include "org/allbinary/game/paint/help/HelpPaintable.h"
#include "org/allbinary/game/score/HighScoreCommands.h"
#include "org/allbinary/game/score/HighScoreCommandsFactory.h"
#include "org/allbinary/game/score/displayable/HighScoreTextBox.h"
#include "org/allbinary/game/score/displayable/HighScoreUtil.h"
#include "org/allbinary/game/score/displayable/HighScoresCanvas.h"
#include "org/allbinary/game/state/GameStateFactory.h"
#include "org/allbinary/graphics/ResizableListenerHandler.h"
#include "org/allbinary/graphics/canvas/transition/progress/ProgressCanvas.h"
#include "org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory.h"
#include "org/allbinary/graphics/color/BasicColorFactory.h"
#include "org/allbinary/graphics/color/ColorChangeEventHandler.h"
#include "org/allbinary/graphics/displayable/CanvasStrings.h"
#include "org/allbinary/graphics/displayable/MyCanvas.h"
#include "org/allbinary/graphics/displayable/command/MyCommandsFactory.h"
#include "org/allbinary/graphics/displayable/screen/AboutCommandProcessor.h"
#include "org/allbinary/graphics/displayable/screen/AboutPaintableFactory.h"
#include "org/allbinary/graphics/displayable/screen/CommandForm.h"
#include "org/allbinary/graphics/displayable/screen/WebCommandProcessor.h"
#include "org/allbinary/input/AllBinarySensorManager.h"
#include "org/allbinary/input/event/VirtualKeyboardEventHandler.h"
#include "org/allbinary/input/motion/gesture/observer/BasicMotionGesturesHandler.h"
#include "org/allbinary/logic/communication/log/ForcedLogUtil.h"
#include "org/allbinary/logic/communication/log/PreLogUtil.h"
#include "org/allbinary/logic/math/SmallIntegerSingletonFactory.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/logic/system/security/licensing/ClientInformationFactory.h"
#include "org/allbinary/logic/system/security/licensing/InApplicationPurchaseFactory.h"
#include "org/allbinary/logic/system/security/licensing/LockableFeature.h"
#include "org/allbinary/logic/system/security/licensing/LockableFeatureFactory.h"
#include "org/allbinary/logic/util/event/AllBinaryEventObject.h"
#include "org/allbinary/logic/util/event/EventStrings.h"
#include "org/allbinary/media/audio/AllBinaryMediaManager.h"
#include "org/allbinary/midlet/MidletStrings.h"
#include "org/allbinary/thread/NullThread.h"
#include "org/allbinary/thread/ThreadFactoryUtil.h"
#include "org/allbinary/thread/ThreadUtil.h"
#include "org/allbinary/time/TimeDelayHelper.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/util/EnumerationUtil.h"
#include "org/allbinary/logic/StdUtil.h"
#include "org/allbinary/util/ABHashtable.h"
#include "org/allbinary/game/midlet/GameMidletStateFactory.h"
#include "org/allbinary/game/midlet/GameMidletEventHandler.h"
#include "org/allbinary/game/midlet/DemoGameMidletEvent.h"
#include "org/allbinary/game/midlet/DemoGameMidletStateFactory.h"
#if __has_include("org/allbinary/game/midlet/Advertisements.h")
#include "org/allbinary/game/midlet/Advertisements.h"
#endif
#if __has_include("javax/microedition/lcdui/Advertisements.h")
#include "javax/microedition/lcdui/Advertisements.h"
#endif
#if __has_include("javax/microedition/lcdui/Advertisements.h")
#include "javax/microedition/lcdui/Advertisements.h"
#endif
#if __has_include("javax/microedition/lcdui/Advertisements.h")
#include "javax/microedition/lcdui/Advertisements.h"
#endif
#if __has_include("javax/microedition/lcdui/Advertisements.h")
#include "javax/microedition/lcdui/Advertisements.h"
#endif
#if __has_include("javax/microedition/lcdui/Advertisements.h")
#include "javax/microedition/lcdui/Advertisements.h"
#endif
#if __has_include("javax/microedition/midlet/Advertisements.h")
#include "javax/microedition/midlet/Advertisements.h"
#endif
#if __has_include("org/allbinary/Advertisements.h")
#include "org/allbinary/Advertisements.h"
#endif
#if __has_include("org/allbinary/Advertisements.h")
#include "org/allbinary/Advertisements.h"
#endif
#if __has_include("org/allbinary/business/advertisement/Advertisements.h")
#include "org/allbinary/business/advertisement/Advertisements.h"
#endif
#if __has_include("org/allbinary/canvas/Advertisements.h")
#include "org/allbinary/canvas/Advertisements.h"
#endif
#if __has_include("org/allbinary/canvas/Advertisements.h")
#include "org/allbinary/canvas/Advertisements.h"
#endif
#if __has_include("org/allbinary/debug/Advertisements.h")
#include "org/allbinary/debug/Advertisements.h"
#endif
#if __has_include("org/allbinary/debug/Advertisements.h")
#include "org/allbinary/debug/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/Advertisements.h")
#include "org/allbinary/game/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/Advertisements.h")
#include "org/allbinary/game/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/Advertisements.h")
#include "org/allbinary/game/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/Advertisements.h")
#include "org/allbinary/game/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/Advertisements.h")
#include "org/allbinary/game/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/Advertisements.h")
#include "org/allbinary/game/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/commands/Advertisements.h")
#include "org/allbinary/game/commands/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/configuration/Advertisements.h")
#include "org/allbinary/game/configuration/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/configuration/Advertisements.h")
#include "org/allbinary/game/configuration/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/configuration/Advertisements.h")
#include "org/allbinary/game/configuration/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/configuration/Advertisements.h")
#include "org/allbinary/game/configuration/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/configuration/Advertisements.h")
#include "org/allbinary/game/configuration/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/configuration/Advertisements.h")
#include "org/allbinary/game/configuration/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/configuration/event/Advertisements.h")
#include "org/allbinary/game/configuration/event/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/configuration/event/Advertisements.h")
#include "org/allbinary/game/configuration/event/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/configuration/feature/Advertisements.h")
#include "org/allbinary/game/configuration/feature/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/configuration/feature/Advertisements.h")
#include "org/allbinary/game/configuration/feature/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/configuration/feature/Advertisements.h")
#include "org/allbinary/game/configuration/feature/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/configuration/persistance/Advertisements.h")
#include "org/allbinary/game/configuration/persistance/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/configuration/persistance/Advertisements.h")
#include "org/allbinary/game/configuration/persistance/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/displayable/canvas/Advertisements.h")
#include "org/allbinary/game/displayable/canvas/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/displayable/canvas/Advertisements.h")
#include "org/allbinary/game/displayable/canvas/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/displayable/canvas/Advertisements.h")
#include "org/allbinary/game/displayable/canvas/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/displayable/canvas/Advertisements.h")
#include "org/allbinary/game/displayable/canvas/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/displayable/canvas/Advertisements.h")
#include "org/allbinary/game/displayable/canvas/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/displayable/canvas/Advertisements.h")
#include "org/allbinary/game/displayable/canvas/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/displayable/canvas/Advertisements.h")
#include "org/allbinary/game/displayable/canvas/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/displayable/canvas/Advertisements.h")
#include "org/allbinary/game/displayable/canvas/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/displayable/canvas/Advertisements.h")
#include "org/allbinary/game/displayable/canvas/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/input/Advertisements.h")
#include "org/allbinary/game/input/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/layer/Advertisements.h")
#include "org/allbinary/game/layer/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/layer/hud/event/Advertisements.h")
#include "org/allbinary/game/layer/hud/event/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/paint/help/Advertisements.h")
#include "org/allbinary/game/paint/help/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/score/Advertisements.h")
#include "org/allbinary/game/score/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/score/Advertisements.h")
#include "org/allbinary/game/score/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/score/displayable/Advertisements.h")
#include "org/allbinary/game/score/displayable/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/score/displayable/Advertisements.h")
#include "org/allbinary/game/score/displayable/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/score/displayable/Advertisements.h")
#include "org/allbinary/game/score/displayable/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/state/Advertisements.h")
#include "org/allbinary/game/state/Advertisements.h"
#endif
#if __has_include("org/allbinary/graphics/Advertisements.h")
#include "org/allbinary/graphics/Advertisements.h"
#endif
#if __has_include("org/allbinary/graphics/canvas/transition/progress/Advertisements.h")
#include "org/allbinary/graphics/canvas/transition/progress/Advertisements.h"
#endif
#if __has_include("org/allbinary/graphics/canvas/transition/progress/Advertisements.h")
#include "org/allbinary/graphics/canvas/transition/progress/Advertisements.h"
#endif
#if __has_include("org/allbinary/graphics/color/Advertisements.h")
#include "org/allbinary/graphics/color/Advertisements.h"
#endif
#if __has_include("org/allbinary/graphics/color/Advertisements.h")
#include "org/allbinary/graphics/color/Advertisements.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/Advertisements.h")
#include "org/allbinary/graphics/displayable/Advertisements.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/Advertisements.h")
#include "org/allbinary/graphics/displayable/Advertisements.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/command/Advertisements.h")
#include "org/allbinary/graphics/displayable/command/Advertisements.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/screen/Advertisements.h")
#include "org/allbinary/graphics/displayable/screen/Advertisements.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/screen/Advertisements.h")
#include "org/allbinary/graphics/displayable/screen/Advertisements.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/screen/Advertisements.h")
#include "org/allbinary/graphics/displayable/screen/Advertisements.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/screen/Advertisements.h")
#include "org/allbinary/graphics/displayable/screen/Advertisements.h"
#endif
#if __has_include("org/allbinary/input/Advertisements.h")
#include "org/allbinary/input/Advertisements.h"
#endif
#if __has_include("org/allbinary/input/event/Advertisements.h")
#include "org/allbinary/input/event/Advertisements.h"
#endif
#if __has_include("org/allbinary/input/motion/gesture/observer/Advertisements.h")
#include "org/allbinary/input/motion/gesture/observer/Advertisements.h"
#endif
#if __has_include("org/allbinary/logic/communication/log/Advertisements.h")
#include "org/allbinary/logic/communication/log/Advertisements.h"
#endif
#if __has_include("org/allbinary/logic/communication/log/Advertisements.h")
#include "org/allbinary/logic/communication/log/Advertisements.h"
#endif
#if __has_include("org/allbinary/logic/math/Advertisements.h")
#include "org/allbinary/logic/math/Advertisements.h"
#endif
#if __has_include("org/allbinary/logic/string/Advertisements.h")
#include "org/allbinary/logic/string/Advertisements.h"
#endif
#if __has_include("org/allbinary/logic/system/security/licensing/Advertisements.h")
#include "org/allbinary/logic/system/security/licensing/Advertisements.h"
#endif
#if __has_include("org/allbinary/logic/system/security/licensing/Advertisements.h")
#include "org/allbinary/logic/system/security/licensing/Advertisements.h"
#endif
#if __has_include("org/allbinary/logic/system/security/licensing/Advertisements.h")
#include "org/allbinary/logic/system/security/licensing/Advertisements.h"
#endif
#if __has_include("org/allbinary/logic/system/security/licensing/Advertisements.h")
#include "org/allbinary/logic/system/security/licensing/Advertisements.h"
#endif
#if __has_include("org/allbinary/logic/util/event/Advertisements.h")
#include "org/allbinary/logic/util/event/Advertisements.h"
#endif
#if __has_include("org/allbinary/logic/util/event/Advertisements.h")
#include "org/allbinary/logic/util/event/Advertisements.h"
#endif
#if __has_include("org/allbinary/media/audio/Advertisements.h")
#include "org/allbinary/media/audio/Advertisements.h"
#endif
#if __has_include("org/allbinary/midlet/Advertisements.h")
#include "org/allbinary/midlet/Advertisements.h"
#endif
#if __has_include("org/allbinary/midlet/Advertisements.h")
#include "org/allbinary/midlet/Advertisements.h"
#endif
#if __has_include("org/allbinary/thread/Advertisements.h")
#include "org/allbinary/thread/Advertisements.h"
#endif
#if __has_include("org/allbinary/thread/Advertisements.h")
#include "org/allbinary/thread/Advertisements.h"
#endif
#if __has_include("org/allbinary/thread/Advertisements.h")
#include "org/allbinary/thread/Advertisements.h"
#endif
#if __has_include("org/allbinary/time/Advertisements.h")
#include "org/allbinary/time/Advertisements.h"
#endif
#if __has_include("org/allbinary/util/Advertisements.h")
#include "org/allbinary/util/Advertisements.h"
#endif
#if __has_include("org/allbinary/util/Advertisements.h")
#include "org/allbinary/util/Advertisements.h"
#endif
#if __has_include("org/allbinary/logic/Advertisements.h")
#include "org/allbinary/logic/Advertisements.h"
#endif
#if __has_include("org/allbinary/util/Advertisements.h")
#include "org/allbinary/util/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/midlet/Advertisements.h")
#include "org/allbinary/game/midlet/Advertisements.h"
#endif
#if __has_include("javax/microedition/lcdui/Advertisements.h")
#include "javax/microedition/lcdui/Advertisements.h"
#endif
#if __has_include("javax/microedition/lcdui/Advertisements.h")
#include "javax/microedition/lcdui/Advertisements.h"
#endif
#if __has_include("javax/microedition/lcdui/Advertisements.h")
#include "javax/microedition/lcdui/Advertisements.h"
#endif
#if __has_include("javax/microedition/lcdui/Advertisements.h")
#include "javax/microedition/lcdui/Advertisements.h"
#endif
#if __has_include("javax/microedition/lcdui/Advertisements.h")
#include "javax/microedition/lcdui/Advertisements.h"
#endif
#if __has_include("javax/microedition/midlet/Advertisements.h")
#include "javax/microedition/midlet/Advertisements.h"
#endif
#if __has_include("org/allbinary/Advertisements.h")
#include "org/allbinary/Advertisements.h"
#endif
#if __has_include("org/allbinary/Advertisements.h")
#include "org/allbinary/Advertisements.h"
#endif
#if __has_include("org/allbinary/business/advertisement/Advertisements.h")
#include "org/allbinary/business/advertisement/Advertisements.h"
#endif
#if __has_include("org/allbinary/canvas/Advertisements.h")
#include "org/allbinary/canvas/Advertisements.h"
#endif
#if __has_include("org/allbinary/canvas/Advertisements.h")
#include "org/allbinary/canvas/Advertisements.h"
#endif
#if __has_include("org/allbinary/debug/Advertisements.h")
#include "org/allbinary/debug/Advertisements.h"
#endif
#if __has_include("org/allbinary/debug/Advertisements.h")
#include "org/allbinary/debug/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/Advertisements.h")
#include "org/allbinary/game/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/Advertisements.h")
#include "org/allbinary/game/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/Advertisements.h")
#include "org/allbinary/game/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/Advertisements.h")
#include "org/allbinary/game/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/Advertisements.h")
#include "org/allbinary/game/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/Advertisements.h")
#include "org/allbinary/game/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/commands/Advertisements.h")
#include "org/allbinary/game/commands/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/configuration/Advertisements.h")
#include "org/allbinary/game/configuration/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/configuration/Advertisements.h")
#include "org/allbinary/game/configuration/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/configuration/Advertisements.h")
#include "org/allbinary/game/configuration/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/configuration/Advertisements.h")
#include "org/allbinary/game/configuration/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/configuration/Advertisements.h")
#include "org/allbinary/game/configuration/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/configuration/Advertisements.h")
#include "org/allbinary/game/configuration/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/configuration/event/Advertisements.h")
#include "org/allbinary/game/configuration/event/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/configuration/event/Advertisements.h")
#include "org/allbinary/game/configuration/event/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/configuration/feature/Advertisements.h")
#include "org/allbinary/game/configuration/feature/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/configuration/feature/Advertisements.h")
#include "org/allbinary/game/configuration/feature/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/configuration/feature/Advertisements.h")
#include "org/allbinary/game/configuration/feature/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/configuration/persistance/Advertisements.h")
#include "org/allbinary/game/configuration/persistance/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/configuration/persistance/Advertisements.h")
#include "org/allbinary/game/configuration/persistance/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/displayable/canvas/Advertisements.h")
#include "org/allbinary/game/displayable/canvas/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/displayable/canvas/Advertisements.h")
#include "org/allbinary/game/displayable/canvas/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/displayable/canvas/Advertisements.h")
#include "org/allbinary/game/displayable/canvas/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/displayable/canvas/Advertisements.h")
#include "org/allbinary/game/displayable/canvas/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/displayable/canvas/Advertisements.h")
#include "org/allbinary/game/displayable/canvas/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/displayable/canvas/Advertisements.h")
#include "org/allbinary/game/displayable/canvas/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/displayable/canvas/Advertisements.h")
#include "org/allbinary/game/displayable/canvas/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/displayable/canvas/Advertisements.h")
#include "org/allbinary/game/displayable/canvas/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/displayable/canvas/Advertisements.h")
#include "org/allbinary/game/displayable/canvas/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/input/Advertisements.h")
#include "org/allbinary/game/input/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/layer/Advertisements.h")
#include "org/allbinary/game/layer/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/layer/hud/event/Advertisements.h")
#include "org/allbinary/game/layer/hud/event/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/paint/help/Advertisements.h")
#include "org/allbinary/game/paint/help/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/score/Advertisements.h")
#include "org/allbinary/game/score/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/score/Advertisements.h")
#include "org/allbinary/game/score/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/score/displayable/Advertisements.h")
#include "org/allbinary/game/score/displayable/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/score/displayable/Advertisements.h")
#include "org/allbinary/game/score/displayable/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/score/displayable/Advertisements.h")
#include "org/allbinary/game/score/displayable/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/state/Advertisements.h")
#include "org/allbinary/game/state/Advertisements.h"
#endif
#if __has_include("org/allbinary/graphics/Advertisements.h")
#include "org/allbinary/graphics/Advertisements.h"
#endif
#if __has_include("org/allbinary/graphics/canvas/transition/progress/Advertisements.h")
#include "org/allbinary/graphics/canvas/transition/progress/Advertisements.h"
#endif
#if __has_include("org/allbinary/graphics/canvas/transition/progress/Advertisements.h")
#include "org/allbinary/graphics/canvas/transition/progress/Advertisements.h"
#endif
#if __has_include("org/allbinary/graphics/color/Advertisements.h")
#include "org/allbinary/graphics/color/Advertisements.h"
#endif
#if __has_include("org/allbinary/graphics/color/Advertisements.h")
#include "org/allbinary/graphics/color/Advertisements.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/Advertisements.h")
#include "org/allbinary/graphics/displayable/Advertisements.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/Advertisements.h")
#include "org/allbinary/graphics/displayable/Advertisements.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/command/Advertisements.h")
#include "org/allbinary/graphics/displayable/command/Advertisements.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/screen/Advertisements.h")
#include "org/allbinary/graphics/displayable/screen/Advertisements.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/screen/Advertisements.h")
#include "org/allbinary/graphics/displayable/screen/Advertisements.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/screen/Advertisements.h")
#include "org/allbinary/graphics/displayable/screen/Advertisements.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/screen/Advertisements.h")
#include "org/allbinary/graphics/displayable/screen/Advertisements.h"
#endif
#if __has_include("org/allbinary/input/Advertisements.h")
#include "org/allbinary/input/Advertisements.h"
#endif
#if __has_include("org/allbinary/input/event/Advertisements.h")
#include "org/allbinary/input/event/Advertisements.h"
#endif
#if __has_include("org/allbinary/input/motion/gesture/observer/Advertisements.h")
#include "org/allbinary/input/motion/gesture/observer/Advertisements.h"
#endif
#if __has_include("org/allbinary/logic/communication/log/Advertisements.h")
#include "org/allbinary/logic/communication/log/Advertisements.h"
#endif
#if __has_include("org/allbinary/logic/communication/log/Advertisements.h")
#include "org/allbinary/logic/communication/log/Advertisements.h"
#endif
#if __has_include("org/allbinary/logic/math/Advertisements.h")
#include "org/allbinary/logic/math/Advertisements.h"
#endif
#if __has_include("org/allbinary/logic/string/Advertisements.h")
#include "org/allbinary/logic/string/Advertisements.h"
#endif
#if __has_include("org/allbinary/logic/system/security/licensing/Advertisements.h")
#include "org/allbinary/logic/system/security/licensing/Advertisements.h"
#endif
#if __has_include("org/allbinary/logic/system/security/licensing/Advertisements.h")
#include "org/allbinary/logic/system/security/licensing/Advertisements.h"
#endif
#if __has_include("org/allbinary/logic/system/security/licensing/Advertisements.h")
#include "org/allbinary/logic/system/security/licensing/Advertisements.h"
#endif
#if __has_include("org/allbinary/logic/system/security/licensing/Advertisements.h")
#include "org/allbinary/logic/system/security/licensing/Advertisements.h"
#endif
#if __has_include("org/allbinary/logic/util/event/Advertisements.h")
#include "org/allbinary/logic/util/event/Advertisements.h"
#endif
#if __has_include("org/allbinary/logic/util/event/Advertisements.h")
#include "org/allbinary/logic/util/event/Advertisements.h"
#endif
#if __has_include("org/allbinary/media/audio/Advertisements.h")
#include "org/allbinary/media/audio/Advertisements.h"
#endif
#if __has_include("org/allbinary/midlet/Advertisements.h")
#include "org/allbinary/midlet/Advertisements.h"
#endif
#if __has_include("org/allbinary/midlet/Advertisements.h")
#include "org/allbinary/midlet/Advertisements.h"
#endif
#if __has_include("org/allbinary/thread/Advertisements.h")
#include "org/allbinary/thread/Advertisements.h"
#endif
#if __has_include("org/allbinary/thread/Advertisements.h")
#include "org/allbinary/thread/Advertisements.h"
#endif
#if __has_include("org/allbinary/thread/Advertisements.h")
#include "org/allbinary/thread/Advertisements.h"
#endif
#if __has_include("org/allbinary/time/Advertisements.h")
#include "org/allbinary/time/Advertisements.h"
#endif
#if __has_include("org/allbinary/util/Advertisements.h")
#include "org/allbinary/util/Advertisements.h"
#endif
#if __has_include("org/allbinary/util/Advertisements.h")
#include "org/allbinary/util/Advertisements.h"
#endif
#if __has_include("org/allbinary/logic/Advertisements.h")
#include "org/allbinary/logic/Advertisements.h"
#endif
#if __has_include("org/allbinary/util/Advertisements.h")
#include "org/allbinary/util/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/midlet/Advertisements.h")
#include "org/allbinary/game/midlet/Advertisements.h"
#endif
#if __has_include("javax/microedition/lcdui/Advertisements.h")
#include "javax/microedition/lcdui/Advertisements.h"
#endif
#if __has_include("javax/microedition/lcdui/Advertisements.h")
#include "javax/microedition/lcdui/Advertisements.h"
#endif
#if __has_include("javax/microedition/lcdui/Advertisements.h")
#include "javax/microedition/lcdui/Advertisements.h"
#endif
#if __has_include("javax/microedition/lcdui/Advertisements.h")
#include "javax/microedition/lcdui/Advertisements.h"
#endif
#if __has_include("javax/microedition/lcdui/Advertisements.h")
#include "javax/microedition/lcdui/Advertisements.h"
#endif
#if __has_include("javax/microedition/midlet/Advertisements.h")
#include "javax/microedition/midlet/Advertisements.h"
#endif
#if __has_include("org/allbinary/Advertisements.h")
#include "org/allbinary/Advertisements.h"
#endif
#if __has_include("org/allbinary/Advertisements.h")
#include "org/allbinary/Advertisements.h"
#endif
#if __has_include("org/allbinary/business/advertisement/Advertisements.h")
#include "org/allbinary/business/advertisement/Advertisements.h"
#endif
#if __has_include("org/allbinary/canvas/Advertisements.h")
#include "org/allbinary/canvas/Advertisements.h"
#endif
#if __has_include("org/allbinary/canvas/Advertisements.h")
#include "org/allbinary/canvas/Advertisements.h"
#endif
#if __has_include("org/allbinary/debug/Advertisements.h")
#include "org/allbinary/debug/Advertisements.h"
#endif
#if __has_include("org/allbinary/debug/Advertisements.h")
#include "org/allbinary/debug/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/Advertisements.h")
#include "org/allbinary/game/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/Advertisements.h")
#include "org/allbinary/game/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/Advertisements.h")
#include "org/allbinary/game/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/Advertisements.h")
#include "org/allbinary/game/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/Advertisements.h")
#include "org/allbinary/game/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/Advertisements.h")
#include "org/allbinary/game/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/commands/Advertisements.h")
#include "org/allbinary/game/commands/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/configuration/Advertisements.h")
#include "org/allbinary/game/configuration/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/configuration/Advertisements.h")
#include "org/allbinary/game/configuration/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/configuration/Advertisements.h")
#include "org/allbinary/game/configuration/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/configuration/Advertisements.h")
#include "org/allbinary/game/configuration/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/configuration/Advertisements.h")
#include "org/allbinary/game/configuration/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/configuration/Advertisements.h")
#include "org/allbinary/game/configuration/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/configuration/event/Advertisements.h")
#include "org/allbinary/game/configuration/event/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/configuration/event/Advertisements.h")
#include "org/allbinary/game/configuration/event/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/configuration/feature/Advertisements.h")
#include "org/allbinary/game/configuration/feature/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/configuration/feature/Advertisements.h")
#include "org/allbinary/game/configuration/feature/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/configuration/feature/Advertisements.h")
#include "org/allbinary/game/configuration/feature/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/configuration/persistance/Advertisements.h")
#include "org/allbinary/game/configuration/persistance/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/configuration/persistance/Advertisements.h")
#include "org/allbinary/game/configuration/persistance/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/displayable/canvas/Advertisements.h")
#include "org/allbinary/game/displayable/canvas/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/displayable/canvas/Advertisements.h")
#include "org/allbinary/game/displayable/canvas/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/displayable/canvas/Advertisements.h")
#include "org/allbinary/game/displayable/canvas/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/displayable/canvas/Advertisements.h")
#include "org/allbinary/game/displayable/canvas/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/displayable/canvas/Advertisements.h")
#include "org/allbinary/game/displayable/canvas/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/displayable/canvas/Advertisements.h")
#include "org/allbinary/game/displayable/canvas/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/displayable/canvas/Advertisements.h")
#include "org/allbinary/game/displayable/canvas/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/displayable/canvas/Advertisements.h")
#include "org/allbinary/game/displayable/canvas/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/displayable/canvas/Advertisements.h")
#include "org/allbinary/game/displayable/canvas/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/input/Advertisements.h")
#include "org/allbinary/game/input/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/layer/Advertisements.h")
#include "org/allbinary/game/layer/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/layer/hud/event/Advertisements.h")
#include "org/allbinary/game/layer/hud/event/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/paint/help/Advertisements.h")
#include "org/allbinary/game/paint/help/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/score/Advertisements.h")
#include "org/allbinary/game/score/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/score/Advertisements.h")
#include "org/allbinary/game/score/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/score/displayable/Advertisements.h")
#include "org/allbinary/game/score/displayable/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/score/displayable/Advertisements.h")
#include "org/allbinary/game/score/displayable/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/score/displayable/Advertisements.h")
#include "org/allbinary/game/score/displayable/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/state/Advertisements.h")
#include "org/allbinary/game/state/Advertisements.h"
#endif
#if __has_include("org/allbinary/graphics/Advertisements.h")
#include "org/allbinary/graphics/Advertisements.h"
#endif
#if __has_include("org/allbinary/graphics/canvas/transition/progress/Advertisements.h")
#include "org/allbinary/graphics/canvas/transition/progress/Advertisements.h"
#endif
#if __has_include("org/allbinary/graphics/canvas/transition/progress/Advertisements.h")
#include "org/allbinary/graphics/canvas/transition/progress/Advertisements.h"
#endif
#if __has_include("org/allbinary/graphics/color/Advertisements.h")
#include "org/allbinary/graphics/color/Advertisements.h"
#endif
#if __has_include("org/allbinary/graphics/color/Advertisements.h")
#include "org/allbinary/graphics/color/Advertisements.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/Advertisements.h")
#include "org/allbinary/graphics/displayable/Advertisements.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/Advertisements.h")
#include "org/allbinary/graphics/displayable/Advertisements.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/command/Advertisements.h")
#include "org/allbinary/graphics/displayable/command/Advertisements.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/screen/Advertisements.h")
#include "org/allbinary/graphics/displayable/screen/Advertisements.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/screen/Advertisements.h")
#include "org/allbinary/graphics/displayable/screen/Advertisements.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/screen/Advertisements.h")
#include "org/allbinary/graphics/displayable/screen/Advertisements.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/screen/Advertisements.h")
#include "org/allbinary/graphics/displayable/screen/Advertisements.h"
#endif
#if __has_include("org/allbinary/input/Advertisements.h")
#include "org/allbinary/input/Advertisements.h"
#endif
#if __has_include("org/allbinary/input/event/Advertisements.h")
#include "org/allbinary/input/event/Advertisements.h"
#endif
#if __has_include("org/allbinary/input/motion/gesture/observer/Advertisements.h")
#include "org/allbinary/input/motion/gesture/observer/Advertisements.h"
#endif
#if __has_include("org/allbinary/logic/communication/log/Advertisements.h")
#include "org/allbinary/logic/communication/log/Advertisements.h"
#endif
#if __has_include("org/allbinary/logic/communication/log/Advertisements.h")
#include "org/allbinary/logic/communication/log/Advertisements.h"
#endif
#if __has_include("org/allbinary/logic/math/Advertisements.h")
#include "org/allbinary/logic/math/Advertisements.h"
#endif
#if __has_include("org/allbinary/logic/string/Advertisements.h")
#include "org/allbinary/logic/string/Advertisements.h"
#endif
#if __has_include("org/allbinary/logic/system/security/licensing/Advertisements.h")
#include "org/allbinary/logic/system/security/licensing/Advertisements.h"
#endif
#if __has_include("org/allbinary/logic/system/security/licensing/Advertisements.h")
#include "org/allbinary/logic/system/security/licensing/Advertisements.h"
#endif
#if __has_include("org/allbinary/logic/system/security/licensing/Advertisements.h")
#include "org/allbinary/logic/system/security/licensing/Advertisements.h"
#endif
#if __has_include("org/allbinary/logic/system/security/licensing/Advertisements.h")
#include "org/allbinary/logic/system/security/licensing/Advertisements.h"
#endif
#if __has_include("org/allbinary/logic/util/event/Advertisements.h")
#include "org/allbinary/logic/util/event/Advertisements.h"
#endif
#if __has_include("org/allbinary/logic/util/event/Advertisements.h")
#include "org/allbinary/logic/util/event/Advertisements.h"
#endif
#if __has_include("org/allbinary/media/audio/Advertisements.h")
#include "org/allbinary/media/audio/Advertisements.h"
#endif
#if __has_include("org/allbinary/midlet/Advertisements.h")
#include "org/allbinary/midlet/Advertisements.h"
#endif
#if __has_include("org/allbinary/midlet/Advertisements.h")
#include "org/allbinary/midlet/Advertisements.h"
#endif
#if __has_include("org/allbinary/thread/Advertisements.h")
#include "org/allbinary/thread/Advertisements.h"
#endif
#if __has_include("org/allbinary/thread/Advertisements.h")
#include "org/allbinary/thread/Advertisements.h"
#endif
#if __has_include("org/allbinary/thread/Advertisements.h")
#include "org/allbinary/thread/Advertisements.h"
#endif
#if __has_include("org/allbinary/time/Advertisements.h")
#include "org/allbinary/time/Advertisements.h"
#endif
#if __has_include("org/allbinary/util/Advertisements.h")
#include "org/allbinary/util/Advertisements.h"
#endif
#if __has_include("org/allbinary/util/Advertisements.h")
#include "org/allbinary/util/Advertisements.h"
#endif
#if __has_include("org/allbinary/logic/Advertisements.h")
#include "org/allbinary/logic/Advertisements.h"
#endif
#if __has_include("org/allbinary/util/Advertisements.h")
#include "org/allbinary/util/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/midlet/Advertisements.h")
#include "org/allbinary/game/midlet/Advertisements.h"
#endif
#if __has_include("javax/microedition/lcdui/Advertisements.h")
#include "javax/microedition/lcdui/Advertisements.h"
#endif
#if __has_include("javax/microedition/lcdui/Advertisements.h")
#include "javax/microedition/lcdui/Advertisements.h"
#endif
#if __has_include("javax/microedition/lcdui/Advertisements.h")
#include "javax/microedition/lcdui/Advertisements.h"
#endif
#if __has_include("javax/microedition/lcdui/Advertisements.h")
#include "javax/microedition/lcdui/Advertisements.h"
#endif
#if __has_include("javax/microedition/lcdui/Advertisements.h")
#include "javax/microedition/lcdui/Advertisements.h"
#endif
#if __has_include("javax/microedition/midlet/Advertisements.h")
#include "javax/microedition/midlet/Advertisements.h"
#endif
#if __has_include("org/allbinary/Advertisements.h")
#include "org/allbinary/Advertisements.h"
#endif
#if __has_include("org/allbinary/Advertisements.h")
#include "org/allbinary/Advertisements.h"
#endif
#if __has_include("org/allbinary/business/advertisement/Advertisements.h")
#include "org/allbinary/business/advertisement/Advertisements.h"
#endif
#if __has_include("org/allbinary/canvas/Advertisements.h")
#include "org/allbinary/canvas/Advertisements.h"
#endif
#if __has_include("org/allbinary/canvas/Advertisements.h")
#include "org/allbinary/canvas/Advertisements.h"
#endif
#if __has_include("org/allbinary/debug/Advertisements.h")
#include "org/allbinary/debug/Advertisements.h"
#endif
#if __has_include("org/allbinary/debug/Advertisements.h")
#include "org/allbinary/debug/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/Advertisements.h")
#include "org/allbinary/game/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/Advertisements.h")
#include "org/allbinary/game/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/Advertisements.h")
#include "org/allbinary/game/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/Advertisements.h")
#include "org/allbinary/game/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/Advertisements.h")
#include "org/allbinary/game/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/Advertisements.h")
#include "org/allbinary/game/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/commands/Advertisements.h")
#include "org/allbinary/game/commands/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/configuration/Advertisements.h")
#include "org/allbinary/game/configuration/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/configuration/Advertisements.h")
#include "org/allbinary/game/configuration/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/configuration/Advertisements.h")
#include "org/allbinary/game/configuration/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/configuration/Advertisements.h")
#include "org/allbinary/game/configuration/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/configuration/Advertisements.h")
#include "org/allbinary/game/configuration/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/configuration/Advertisements.h")
#include "org/allbinary/game/configuration/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/configuration/event/Advertisements.h")
#include "org/allbinary/game/configuration/event/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/configuration/event/Advertisements.h")
#include "org/allbinary/game/configuration/event/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/configuration/feature/Advertisements.h")
#include "org/allbinary/game/configuration/feature/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/configuration/feature/Advertisements.h")
#include "org/allbinary/game/configuration/feature/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/configuration/feature/Advertisements.h")
#include "org/allbinary/game/configuration/feature/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/configuration/persistance/Advertisements.h")
#include "org/allbinary/game/configuration/persistance/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/configuration/persistance/Advertisements.h")
#include "org/allbinary/game/configuration/persistance/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/displayable/canvas/Advertisements.h")
#include "org/allbinary/game/displayable/canvas/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/displayable/canvas/Advertisements.h")
#include "org/allbinary/game/displayable/canvas/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/displayable/canvas/Advertisements.h")
#include "org/allbinary/game/displayable/canvas/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/displayable/canvas/Advertisements.h")
#include "org/allbinary/game/displayable/canvas/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/displayable/canvas/Advertisements.h")
#include "org/allbinary/game/displayable/canvas/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/displayable/canvas/Advertisements.h")
#include "org/allbinary/game/displayable/canvas/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/displayable/canvas/Advertisements.h")
#include "org/allbinary/game/displayable/canvas/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/displayable/canvas/Advertisements.h")
#include "org/allbinary/game/displayable/canvas/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/displayable/canvas/Advertisements.h")
#include "org/allbinary/game/displayable/canvas/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/input/Advertisements.h")
#include "org/allbinary/game/input/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/layer/Advertisements.h")
#include "org/allbinary/game/layer/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/layer/hud/event/Advertisements.h")
#include "org/allbinary/game/layer/hud/event/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/paint/help/Advertisements.h")
#include "org/allbinary/game/paint/help/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/score/Advertisements.h")
#include "org/allbinary/game/score/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/score/Advertisements.h")
#include "org/allbinary/game/score/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/score/displayable/Advertisements.h")
#include "org/allbinary/game/score/displayable/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/score/displayable/Advertisements.h")
#include "org/allbinary/game/score/displayable/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/score/displayable/Advertisements.h")
#include "org/allbinary/game/score/displayable/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/state/Advertisements.h")
#include "org/allbinary/game/state/Advertisements.h"
#endif
#if __has_include("org/allbinary/graphics/Advertisements.h")
#include "org/allbinary/graphics/Advertisements.h"
#endif
#if __has_include("org/allbinary/graphics/canvas/transition/progress/Advertisements.h")
#include "org/allbinary/graphics/canvas/transition/progress/Advertisements.h"
#endif
#if __has_include("org/allbinary/graphics/canvas/transition/progress/Advertisements.h")
#include "org/allbinary/graphics/canvas/transition/progress/Advertisements.h"
#endif
#if __has_include("org/allbinary/graphics/color/Advertisements.h")
#include "org/allbinary/graphics/color/Advertisements.h"
#endif
#if __has_include("org/allbinary/graphics/color/Advertisements.h")
#include "org/allbinary/graphics/color/Advertisements.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/Advertisements.h")
#include "org/allbinary/graphics/displayable/Advertisements.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/Advertisements.h")
#include "org/allbinary/graphics/displayable/Advertisements.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/command/Advertisements.h")
#include "org/allbinary/graphics/displayable/command/Advertisements.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/screen/Advertisements.h")
#include "org/allbinary/graphics/displayable/screen/Advertisements.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/screen/Advertisements.h")
#include "org/allbinary/graphics/displayable/screen/Advertisements.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/screen/Advertisements.h")
#include "org/allbinary/graphics/displayable/screen/Advertisements.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/screen/Advertisements.h")
#include "org/allbinary/graphics/displayable/screen/Advertisements.h"
#endif
#if __has_include("org/allbinary/input/Advertisements.h")
#include "org/allbinary/input/Advertisements.h"
#endif
#if __has_include("org/allbinary/input/event/Advertisements.h")
#include "org/allbinary/input/event/Advertisements.h"
#endif
#if __has_include("org/allbinary/input/motion/gesture/observer/Advertisements.h")
#include "org/allbinary/input/motion/gesture/observer/Advertisements.h"
#endif
#if __has_include("org/allbinary/logic/communication/log/Advertisements.h")
#include "org/allbinary/logic/communication/log/Advertisements.h"
#endif
#if __has_include("org/allbinary/logic/communication/log/Advertisements.h")
#include "org/allbinary/logic/communication/log/Advertisements.h"
#endif
#if __has_include("org/allbinary/logic/math/Advertisements.h")
#include "org/allbinary/logic/math/Advertisements.h"
#endif
#if __has_include("org/allbinary/logic/string/Advertisements.h")
#include "org/allbinary/logic/string/Advertisements.h"
#endif
#if __has_include("org/allbinary/logic/system/security/licensing/Advertisements.h")
#include "org/allbinary/logic/system/security/licensing/Advertisements.h"
#endif
#if __has_include("org/allbinary/logic/system/security/licensing/Advertisements.h")
#include "org/allbinary/logic/system/security/licensing/Advertisements.h"
#endif
#if __has_include("org/allbinary/logic/system/security/licensing/Advertisements.h")
#include "org/allbinary/logic/system/security/licensing/Advertisements.h"
#endif
#if __has_include("org/allbinary/logic/system/security/licensing/Advertisements.h")
#include "org/allbinary/logic/system/security/licensing/Advertisements.h"
#endif
#if __has_include("org/allbinary/logic/util/event/Advertisements.h")
#include "org/allbinary/logic/util/event/Advertisements.h"
#endif
#if __has_include("org/allbinary/logic/util/event/Advertisements.h")
#include "org/allbinary/logic/util/event/Advertisements.h"
#endif
#if __has_include("org/allbinary/media/audio/Advertisements.h")
#include "org/allbinary/media/audio/Advertisements.h"
#endif
#if __has_include("org/allbinary/midlet/Advertisements.h")
#include "org/allbinary/midlet/Advertisements.h"
#endif
#if __has_include("org/allbinary/midlet/Advertisements.h")
#include "org/allbinary/midlet/Advertisements.h"
#endif
#if __has_include("org/allbinary/thread/Advertisements.h")
#include "org/allbinary/thread/Advertisements.h"
#endif
#if __has_include("org/allbinary/thread/Advertisements.h")
#include "org/allbinary/thread/Advertisements.h"
#endif
#if __has_include("org/allbinary/thread/Advertisements.h")
#include "org/allbinary/thread/Advertisements.h"
#endif
#if __has_include("org/allbinary/time/Advertisements.h")
#include "org/allbinary/time/Advertisements.h"
#endif
#if __has_include("org/allbinary/util/Advertisements.h")
#include "org/allbinary/util/Advertisements.h"
#endif
#if __has_include("org/allbinary/util/Advertisements.h")
#include "org/allbinary/util/Advertisements.h"
#endif
#if __has_include("org/allbinary/logic/Advertisements.h")
#include "org/allbinary/logic/Advertisements.h"
#endif
#if __has_include("org/allbinary/util/Advertisements.h")
#include "org/allbinary/util/Advertisements.h"
#endif
#if __has_include("org/allbinary/game/midlet/Display.h")
#include "org/allbinary/game/midlet/Display.h"
#endif
#if __has_include("javax/microedition/lcdui/Display.h")
#include "javax/microedition/lcdui/Display.h"
#endif
#if __has_include("javax/microedition/lcdui/Display.h")
#include "javax/microedition/lcdui/Display.h"
#endif
#if __has_include("javax/microedition/lcdui/Display.h")
#include "javax/microedition/lcdui/Display.h"
#endif
#if __has_include("javax/microedition/lcdui/Display.h")
#include "javax/microedition/lcdui/Display.h"
#endif
#if __has_include("javax/microedition/lcdui/Display.h")
#include "javax/microedition/lcdui/Display.h"
#endif
#if __has_include("javax/microedition/midlet/Display.h")
#include "javax/microedition/midlet/Display.h"
#endif
#if __has_include("org/allbinary/Display.h")
#include "org/allbinary/Display.h"
#endif
#if __has_include("org/allbinary/Display.h")
#include "org/allbinary/Display.h"
#endif
#if __has_include("org/allbinary/business/advertisement/Display.h")
#include "org/allbinary/business/advertisement/Display.h"
#endif
#if __has_include("org/allbinary/canvas/Display.h")
#include "org/allbinary/canvas/Display.h"
#endif
#if __has_include("org/allbinary/canvas/Display.h")
#include "org/allbinary/canvas/Display.h"
#endif
#if __has_include("org/allbinary/debug/Display.h")
#include "org/allbinary/debug/Display.h"
#endif
#if __has_include("org/allbinary/debug/Display.h")
#include "org/allbinary/debug/Display.h"
#endif
#if __has_include("org/allbinary/game/Display.h")
#include "org/allbinary/game/Display.h"
#endif
#if __has_include("org/allbinary/game/Display.h")
#include "org/allbinary/game/Display.h"
#endif
#if __has_include("org/allbinary/game/Display.h")
#include "org/allbinary/game/Display.h"
#endif
#if __has_include("org/allbinary/game/Display.h")
#include "org/allbinary/game/Display.h"
#endif
#if __has_include("org/allbinary/game/Display.h")
#include "org/allbinary/game/Display.h"
#endif
#if __has_include("org/allbinary/game/Display.h")
#include "org/allbinary/game/Display.h"
#endif
#if __has_include("org/allbinary/game/commands/Display.h")
#include "org/allbinary/game/commands/Display.h"
#endif
#if __has_include("org/allbinary/game/configuration/Display.h")
#include "org/allbinary/game/configuration/Display.h"
#endif
#if __has_include("org/allbinary/game/configuration/Display.h")
#include "org/allbinary/game/configuration/Display.h"
#endif
#if __has_include("org/allbinary/game/configuration/Display.h")
#include "org/allbinary/game/configuration/Display.h"
#endif
#if __has_include("org/allbinary/game/configuration/Display.h")
#include "org/allbinary/game/configuration/Display.h"
#endif
#if __has_include("org/allbinary/game/configuration/Display.h")
#include "org/allbinary/game/configuration/Display.h"
#endif
#if __has_include("org/allbinary/game/configuration/Display.h")
#include "org/allbinary/game/configuration/Display.h"
#endif
#if __has_include("org/allbinary/game/configuration/event/Display.h")
#include "org/allbinary/game/configuration/event/Display.h"
#endif
#if __has_include("org/allbinary/game/configuration/event/Display.h")
#include "org/allbinary/game/configuration/event/Display.h"
#endif
#if __has_include("org/allbinary/game/configuration/feature/Display.h")
#include "org/allbinary/game/configuration/feature/Display.h"
#endif
#if __has_include("org/allbinary/game/configuration/feature/Display.h")
#include "org/allbinary/game/configuration/feature/Display.h"
#endif
#if __has_include("org/allbinary/game/configuration/feature/Display.h")
#include "org/allbinary/game/configuration/feature/Display.h"
#endif
#if __has_include("org/allbinary/game/configuration/persistance/Display.h")
#include "org/allbinary/game/configuration/persistance/Display.h"
#endif
#if __has_include("org/allbinary/game/configuration/persistance/Display.h")
#include "org/allbinary/game/configuration/persistance/Display.h"
#endif
#if __has_include("org/allbinary/game/displayable/canvas/Display.h")
#include "org/allbinary/game/displayable/canvas/Display.h"
#endif
#if __has_include("org/allbinary/game/displayable/canvas/Display.h")
#include "org/allbinary/game/displayable/canvas/Display.h"
#endif
#if __has_include("org/allbinary/game/displayable/canvas/Display.h")
#include "org/allbinary/game/displayable/canvas/Display.h"
#endif
#if __has_include("org/allbinary/game/displayable/canvas/Display.h")
#include "org/allbinary/game/displayable/canvas/Display.h"
#endif
#if __has_include("org/allbinary/game/displayable/canvas/Display.h")
#include "org/allbinary/game/displayable/canvas/Display.h"
#endif
#if __has_include("org/allbinary/game/displayable/canvas/Display.h")
#include "org/allbinary/game/displayable/canvas/Display.h"
#endif
#if __has_include("org/allbinary/game/displayable/canvas/Display.h")
#include "org/allbinary/game/displayable/canvas/Display.h"
#endif
#if __has_include("org/allbinary/game/displayable/canvas/Display.h")
#include "org/allbinary/game/displayable/canvas/Display.h"
#endif
#if __has_include("org/allbinary/game/displayable/canvas/Display.h")
#include "org/allbinary/game/displayable/canvas/Display.h"
#endif
#if __has_include("org/allbinary/game/input/Display.h")
#include "org/allbinary/game/input/Display.h"
#endif
#if __has_include("org/allbinary/game/layer/Display.h")
#include "org/allbinary/game/layer/Display.h"
#endif
#if __has_include("org/allbinary/game/layer/hud/event/Display.h")
#include "org/allbinary/game/layer/hud/event/Display.h"
#endif
#if __has_include("org/allbinary/game/paint/help/Display.h")
#include "org/allbinary/game/paint/help/Display.h"
#endif
#if __has_include("org/allbinary/game/score/Display.h")
#include "org/allbinary/game/score/Display.h"
#endif
#if __has_include("org/allbinary/game/score/Display.h")
#include "org/allbinary/game/score/Display.h"
#endif
#if __has_include("org/allbinary/game/score/displayable/Display.h")
#include "org/allbinary/game/score/displayable/Display.h"
#endif
#if __has_include("org/allbinary/game/score/displayable/Display.h")
#include "org/allbinary/game/score/displayable/Display.h"
#endif
#if __has_include("org/allbinary/game/score/displayable/Display.h")
#include "org/allbinary/game/score/displayable/Display.h"
#endif
#if __has_include("org/allbinary/game/state/Display.h")
#include "org/allbinary/game/state/Display.h"
#endif
#if __has_include("org/allbinary/graphics/Display.h")
#include "org/allbinary/graphics/Display.h"
#endif
#if __has_include("org/allbinary/graphics/canvas/transition/progress/Display.h")
#include "org/allbinary/graphics/canvas/transition/progress/Display.h"
#endif
#if __has_include("org/allbinary/graphics/canvas/transition/progress/Display.h")
#include "org/allbinary/graphics/canvas/transition/progress/Display.h"
#endif
#if __has_include("org/allbinary/graphics/color/Display.h")
#include "org/allbinary/graphics/color/Display.h"
#endif
#if __has_include("org/allbinary/graphics/color/Display.h")
#include "org/allbinary/graphics/color/Display.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/Display.h")
#include "org/allbinary/graphics/displayable/Display.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/Display.h")
#include "org/allbinary/graphics/displayable/Display.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/command/Display.h")
#include "org/allbinary/graphics/displayable/command/Display.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/screen/Display.h")
#include "org/allbinary/graphics/displayable/screen/Display.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/screen/Display.h")
#include "org/allbinary/graphics/displayable/screen/Display.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/screen/Display.h")
#include "org/allbinary/graphics/displayable/screen/Display.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/screen/Display.h")
#include "org/allbinary/graphics/displayable/screen/Display.h"
#endif
#if __has_include("org/allbinary/input/Display.h")
#include "org/allbinary/input/Display.h"
#endif
#if __has_include("org/allbinary/input/event/Display.h")
#include "org/allbinary/input/event/Display.h"
#endif
#if __has_include("org/allbinary/input/motion/gesture/observer/Display.h")
#include "org/allbinary/input/motion/gesture/observer/Display.h"
#endif
#if __has_include("org/allbinary/logic/communication/log/Display.h")
#include "org/allbinary/logic/communication/log/Display.h"
#endif
#if __has_include("org/allbinary/logic/communication/log/Display.h")
#include "org/allbinary/logic/communication/log/Display.h"
#endif
#if __has_include("org/allbinary/logic/math/Display.h")
#include "org/allbinary/logic/math/Display.h"
#endif
#if __has_include("org/allbinary/logic/string/Display.h")
#include "org/allbinary/logic/string/Display.h"
#endif
#if __has_include("org/allbinary/logic/system/security/licensing/Display.h")
#include "org/allbinary/logic/system/security/licensing/Display.h"
#endif
#if __has_include("org/allbinary/logic/system/security/licensing/Display.h")
#include "org/allbinary/logic/system/security/licensing/Display.h"
#endif
#if __has_include("org/allbinary/logic/system/security/licensing/Display.h")
#include "org/allbinary/logic/system/security/licensing/Display.h"
#endif
#if __has_include("org/allbinary/logic/system/security/licensing/Display.h")
#include "org/allbinary/logic/system/security/licensing/Display.h"
#endif
#if __has_include("org/allbinary/logic/util/event/Display.h")
#include "org/allbinary/logic/util/event/Display.h"
#endif
#if __has_include("org/allbinary/logic/util/event/Display.h")
#include "org/allbinary/logic/util/event/Display.h"
#endif
#if __has_include("org/allbinary/media/audio/Display.h")
#include "org/allbinary/media/audio/Display.h"
#endif
#if __has_include("org/allbinary/midlet/Display.h")
#include "org/allbinary/midlet/Display.h"
#endif
#if __has_include("org/allbinary/midlet/Display.h")
#include "org/allbinary/midlet/Display.h"
#endif
#if __has_include("org/allbinary/thread/Display.h")
#include "org/allbinary/thread/Display.h"
#endif
#if __has_include("org/allbinary/thread/Display.h")
#include "org/allbinary/thread/Display.h"
#endif
#if __has_include("org/allbinary/thread/Display.h")
#include "org/allbinary/thread/Display.h"
#endif
#if __has_include("org/allbinary/time/Display.h")
#include "org/allbinary/time/Display.h"
#endif
#if __has_include("org/allbinary/util/Display.h")
#include "org/allbinary/util/Display.h"
#endif
#if __has_include("org/allbinary/util/Display.h")
#include "org/allbinary/util/Display.h"
#endif
#if __has_include("org/allbinary/logic/Display.h")
#include "org/allbinary/logic/Display.h"
#endif
#if __has_include("org/allbinary/util/Display.h")
#include "org/allbinary/util/Display.h"
#endif
#if __has_include("org/allbinary/game/midlet/Display.h")
#include "org/allbinary/game/midlet/Display.h"
#endif
#if __has_include("javax/microedition/lcdui/Display.h")
#include "javax/microedition/lcdui/Display.h"
#endif
#if __has_include("javax/microedition/lcdui/Display.h")
#include "javax/microedition/lcdui/Display.h"
#endif
#if __has_include("javax/microedition/lcdui/Display.h")
#include "javax/microedition/lcdui/Display.h"
#endif
#if __has_include("javax/microedition/lcdui/Display.h")
#include "javax/microedition/lcdui/Display.h"
#endif
#if __has_include("javax/microedition/lcdui/Display.h")
#include "javax/microedition/lcdui/Display.h"
#endif
#if __has_include("javax/microedition/midlet/Display.h")
#include "javax/microedition/midlet/Display.h"
#endif
#if __has_include("org/allbinary/Display.h")
#include "org/allbinary/Display.h"
#endif
#if __has_include("org/allbinary/Display.h")
#include "org/allbinary/Display.h"
#endif
#if __has_include("org/allbinary/business/advertisement/Display.h")
#include "org/allbinary/business/advertisement/Display.h"
#endif
#if __has_include("org/allbinary/canvas/Display.h")
#include "org/allbinary/canvas/Display.h"
#endif
#if __has_include("org/allbinary/canvas/Display.h")
#include "org/allbinary/canvas/Display.h"
#endif
#if __has_include("org/allbinary/debug/Display.h")
#include "org/allbinary/debug/Display.h"
#endif
#if __has_include("org/allbinary/debug/Display.h")
#include "org/allbinary/debug/Display.h"
#endif
#if __has_include("org/allbinary/game/Display.h")
#include "org/allbinary/game/Display.h"
#endif
#if __has_include("org/allbinary/game/Display.h")
#include "org/allbinary/game/Display.h"
#endif
#if __has_include("org/allbinary/game/Display.h")
#include "org/allbinary/game/Display.h"
#endif
#if __has_include("org/allbinary/game/Display.h")
#include "org/allbinary/game/Display.h"
#endif
#if __has_include("org/allbinary/game/Display.h")
#include "org/allbinary/game/Display.h"
#endif
#if __has_include("org/allbinary/game/Display.h")
#include "org/allbinary/game/Display.h"
#endif
#if __has_include("org/allbinary/game/commands/Display.h")
#include "org/allbinary/game/commands/Display.h"
#endif
#if __has_include("org/allbinary/game/configuration/Display.h")
#include "org/allbinary/game/configuration/Display.h"
#endif
#if __has_include("org/allbinary/game/configuration/Display.h")
#include "org/allbinary/game/configuration/Display.h"
#endif
#if __has_include("org/allbinary/game/configuration/Display.h")
#include "org/allbinary/game/configuration/Display.h"
#endif
#if __has_include("org/allbinary/game/configuration/Display.h")
#include "org/allbinary/game/configuration/Display.h"
#endif
#if __has_include("org/allbinary/game/configuration/Display.h")
#include "org/allbinary/game/configuration/Display.h"
#endif
#if __has_include("org/allbinary/game/configuration/Display.h")
#include "org/allbinary/game/configuration/Display.h"
#endif
#if __has_include("org/allbinary/game/configuration/event/Display.h")
#include "org/allbinary/game/configuration/event/Display.h"
#endif
#if __has_include("org/allbinary/game/configuration/event/Display.h")
#include "org/allbinary/game/configuration/event/Display.h"
#endif
#if __has_include("org/allbinary/game/configuration/feature/Display.h")
#include "org/allbinary/game/configuration/feature/Display.h"
#endif
#if __has_include("org/allbinary/game/configuration/feature/Display.h")
#include "org/allbinary/game/configuration/feature/Display.h"
#endif
#if __has_include("org/allbinary/game/configuration/feature/Display.h")
#include "org/allbinary/game/configuration/feature/Display.h"
#endif
#if __has_include("org/allbinary/game/configuration/persistance/Display.h")
#include "org/allbinary/game/configuration/persistance/Display.h"
#endif
#if __has_include("org/allbinary/game/configuration/persistance/Display.h")
#include "org/allbinary/game/configuration/persistance/Display.h"
#endif
#if __has_include("org/allbinary/game/displayable/canvas/Display.h")
#include "org/allbinary/game/displayable/canvas/Display.h"
#endif
#if __has_include("org/allbinary/game/displayable/canvas/Display.h")
#include "org/allbinary/game/displayable/canvas/Display.h"
#endif
#if __has_include("org/allbinary/game/displayable/canvas/Display.h")
#include "org/allbinary/game/displayable/canvas/Display.h"
#endif
#if __has_include("org/allbinary/game/displayable/canvas/Display.h")
#include "org/allbinary/game/displayable/canvas/Display.h"
#endif
#if __has_include("org/allbinary/game/displayable/canvas/Display.h")
#include "org/allbinary/game/displayable/canvas/Display.h"
#endif
#if __has_include("org/allbinary/game/displayable/canvas/Display.h")
#include "org/allbinary/game/displayable/canvas/Display.h"
#endif
#if __has_include("org/allbinary/game/displayable/canvas/Display.h")
#include "org/allbinary/game/displayable/canvas/Display.h"
#endif
#if __has_include("org/allbinary/game/displayable/canvas/Display.h")
#include "org/allbinary/game/displayable/canvas/Display.h"
#endif
#if __has_include("org/allbinary/game/displayable/canvas/Display.h")
#include "org/allbinary/game/displayable/canvas/Display.h"
#endif
#if __has_include("org/allbinary/game/input/Display.h")
#include "org/allbinary/game/input/Display.h"
#endif
#if __has_include("org/allbinary/game/layer/Display.h")
#include "org/allbinary/game/layer/Display.h"
#endif
#if __has_include("org/allbinary/game/layer/hud/event/Display.h")
#include "org/allbinary/game/layer/hud/event/Display.h"
#endif
#if __has_include("org/allbinary/game/paint/help/Display.h")
#include "org/allbinary/game/paint/help/Display.h"
#endif
#if __has_include("org/allbinary/game/score/Display.h")
#include "org/allbinary/game/score/Display.h"
#endif
#if __has_include("org/allbinary/game/score/Display.h")
#include "org/allbinary/game/score/Display.h"
#endif
#if __has_include("org/allbinary/game/score/displayable/Display.h")
#include "org/allbinary/game/score/displayable/Display.h"
#endif
#if __has_include("org/allbinary/game/score/displayable/Display.h")
#include "org/allbinary/game/score/displayable/Display.h"
#endif
#if __has_include("org/allbinary/game/score/displayable/Display.h")
#include "org/allbinary/game/score/displayable/Display.h"
#endif
#if __has_include("org/allbinary/game/state/Display.h")
#include "org/allbinary/game/state/Display.h"
#endif
#if __has_include("org/allbinary/graphics/Display.h")
#include "org/allbinary/graphics/Display.h"
#endif
#if __has_include("org/allbinary/graphics/canvas/transition/progress/Display.h")
#include "org/allbinary/graphics/canvas/transition/progress/Display.h"
#endif
#if __has_include("org/allbinary/graphics/canvas/transition/progress/Display.h")
#include "org/allbinary/graphics/canvas/transition/progress/Display.h"
#endif
#if __has_include("org/allbinary/graphics/color/Display.h")
#include "org/allbinary/graphics/color/Display.h"
#endif
#if __has_include("org/allbinary/graphics/color/Display.h")
#include "org/allbinary/graphics/color/Display.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/Display.h")
#include "org/allbinary/graphics/displayable/Display.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/Display.h")
#include "org/allbinary/graphics/displayable/Display.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/command/Display.h")
#include "org/allbinary/graphics/displayable/command/Display.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/screen/Display.h")
#include "org/allbinary/graphics/displayable/screen/Display.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/screen/Display.h")
#include "org/allbinary/graphics/displayable/screen/Display.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/screen/Display.h")
#include "org/allbinary/graphics/displayable/screen/Display.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/screen/Display.h")
#include "org/allbinary/graphics/displayable/screen/Display.h"
#endif
#if __has_include("org/allbinary/input/Display.h")
#include "org/allbinary/input/Display.h"
#endif
#if __has_include("org/allbinary/input/event/Display.h")
#include "org/allbinary/input/event/Display.h"
#endif
#if __has_include("org/allbinary/input/motion/gesture/observer/Display.h")
#include "org/allbinary/input/motion/gesture/observer/Display.h"
#endif
#if __has_include("org/allbinary/logic/communication/log/Display.h")
#include "org/allbinary/logic/communication/log/Display.h"
#endif
#if __has_include("org/allbinary/logic/communication/log/Display.h")
#include "org/allbinary/logic/communication/log/Display.h"
#endif
#if __has_include("org/allbinary/logic/math/Display.h")
#include "org/allbinary/logic/math/Display.h"
#endif
#if __has_include("org/allbinary/logic/string/Display.h")
#include "org/allbinary/logic/string/Display.h"
#endif
#if __has_include("org/allbinary/logic/system/security/licensing/Display.h")
#include "org/allbinary/logic/system/security/licensing/Display.h"
#endif
#if __has_include("org/allbinary/logic/system/security/licensing/Display.h")
#include "org/allbinary/logic/system/security/licensing/Display.h"
#endif
#if __has_include("org/allbinary/logic/system/security/licensing/Display.h")
#include "org/allbinary/logic/system/security/licensing/Display.h"
#endif
#if __has_include("org/allbinary/logic/system/security/licensing/Display.h")
#include "org/allbinary/logic/system/security/licensing/Display.h"
#endif
#if __has_include("org/allbinary/logic/util/event/Display.h")
#include "org/allbinary/logic/util/event/Display.h"
#endif
#if __has_include("org/allbinary/logic/util/event/Display.h")
#include "org/allbinary/logic/util/event/Display.h"
#endif
#if __has_include("org/allbinary/media/audio/Display.h")
#include "org/allbinary/media/audio/Display.h"
#endif
#if __has_include("org/allbinary/midlet/Display.h")
#include "org/allbinary/midlet/Display.h"
#endif
#if __has_include("org/allbinary/midlet/Display.h")
#include "org/allbinary/midlet/Display.h"
#endif
#if __has_include("org/allbinary/thread/Display.h")
#include "org/allbinary/thread/Display.h"
#endif
#if __has_include("org/allbinary/thread/Display.h")
#include "org/allbinary/thread/Display.h"
#endif
#if __has_include("org/allbinary/thread/Display.h")
#include "org/allbinary/thread/Display.h"
#endif
#if __has_include("org/allbinary/time/Display.h")
#include "org/allbinary/time/Display.h"
#endif
#if __has_include("org/allbinary/util/Display.h")
#include "org/allbinary/util/Display.h"
#endif
#if __has_include("org/allbinary/util/Display.h")
#include "org/allbinary/util/Display.h"
#endif
#if __has_include("org/allbinary/logic/Display.h")
#include "org/allbinary/logic/Display.h"
#endif
#if __has_include("org/allbinary/util/Display.h")
#include "org/allbinary/util/Display.h"
#endif
#if __has_include("org/allbinary/game/midlet/Display.h")
#include "org/allbinary/game/midlet/Display.h"
#endif
#if __has_include("javax/microedition/lcdui/Display.h")
#include "javax/microedition/lcdui/Display.h"
#endif
#if __has_include("javax/microedition/lcdui/Display.h")
#include "javax/microedition/lcdui/Display.h"
#endif
#if __has_include("javax/microedition/lcdui/Display.h")
#include "javax/microedition/lcdui/Display.h"
#endif
#if __has_include("javax/microedition/lcdui/Display.h")
#include "javax/microedition/lcdui/Display.h"
#endif
#if __has_include("javax/microedition/lcdui/Display.h")
#include "javax/microedition/lcdui/Display.h"
#endif
#if __has_include("javax/microedition/midlet/Display.h")
#include "javax/microedition/midlet/Display.h"
#endif
#if __has_include("org/allbinary/Display.h")
#include "org/allbinary/Display.h"
#endif
#if __has_include("org/allbinary/Display.h")
#include "org/allbinary/Display.h"
#endif
#if __has_include("org/allbinary/business/advertisement/Display.h")
#include "org/allbinary/business/advertisement/Display.h"
#endif
#if __has_include("org/allbinary/canvas/Display.h")
#include "org/allbinary/canvas/Display.h"
#endif
#if __has_include("org/allbinary/canvas/Display.h")
#include "org/allbinary/canvas/Display.h"
#endif
#if __has_include("org/allbinary/debug/Display.h")
#include "org/allbinary/debug/Display.h"
#endif
#if __has_include("org/allbinary/debug/Display.h")
#include "org/allbinary/debug/Display.h"
#endif
#if __has_include("org/allbinary/game/Display.h")
#include "org/allbinary/game/Display.h"
#endif
#if __has_include("org/allbinary/game/Display.h")
#include "org/allbinary/game/Display.h"
#endif
#if __has_include("org/allbinary/game/Display.h")
#include "org/allbinary/game/Display.h"
#endif
#if __has_include("org/allbinary/game/Display.h")
#include "org/allbinary/game/Display.h"
#endif
#if __has_include("org/allbinary/game/Display.h")
#include "org/allbinary/game/Display.h"
#endif
#if __has_include("org/allbinary/game/Display.h")
#include "org/allbinary/game/Display.h"
#endif
#if __has_include("org/allbinary/game/commands/Display.h")
#include "org/allbinary/game/commands/Display.h"
#endif
#if __has_include("org/allbinary/game/configuration/Display.h")
#include "org/allbinary/game/configuration/Display.h"
#endif
#if __has_include("org/allbinary/game/configuration/Display.h")
#include "org/allbinary/game/configuration/Display.h"
#endif
#if __has_include("org/allbinary/game/configuration/Display.h")
#include "org/allbinary/game/configuration/Display.h"
#endif
#if __has_include("org/allbinary/game/configuration/Display.h")
#include "org/allbinary/game/configuration/Display.h"
#endif
#if __has_include("org/allbinary/game/configuration/Display.h")
#include "org/allbinary/game/configuration/Display.h"
#endif
#if __has_include("org/allbinary/game/configuration/Display.h")
#include "org/allbinary/game/configuration/Display.h"
#endif
#if __has_include("org/allbinary/game/configuration/event/Display.h")
#include "org/allbinary/game/configuration/event/Display.h"
#endif
#if __has_include("org/allbinary/game/configuration/event/Display.h")
#include "org/allbinary/game/configuration/event/Display.h"
#endif
#if __has_include("org/allbinary/game/configuration/feature/Display.h")
#include "org/allbinary/game/configuration/feature/Display.h"
#endif
#if __has_include("org/allbinary/game/configuration/feature/Display.h")
#include "org/allbinary/game/configuration/feature/Display.h"
#endif
#if __has_include("org/allbinary/game/configuration/feature/Display.h")
#include "org/allbinary/game/configuration/feature/Display.h"
#endif
#if __has_include("org/allbinary/game/configuration/persistance/Display.h")
#include "org/allbinary/game/configuration/persistance/Display.h"
#endif
#if __has_include("org/allbinary/game/configuration/persistance/Display.h")
#include "org/allbinary/game/configuration/persistance/Display.h"
#endif
#if __has_include("org/allbinary/game/displayable/canvas/Display.h")
#include "org/allbinary/game/displayable/canvas/Display.h"
#endif
#if __has_include("org/allbinary/game/displayable/canvas/Display.h")
#include "org/allbinary/game/displayable/canvas/Display.h"
#endif
#if __has_include("org/allbinary/game/displayable/canvas/Display.h")
#include "org/allbinary/game/displayable/canvas/Display.h"
#endif
#if __has_include("org/allbinary/game/displayable/canvas/Display.h")
#include "org/allbinary/game/displayable/canvas/Display.h"
#endif
#if __has_include("org/allbinary/game/displayable/canvas/Display.h")
#include "org/allbinary/game/displayable/canvas/Display.h"
#endif
#if __has_include("org/allbinary/game/displayable/canvas/Display.h")
#include "org/allbinary/game/displayable/canvas/Display.h"
#endif
#if __has_include("org/allbinary/game/displayable/canvas/Display.h")
#include "org/allbinary/game/displayable/canvas/Display.h"
#endif
#if __has_include("org/allbinary/game/displayable/canvas/Display.h")
#include "org/allbinary/game/displayable/canvas/Display.h"
#endif
#if __has_include("org/allbinary/game/displayable/canvas/Display.h")
#include "org/allbinary/game/displayable/canvas/Display.h"
#endif
#if __has_include("org/allbinary/game/input/Display.h")
#include "org/allbinary/game/input/Display.h"
#endif
#if __has_include("org/allbinary/game/layer/Display.h")
#include "org/allbinary/game/layer/Display.h"
#endif
#if __has_include("org/allbinary/game/layer/hud/event/Display.h")
#include "org/allbinary/game/layer/hud/event/Display.h"
#endif
#if __has_include("org/allbinary/game/paint/help/Display.h")
#include "org/allbinary/game/paint/help/Display.h"
#endif
#if __has_include("org/allbinary/game/score/Display.h")
#include "org/allbinary/game/score/Display.h"
#endif
#if __has_include("org/allbinary/game/score/Display.h")
#include "org/allbinary/game/score/Display.h"
#endif
#if __has_include("org/allbinary/game/score/displayable/Display.h")
#include "org/allbinary/game/score/displayable/Display.h"
#endif
#if __has_include("org/allbinary/game/score/displayable/Display.h")
#include "org/allbinary/game/score/displayable/Display.h"
#endif
#if __has_include("org/allbinary/game/score/displayable/Display.h")
#include "org/allbinary/game/score/displayable/Display.h"
#endif
#if __has_include("org/allbinary/game/state/Display.h")
#include "org/allbinary/game/state/Display.h"
#endif
#if __has_include("org/allbinary/graphics/Display.h")
#include "org/allbinary/graphics/Display.h"
#endif
#if __has_include("org/allbinary/graphics/canvas/transition/progress/Display.h")
#include "org/allbinary/graphics/canvas/transition/progress/Display.h"
#endif
#if __has_include("org/allbinary/graphics/canvas/transition/progress/Display.h")
#include "org/allbinary/graphics/canvas/transition/progress/Display.h"
#endif
#if __has_include("org/allbinary/graphics/color/Display.h")
#include "org/allbinary/graphics/color/Display.h"
#endif
#if __has_include("org/allbinary/graphics/color/Display.h")
#include "org/allbinary/graphics/color/Display.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/Display.h")
#include "org/allbinary/graphics/displayable/Display.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/Display.h")
#include "org/allbinary/graphics/displayable/Display.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/command/Display.h")
#include "org/allbinary/graphics/displayable/command/Display.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/screen/Display.h")
#include "org/allbinary/graphics/displayable/screen/Display.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/screen/Display.h")
#include "org/allbinary/graphics/displayable/screen/Display.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/screen/Display.h")
#include "org/allbinary/graphics/displayable/screen/Display.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/screen/Display.h")
#include "org/allbinary/graphics/displayable/screen/Display.h"
#endif
#if __has_include("org/allbinary/input/Display.h")
#include "org/allbinary/input/Display.h"
#endif
#if __has_include("org/allbinary/input/event/Display.h")
#include "org/allbinary/input/event/Display.h"
#endif
#if __has_include("org/allbinary/input/motion/gesture/observer/Display.h")
#include "org/allbinary/input/motion/gesture/observer/Display.h"
#endif
#if __has_include("org/allbinary/logic/communication/log/Display.h")
#include "org/allbinary/logic/communication/log/Display.h"
#endif
#if __has_include("org/allbinary/logic/communication/log/Display.h")
#include "org/allbinary/logic/communication/log/Display.h"
#endif
#if __has_include("org/allbinary/logic/math/Display.h")
#include "org/allbinary/logic/math/Display.h"
#endif
#if __has_include("org/allbinary/logic/string/Display.h")
#include "org/allbinary/logic/string/Display.h"
#endif
#if __has_include("org/allbinary/logic/system/security/licensing/Display.h")
#include "org/allbinary/logic/system/security/licensing/Display.h"
#endif
#if __has_include("org/allbinary/logic/system/security/licensing/Display.h")
#include "org/allbinary/logic/system/security/licensing/Display.h"
#endif
#if __has_include("org/allbinary/logic/system/security/licensing/Display.h")
#include "org/allbinary/logic/system/security/licensing/Display.h"
#endif
#if __has_include("org/allbinary/logic/system/security/licensing/Display.h")
#include "org/allbinary/logic/system/security/licensing/Display.h"
#endif
#if __has_include("org/allbinary/logic/util/event/Display.h")
#include "org/allbinary/logic/util/event/Display.h"
#endif
#if __has_include("org/allbinary/logic/util/event/Display.h")
#include "org/allbinary/logic/util/event/Display.h"
#endif
#if __has_include("org/allbinary/media/audio/Display.h")
#include "org/allbinary/media/audio/Display.h"
#endif
#if __has_include("org/allbinary/midlet/Display.h")
#include "org/allbinary/midlet/Display.h"
#endif
#if __has_include("org/allbinary/midlet/Display.h")
#include "org/allbinary/midlet/Display.h"
#endif
#if __has_include("org/allbinary/thread/Display.h")
#include "org/allbinary/thread/Display.h"
#endif
#if __has_include("org/allbinary/thread/Display.h")
#include "org/allbinary/thread/Display.h"
#endif
#if __has_include("org/allbinary/thread/Display.h")
#include "org/allbinary/thread/Display.h"
#endif
#if __has_include("org/allbinary/time/Display.h")
#include "org/allbinary/time/Display.h"
#endif
#if __has_include("org/allbinary/util/Display.h")
#include "org/allbinary/util/Display.h"
#endif
#if __has_include("org/allbinary/util/Display.h")
#include "org/allbinary/util/Display.h"
#endif
#if __has_include("org/allbinary/logic/Display.h")
#include "org/allbinary/logic/Display.h"
#endif
#if __has_include("org/allbinary/util/Display.h")
#include "org/allbinary/util/Display.h"
#endif



void GameMidlet_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation GameMidlet

- (void) initFields {
    self->enumerationUtil = [EnumerationUtil getInstance];
    self->basicColorFactory = [BasicColorFactory getInstance];
    self->features = [Features getInstance];
    self->midletStrings = [MidletStrings getInstance];
    self->myCommandsFactory = [MyCommandsFactory getInstance];
    self->gameStrings = [GameStrings getInstance];
    self->gameAdStateFactory = [GameAdStateFactory getInstance];
    self->gameStateFactory = [GameStateFactory getInstance];
    self->tsUtil = [TsUtil getInstance];
    self->DISPLAYABLE = " Displayable: ";
    self->COMMAND_NAME = "command Name/Label: ";
    self->NO_COMMAND = "No Command";
    self->NO_DISPLAYABLE = "No Displayable";
    self->COMMAND_ACTION = [[[[((StringMaker*) [StringMaker alloc]) init] append:"GameMidlet::"] append:self->midletStrings->COMMAND_ACTION] toString];
    self->PAUSE_APP_BACKGROUND = "pauseAppBackground";
    self->UN_PAUSE_APP_BACKGROUND = "unPauseAppBackground";
    self->aboutCommandProcessor = [AboutCommandProcessor getInstance];
    self->webCommandProcessor = [WebCommandProcessor getInstance];
    self->gameMidletStateFactory = [GameMidletStateFactory getInstance];
    self->gameStartTimeHelper = [((TimeDelayHelper*) [TimeDelayHelper alloc]) init:240];
    self->fullScreenUtil = [FullScreenUtil getInstance];
    
    self->allbinaryGameCanvasRunnableInterface = (NullGameCanvasRunnable_staticInit(), NullGameCanvasRunnable_NULL_GAME_CANVAS_RUNNABLE);
    self->thread = (NullThread_staticInit(), NullThread_NULL_THREAD);
    
    self->isFullScreen = false;
    self->resized = false;
    self->startedBefore = false;
}


- (instancetype) init:(ClientInformationFactory*)clientInformationFactory {
        self = [super init:clientInformationFactory];
        [self initFields];
        [[SmallIntegerSingletonFactory getInstance] initWithRange:0x291 :6];
        self->loadGameForm = [CommandForm getNullCommandForm];
        ProgressCanvas* progressCanvas = [ProgressCanvasFactory getInstance];
        [progressCanvas init_:self];
        [[GameFeatureEventHandler getInstance] addListenerInterface:[ChangedGameFeatureListener getInstance]];
        [[GamePersistanceSingleton getInstance] clear];
        self->debugInterface = [DebugFactory getInstance];
        [self init_];
    return self;
}


- (void) init_ {
}


// throws Exception
- (void) setDemo {
        java_throw(java_exception_new("Exception", self->commonStrings->NOT_IMPLEMENTED));
}


// throws Exception
- (void) createGame {
        java_throw(java_exception_new("Exception", self->commonStrings->NOT_IMPLEMENTED));
}


// throws Exception
- (void) mediaShutdown {
        java_throw(java_exception_new("Exception", self->commonStrings->NOT_IMPLEMENTED));
}


- (void) stopAll {
}


- (void) pauseApp {
        [self pauseAppBackground:true];
        GameAdState* gameAdState = [self->gameAdStateFactory getCurrentInstance];
        [[gameAdState getAdvertisements] stopAll];
}


- (void) pauseAppBackground:(bool)background {
        [self->logUtil putF:self->commonStrings->START :self :self->PAUSE_APP_BACKGROUND];
        if (self->allbinaryGameCanvasRunnableInterface != (NullGameCanvasRunnable_staticInit(), NullGameCanvasRunnable_NULL_GAME_CANVAS_RUNNABLE)) {
            [self->allbinaryGameCanvasRunnableInterface pause];
        } else {
            [self->logUtil putF:"<<<<<< Null" :self :self->PAUSE_APP_BACKGROUND];
        }
        [[AllBinarySensorManager getInstance] shutdown];
}


- (void) unPauseApp {
        [self unPauseAppBackground:true];
        GameAdState* gameAdState = [self->gameAdStateFactory getCurrentInstance];
        [[gameAdState getAdvertisements] startAll];
}


- (void) unPauseAppBackground:(bool)background {
        [self->logUtil putF:self->commonStrings->START :self :self->UN_PAUSE_APP_BACKGROUND];
        [[AllBinarySensorManager getInstance] init_];
        GameCanvasRunnableInterface* gameCanvasRunnableInterface = self->allbinaryGameCanvasRunnableInterface;
        if (gameCanvasRunnableInterface != (NullGameCanvasRunnable_staticInit(), NullGameCanvasRunnable_NULL_GAME_CANVAS_RUNNABLE)) {
            [gameCanvasRunnableInterface unPause];
        } else {
            [self->logUtil putF:"<<<<<< Null" :self :self->UN_PAUSE_APP_BACKGROUND];
        }
}


- (void) destroyAppInRunnable:(bool)unconditional :(bool)isProgress {
        ProgressCanvas* progressCanvas = [ProgressCanvasFactory getInstance];
        if (isProgress) {
            [progressCanvas start];
            [self commandAction:self->myCommandsFactory->SET_DISPLAYABLE :progressCanvas];
        }
        [self destroyApp:unconditional];
        if (isProgress) {
            [progressCanvas end];
        }
}


- (void) destroyApp:(bool)unconditional {
        const char* METHOD_NAME = "GameMidlet::destroyApp";
        JAVA_TRY {
            [PreLogUtil put:[[GameStatisticsFactory getInstance] toString] :self :METHOD_NAME];
            GameAdState* gameAdState = [self->gameAdStateFactory getCurrentInstance];
            [[gameAdState getAdvertisements] stopAll];
            if (![self isDestroyed]) {
                [self stopGameCanvasRunnableInterface];
                [self setGameCanvasRunnableInterface:(NullGameCanvasRunnable_staticInit(), NullGameCanvasRunnable_NULL_GAME_CANVAS_RUNNABLE)];
                [self mediaShutdown];
            } else {
                [self->logUtil putF:"Midlet Managment Error: Midlet Should Only Be Destroyed Once" :self :METHOD_NAME];
            }
            [super destroyApp:true];
            [PreLogUtil put:self->commonStrings->END :self :METHOD_NAME];
        } JAVA_CATCH(Exception, e) {
            [self->logUtil put:self->commonStrings->EXCEPTION :self :METHOD_NAME :e];
        } JAVA_END_TRY;
        [self->logUtil putF:self->commonStrings->END :self :METHOD_NAME];
}


// throws MIDletStateChangeException
- (void) startApp {
        JAVA_TRY {
            GameAdState* gameAdState = [self->gameAdStateFactory getCurrentInstance];
            [[gameAdState getAdvertisements] startAll];
            const char* START_APP = "startApp";
            [self->logUtil putF:self->commonStrings->START :self :START_APP];
            id gameCanvasRunnableInterface = self->allbinaryGameCanvasRunnableInterface;
            if (gameCanvasRunnableInterface == (NullGameCanvasRunnable_staticInit(), NullGameCanvasRunnable_NULL_GAME_CANVAS_RUNNABLE)) {
                [self->gameMidletStateFactory setCurrentGameState:self->gameStateFactory->NO_GAME_STATE];
                [self setDemo];
            } else {
                [self->logUtil putF:"GameCanvasRunnableInterface is available" :self :START_APP];
                if (gameCanvasRunnableInterface == [self getCurrentDisplayable]) {
                    [self unPauseAppBackground:false];
                } else {
                    [self->logUtil putF:"GameCanvasRunnableInterface is not current displayable" :self :START_APP];
                }
            }
        } JAVA_CATCH(Exception, e) {
            [self->logUtil put:self->commonStrings->EXCEPTION :self :"startApp" :e];
            [self destroyApp:false];
            [self notifyDestroyed];
        } JAVA_END_TRY;
}


// synchronized
- (void) commandAction:(Command*)command :(Displayable*)displayable {
        JAVA_TRY {
            const char* displayableAsString = self->NO_DISPLAYABLE;
            if (displayable != nil) {
                displayableAsString = [displayable toString];
            }
            const char* label = self->NO_COMMAND;
            if (command != nil) {
                label = [command getLabel];
            }
            [PreLogUtil put:[[[[[[((StringMaker*) [StringMaker alloc]) init] append:self->COMMAND_NAME] append:label] append:self->DISPLAYABLE] append:displayableAsString] toString] :self :self->COMMAND_ACTION];
            GameCommandsFactory* gameCommandsFactory = [GameCommandsFactory getInstance];
            GameCanvasRunnableInterface* allbinaryGameCanvasRunnableInterface = self->allbinaryGameCanvasRunnableInterface;
            id gameCanvasRunnableInterface = allbinaryGameCanvasRunnableInterface;
            if (command == gameCommandsFactory->SHOW_GAME_CANVAS) {
                if ([[self getDisplay] getCurrent] != gameCanvasRunnableInterface && [allbinaryGameCanvasRunnableInterface getType] != [(NullGameCanvasRunnable_staticInit(), NullGameCanvasRunnable_NULL_GAME_CANVAS_RUNNABLE) getType]) {
                    [self setDisplay:((Displayable*) gameCanvasRunnableInterface)];
                }
                [self unPauseAppBackground:false];
            } else if (command == gameCommandsFactory->CLOSE_AND_SHOW_GAME_CANVAS) {
                MenuListener* menuListener = ((MenuListener*) displayable);
                [menuListener close];
                [self setDisplay:((Displayable*) gameCanvasRunnableInterface)];
                [self unPauseAppBackground:false];
            } else if (command == gameCommandsFactory->EXIT_COMMAND) {
                if ([[[GameMidletEventHandler getInstance] getEventListenerInterfaceListP] size] == 0) {
                    [self exitProgress:true];
                }
                [[GameMidletEventHandler getInstance] fireEvent:[((DemoGameMidletEvent*) [DemoGameMidletEvent alloc]) init:self :[DemoGameMidletStateFactory getInstance]->NONE]];
            } else if (command == gameCommandsFactory->EXIT_WITHOUT_PROGRESS_COMMAND) {
                [self exitProgress:false];
            } else if (command == gameCommandsFactory->START_COMMAND || command == gameCommandsFactory->RESTART_COMMAND || command == gameCommandsFactory->CONTINUE_COMMAND) {
                if ([self->gameMidletStateFactory getCurrentGameState] != self->gameStateFactory->PLAYING_GAME_STATE || command == gameCommandsFactory->RESTART_COMMAND) {
                    if ([self->gameStartTimeHelper isTimeTNT]) {
                        if (command == gameCommandsFactory->START_COMMAND && [self isDemoLoading]) {
                            [self->logUtil putF:"Trying to Start Game Before Loading Complete" :self :self->midletStrings->COMMAND_ACTION];
                        } else {
                            self->startedBefore = true;
                            [self createGame];
                            [self->gameMidletStateFactory setCurrentGameState:self->gameStateFactory->PLAYING_GAME_STATE];
                        }
                    } else {
                        [self->logUtil putF:"Starting Game Too Often" :self :self->midletStrings->COMMAND_ACTION];
                    }
                } else {
                    [self->logUtil putF:"Already in playing state" :self :self->COMMAND_ACTION];
                }
            } else if (command == gameCommandsFactory->BUY_COMMAND) {
                InApplicationPurchaseFactory* inApplicationPurchaseFactory = [InApplicationPurchaseFactory getInstance];
                BasicArrayList* list = [[LockableFeatureFactory getInstance] getList];
                LockableFeature* lockableFeature = ((LockableFeature*) [list get:0]);
                if ([list size] > 0 && ![inApplicationPurchaseFactory isPurchased:lockableFeature]) {
                    [inApplicationPurchaseFactory purchase:lockableFeature];
                } else {
                    [[TextNotificationUtil getInstance] fireSuccess:"Already Purchased"];
                }
            } else if (command == gameCommandsFactory->QUIT_COMMAND) {
                if ([self->gameStartTimeHelper isTimeTNT]) {
                    if (java_objc_instanceof(displayable, [HighScoreTextBox class])) {
                        MenuListener* menuListener = ((MenuListener*) displayable);
                        [menuListener close];
                    }
                    [self stopGameCanvasRunnableInterface];
                    [self->gameMidletStateFactory setCurrentGameState:self->gameStateFactory->NO_GAME_STATE];
                    [self setDemo];
                }
            } else if (command == self->myCommandsFactory->RESUME_COMMAND) {
                [self unPauseAppBackground:false];
            } else if (command == self->myCommandsFactory->PAUSE_COMMAND) {
                [self pauseAppBackground:false];
            } else if (command == self->myCommandsFactory->SET_DISPLAYABLE) {
                [self pauseAppBackground:false];
                [self setDisplay:displayable];
            } else if (command == gameCommandsFactory->SET_MENU_DISPLAYABLE) {
                [self pauseAppBackground:false];
                MenuListener* menuListener = ((MenuListener*) displayable);
                [menuListener open];
                [self setDisplay:displayable];
            } else if (command == gameCommandsFactory->START_TRACE) {
                [self->debugInterface start];
                AllBinaryGameCanvas* gameCanvas = ((AllBinaryGameCanvas*) allbinaryGameCanvasRunnableInterface);
                [gameCanvas addCommand:gameCommandsFactory->STOP_TRACE];
                [gameCanvas removeCommand:gameCommandsFactory->START_TRACE];
            } else if (command == gameCommandsFactory->STOP_TRACE) {
                [self pauseAppBackground:false];
                [self->debugInterface stop];
                [self unPauseAppBackground:false];
                AllBinaryGameCanvas* gameCanvas = ((AllBinaryGameCanvas*) allbinaryGameCanvasRunnableInterface);
                [gameCanvas addCommand:gameCommandsFactory->START_TRACE];
                [gameCanvas removeCommand:gameCommandsFactory->STOP_TRACE];
            } else if (command == gameCommandsFactory->DEFAULT_OPTIONS) {
                Displayable* tempDisplayable = displayable;
                if (java_objc_instanceof(tempDisplayable, [GameOptionsForm class])) {
                    [[GameFeatureFormUtil getInstance] setDefault:((CommandForm*) tempDisplayable)];
                }
            } else if (command == (GameInputMappingInstructionsCanvas_staticInit(), GameInputMappingInstructionsCanvas_DISPLAY)) {
                Displayable* tempDisplayable = displayable;
                if (java_objc_instanceof(tempDisplayable, [GameInputMappingCanvas class])) {
                    GameInputMappingCanvas* gameInputMappingCanvas = ((GameInputMappingCanvas*) tempDisplayable);
                    [gameInputMappingCanvas update];
                }
                [self commandAction:gameCommandsFactory->SET_MENU_DISPLAYABLE :[self getInputMappingInstructionsCanvas]];
            } else if ([[HighScoreCommandsFactory getInstance] isHighScoreCommand:command]) {
                Displayable* tempDisplayable = displayable;
                if (java_objc_instanceof(tempDisplayable, [HighScoresCanvas class])) {
                    HighScoresCanvas* highScoresCanvas = ((HighScoresCanvas*) tempDisplayable);
                    [highScoresCanvas updateCommand:command];
                }
            } else if (command == [HighScoreCommands getInstance]->DISPLAY) {
                [self commandAction:gameCommandsFactory->SET_MENU_DISPLAYABLE :[self createHighScoresCanvas]];
            } else if (command == (GameInputMappingInstructionsCanvas_staticInit(), GameInputMappingInstructionsCanvas_CLOSE)) {
                MenuListener* menuListener = ((MenuListener*) displayable);
                [menuListener close];
                [self commandAction:(GameInputMappingCanvas_staticInit(), GameInputMappingCanvas_DISPLAY) :(NullCanvas_staticInit(), NullCanvas_NULL_CANVAS)];
            } else if (command == (GameInputMappingCanvas_staticInit(), GameInputMappingCanvas_DISPLAY)) {
                if ([J2MEUtil isHTML]) {
                    [self pauseAppBackground:false];
                }
                [self commandAction:gameCommandsFactory->SET_MENU_DISPLAYABLE :[self getInputMappingCanvas]];
            } else if (command == (GameInputMappingCanvas_staticInit(), GameInputMappingCanvas_DEFAULT)) {
                Displayable* tempDisplayable = displayable;
                if (java_objc_instanceof(tempDisplayable, [GameInputMappingCanvas class])) {
                    GameInputMappingCanvas* gameInputMappingCanvas = ((GameInputMappingCanvas*) tempDisplayable);
                    [gameInputMappingCanvas setDefault];
                }
            } else if (command == (InGameOptionsForm_staticInit(), InGameOptionsForm_DISPLAY)) {
                [self pauseAppBackground:false];
                ProgressCanvas* progressCanvas = [ProgressCanvasFactory getInstance];
                [progressCanvas addNormalPortion:50 :"In Game Options"];
                AllBinaryGameLayerManager* layerManager = [self createGameLayerManager];
                InGameOptionsFormFactory* inGameOptionsFormFactory = [InGameOptionsFormFactory getInstance];
                [inGameOptionsFormFactory init_:self :[((InGameFeatures*) [InGameFeatures alloc]) init] :"Options In Game" :[layerManager getBackgroundBasicColor] :[layerManager getForegroundBasicColor]];
                CommandForm* inGameOptionsForm = [inGameOptionsFormFactory get];
                [inGameOptionsForm setItemStateListener:allbinaryGameCanvasRunnableInterface];
                [self commandAction:gameCommandsFactory->SET_MENU_DISPLAYABLE :inGameOptionsForm];
            } else if (command == (InGameOptionsForm_staticInit(), InGameOptionsForm_DEFAULT)) {
                InGameOptionsForm* inGameOptionsForm = ((InGameOptionsForm*) [[InGameOptionsFormFactory getInstance] get]);
                [[GameFeatureFormUtil getInstance] setDefault:inGameOptionsForm];
            } else if (command == gameCommandsFactory->DISPLAY_OPTIONS) {
                [AllBinaryMediaManager setMuted:true];
                [self stopAll];
                MainFeatureFactory* mainFeatureFactory = [MainFeatureFactory getInstance];
                self->isFullScreen = [self->features isFeature:mainFeatureFactory->FULL_SCREEN];
                [[ResizableListenerHandler getInstance] fireEvent:true];
                [self setResized:false];
                [self commandAction:gameCommandsFactory->SET_MENU_DISPLAYABLE :[self getGameOptionsForm]];
            } else if (command == gameCommandsFactory->CLOSE_OPTIONS) {
                [[ResizableListenerHandler getInstance] fireEvent:false];
                [self commandAction:gameCommandsFactory->CLOSE_AND_SHOW_GAME_CANVAS :displayable];
                StringMaker* stringBuffer = [((StringMaker*) [StringMaker alloc]) init];
                [stringBuffer append:"Close isFullScreen/change: "];
                [stringBuffer appendboolean:self->isFullScreen];
                [stringBuffer appendboolean:[self->fullScreenUtil isScreenChange:self->isFullScreen]];
                [stringBuffer append:" isResized: "];
                [stringBuffer appendboolean:[self isResized]];
                [PreLogUtil put:[stringBuffer toString] :self :self->COMMAND_ACTION];
                if ([self isResized] || [self->fullScreenUtil isScreenChange:self->isFullScreen]) {
                    [self updateFullScreen];
                }
                [AllBinaryMediaManager setMuted:false];
            } else if (command == gameCommandsFactory->DISPLAY_LOAD_FORM) {
                [self pauseAppBackground:false];
                KeyValuePersistance* keyValuePersistance = [GamePersistanceSingleton getInstance];
                [keyValuePersistance clear];
                [keyValuePersistance loadAll:self->abeClientInformation];
                if ([self getLoadGameForm] == [CommandForm getNullCommandForm]) {
                    AllBinaryGameLayerManager* layerManager = [self createGameLayerManager];
                    [self setLoadGameForm:[((LoadGameForm*) [LoadGameForm alloc]) init:self :"Load Game" :[layerManager getBackgroundBasicColor] :[layerManager getForegroundBasicColor]]];
                } else {
                    [[self getLoadGameForm] update];
                }
                [self commandAction:gameCommandsFactory->SET_MENU_DISPLAYABLE :[self getLoadGameForm]];
            } else if (command == gameCommandsFactory->LOAD_FILE) {
                LoadGameForm* loadGameForm = ((LoadGameForm*) [self getLoadGameForm]);
                int32_t index = [loadGameForm getSelectedId];
                if (index != -1) {
                    KeyValuePersistance* keyValuePersistance = [GamePersistanceSingleton getInstance];
                    [self setStartStateHashtable:[keyValuePersistance get:index]];
                    MenuListener* menuListener = [self getLoadGameForm];
                    [menuListener close];
                    [PreLogUtil put:[[BasicMotionGesturesHandler getInstance] toString] :self :self->COMMAND_ACTION];
                    [self commandAction:gameCommandsFactory->START_COMMAND :(NullCanvas_staticInit(), NullCanvas_NULL_CANVAS)];
                    [PreLogUtil put:[[BasicMotionGesturesHandler getInstance] toString] :self :self->COMMAND_ACTION];
                }
            } else if (command == gameCommandsFactory->DELETE_FILE) {
                LoadGameForm* loadGameForm = ((LoadGameForm*) [self getLoadGameForm]);
                int32_t index = [loadGameForm getSelectedText];
                if (index != -1) {
                    KeyValuePersistance* keyValuePersistance = [GamePersistanceSingleton getInstance];
                    [keyValuePersistance delete:self->abeClientInformation :index];
                    [keyValuePersistance clear];
                    [keyValuePersistance loadAllSize:self->abeClientInformation :1];
                    [[self getLoadGameForm] update];
                }
            } else if (command == gameCommandsFactory->SAVE) {
                KeyValuePersistance* keyValuePersistance = [GamePersistanceSingleton getInstance];
                [self pauseAppBackground:false];
                [keyValuePersistance save:self->abeClientInformation :[self getCurrentStateHashtable]];
                [self unPauseAppBackground:false];
            } else if (command == (HighScoreUtil_staticInit(), HighScoreUtil_SUBMIT_TEXTBOX_COMMAND)) {
                [self->logUtil putF:"Submitted Score" :self :self->COMMAND_ACTION];
                if (java_objc_instanceof(displayable, [HighScoreTextBox class])) {
                    HighScoreTextBox* highScoreTextBox = ((HighScoreTextBox*) displayable);
                    highScoreTextBox->submitted = true;
                }
                [allbinaryGameCanvasRunnableInterface setHighScoreSubmitted:true];
                [self commandAction:gameCommandsFactory->CLOSE_AND_SHOW_GAME_CANVAS :displayable];
            } else if (command == gameCommandsFactory->DISPLAY_ABOUT) {
                [self->aboutCommandProcessor process:self :gameCommandsFactory->SET_MENU_DISPLAYABLE :[self getAboutCanvas]];
            } else if (command == gameCommandsFactory->OPEN_WEB_URL) {
                [self->webCommandProcessor process:self :gameCommandsFactory->OPEN_WEB_URL :(NullCanvas_staticInit(), NullCanvas_NULL_CANVAS)];
            } else if (command == gameCommandsFactory->TOGGLE_KEYBOARD) {
                VirtualKeyboardEventHandler* virtualKeyboardEventHandler = [VirtualKeyboardEventHandler getInstance];
                [virtualKeyboardEventHandler fireEvent:virtualKeyboardEventHandler->SHOW_EVENT];
            } else if ([self->tsUtil compareTo:[command getLabel] :[gameCommandsFactory->TOGGLE_FULLSCREEN getLabel]] == 0) {
                MainFeatureFactory* mainFeatureFactory = [MainFeatureFactory getInstance];
                bool isFullScreen = [self->features isFeature:mainFeatureFactory->FULL_SCREEN];
                if (isFullScreen) {
                    [self->features removeDefault:mainFeatureFactory->FULL_SCREEN];
                } else {
                    [self->features addDefault:mainFeatureFactory->FULL_SCREEN];
                }
                [self updateFullScreen];
            }
        } JAVA_CATCH(Exception, e) {
            [self->logUtil put:[[[[((StringMaker*) [StringMaker alloc]) init] append:self->commonStrings->EXCEPTION_LABEL] append:[command getLabel]] toString] :self :self->midletStrings->COMMAND_ACTION :e];
            if (command != [GameCommandsFactory getInstance]->EXIT_COMMAND) {
                [self exitProgress:false];
            }
        } JAVA_END_TRY;
}


- (void) updateFullScreen {
        MainFeatureFactory* mainFeatureFactory = [MainFeatureFactory getInstance];
        bool isFullScreen = [self->features isFeature:mainFeatureFactory->FULL_SCREEN];
        Displayable* displayable = [[self getDisplay] getCurrent];
        if (java_objc_instanceof(displayable, [Canvas class])) {
            Canvas* canvas = ((Canvas*) displayable);
            [canvas setFullScreenMode:isFullScreen];
        }
}


- (void) onEvent:(AllBinaryEventObject*)eventObject {
        [ForcedLogUtil log:[EventStrings getInstance]->PERFORMANCE_MESSAGE :self];
}


// throws Exception
- (MyCanvas*) getInputMappingInstructionsCanvas {
        return [((GameInputMappingInstructionsCanvas*) [GameInputMappingInstructionsCanvas alloc]) init:self :[self createGameLayerManager]];
}


// throws Exception
- (MyCanvas*) getInputMappingCanvas {
        return [((GameInputMappingCanvas*) [GameInputMappingCanvas alloc]) init:self->abeClientInformation :self :[self createGameLayerManager] :[self getHelpPaintable]];
}


// throws Exception
- (MyCanvas*) getAboutCanvas {
        return [((BasicPaintablesCanvas*) [BasicPaintablesCanvas alloc]) init:self :[CanvasStrings getInstance]->ABOUT :[self createGameLayerManager] :[AboutPaintableFactory getInstance]->paintableArray];
}


// throws Exception
- (HelpPaintable*) getHelpPaintable {
        java_throw(java_exception_new("Exception", self->commonStrings->NOT_IMPLEMENTED));
}


// throws Exception
- (HighScoresCanvas*) createHighScoresCanvas {
        java_throw(java_exception_new("Exception", self->commonStrings->NOT_IMPLEMENTED));
}


// throws Exception
- (void) startGameCanvasRunnableInterface {
        ThreadFactoryUtil* threadFactoryUtil = [ThreadFactoryUtil getInstance];
        self->thread = [threadFactoryUtil getInstanceGameCanvasRunnable:self->allbinaryGameCanvasRunnableInterface];
        [self->logUtil putF:[[[[((StringMaker*) [StringMaker alloc]) init] append:"Thread Priority: "] appendint:((int32_t) [self->thread getPriority])] toString] :self :"startGameCanvasRunnableInterface"];
        [self->allbinaryGameCanvasRunnableInterface setThread:self->thread];
        [threadFactoryUtil start:self->thread];
}


// throws Exception
- (void) stopGameCanvasRunnableInterface {
        [self->logUtil putF:self->commonStrings->START :self :self->gameStrings->STOP_GAME_CANVAS_RUNNABLE_INTERFACE];
        [[GameNotificationEventHandler getInstance] removeAllListeners];
        [[ColorChangeEventHandler getInstance] removeAllListeners];
        [GameEventHandlerUtil removeAllListeners];
        GameCanvasRunnableInterface* gameCanvasRunnableInterface = self->allbinaryGameCanvasRunnableInterface;
        if (gameCanvasRunnableInterface != (NullGameCanvasRunnable_staticInit(), NullGameCanvasRunnable_NULL_GAME_CANVAS_RUNNABLE)) {
            [self->logUtil putF:[[[[((StringMaker*) [StringMaker alloc]) init] append:"Set Running False: "] append:[gameCanvasRunnableInterface toString]] toString] :self :self->gameStrings->STOP_GAME_CANVAS_RUNNABLE_INTERFACE];
            [gameCanvasRunnableInterface setRunning:false];
        } else {
            [self->logUtil putF:"StopGame - Could Not Stop" :self :self->gameStrings->STOP_GAME_CANVAS_RUNNABLE_INTERFACE];
        }
        [[ThreadUtil getInstance] join:self->thread];
        ProgressCanvas* progressCanvas = [ProgressCanvasFactory getInstance];
        if ([self->features isFeature:[MainFeatureFactory getInstance]->LOAD_ALL]) {
            [progressCanvas addNormalPortion:50 :"Stopped Game Runnable"];
        } else {
            [progressCanvas addNormalPortion:50 :"Stopped Main Runnable"];
        }
        [self->logUtil putF:self->commonStrings->END :self :self->gameStrings->STOP_GAME_CANVAS_RUNNABLE_INTERFACE];
}


- (GameCanvasRunnableInterface*) getGameCanvasRunnableInterface {
        return self->allbinaryGameCanvasRunnableInterface;
}


- (void) setGameCanvasRunnableInterface:(GameCanvasRunnableInterface*)gameCanvasRunnableInterface {
        self->allbinaryGameCanvasRunnableInterface = gameCanvasRunnableInterface;
}


- (AllBinaryGameLayerManager*) createGameLayerManager {
        GameInfo* gameInfo = [((GameInfo*) [GameInfo alloc]) init:[GameTypeFactory getInstance]->SINGLE_PLAYER :(GameMode_staticInit(), GameMode_SERVER) :[PlayerTypesFactory getInstance]->PLAYER_TYPE_ONE :1 :1];
        return [((AllBinaryGameLayerManager*) [AllBinaryGameLayerManager alloc]) init:self->basicColorFactory->BLACK :self->basicColorFactory->WHITE :gameInfo];
}


- (CommandForm*) getGameOptionsForm {
        AllBinaryGameLayerManager* layerManager = [self createGameLayerManager];
        return [[GameOptionsFormFactory getInstance] init_:self :"Game Options" :[layerManager getBackgroundBasicColor] :[layerManager getForegroundBasicColor]];
}


// throws Exception
- (void) save {
        [self->logUtil putF:self->commonStrings->START :self :self->commonStrings->SAVE];
        ABHashtable* hashtable = [self getCurrentStateHashtable];
        [[GamePersistanceSingleton getInstance] save:self->abeClientInformation :hashtable];
}


// throws Exception
- (ABHashtable*) getCurrentStateHashtable {
        [self->logUtil putF:self->commonStrings->START :self :"getCurrentStateHashtable"];
        ABHashtable* hashtable = [[StdUtil getInstance] createHashtable];
        if (self->allbinaryGameCanvasRunnableInterface != (NullGameCanvasRunnable_staticInit(), NullGameCanvasRunnable_NULL_GAME_CANVAS_RUNNABLE)) {
            ABHashtable* currentHashtable = [self->allbinaryGameCanvasRunnableInterface getCurrentStateHashtable];
            Enumeration* enumeration = [currentHashtable keys];
            id key = nullptr;
            while ([self->enumerationUtil hasMoreElements:enumeration]) {
                key = [self->enumerationUtil nextElement:enumeration];
                [hashtable put:JAVA_BOX(key) :JAVA_BOX([currentHashtable get:JAVA_BOX(key)])];
            }
        }
        return hashtable;
}


- (void) setLoadGameForm:(LoadGameForm*)loadGameForm {
        self->loadGameForm = loadGameForm;
}


- (CommandForm*) getLoadGameForm {
        return self->loadGameForm;
}


- (void) setResized:(bool)resized {
        self->resized = resized;
}


- (bool) isResized {
        return self->resized;
}


- (bool) isDemoLoading {
        if (self->startedBefore) {
            return false;
        }
        Displayable* displayable = [[self getDisplay] getCurrent];
        if (java_objc_instanceof(displayable, [DemoCanvas class])) {
            DemoCanvas* demoCanvas = ((DemoCanvas*) displayable);
            if ([demoCanvas isDemoLoading]) {
                return true;
            }
        }
        return false;
}

@end

