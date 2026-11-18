// Generated Code Do Not Modify
#include "org/allbinary/game/displayable/canvas/DemoCanvas.h"
#include "javax/microedition/lcdui/Command.h"
#include "javax/microedition/lcdui/CommandListener.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "javax/microedition/lcdui/Item.h"
#include "org/allbinary/J2MEUtil.h"
#include "org/allbinary/animation/Animation.h"
#include "org/allbinary/animation/IndexedAnimationBehavior.h"
#include "org/allbinary/animation/special/SpecialAnimation.h"
#include "org/allbinary/business/advertisement/GameAdStateFactory.h"
#include "org/allbinary/canvas/BaseGameStatistics.h"
#include "org/allbinary/canvas/CustomGameMenuUtil.h"
#include "org/allbinary/canvas/FullScreenUtil.h"
#include "org/allbinary/canvas/GameStatisticsFactory.h"
#include "org/allbinary/game/GameAdState.h"
#include "org/allbinary/game/GameInfo.h"
#include "org/allbinary/game/commands/GameCommandsFactory.h"
#include "org/allbinary/game/configuration/event/ChangedGameFeatureListener.h"
#include "org/allbinary/game/configuration/feature/Features.h"
#include "org/allbinary/game/configuration/feature/GameFeatureFactory.h"
#include "org/allbinary/game/configuration/feature/InputFeatureFactory.h"
#include "org/allbinary/game/configuration/feature/MainFeatureFactory.h"
#include "org/allbinary/game/init/BasicBuildGameInitializerFactory.h"
#include "org/allbinary/game/init/GameInitializationUtil.h"
#include "org/allbinary/game/input/GameInputStrings.h"
#include "org/allbinary/game/input/GameKey.h"
#include "org/allbinary/game/input/GameKeyFactory.h"
#include "org/allbinary/game/input/PlatformInputMappingFactory.h"
#include "org/allbinary/game/input/event/DownGameKeyEventHandler.h"
#include "org/allbinary/game/input/event/GameKeyEvent.h"
#include "org/allbinary/game/input/event/GameKeyEventFactory.h"
#include "org/allbinary/game/input/event/GameKeyEventHandler.h"
#include "org/allbinary/game/input/event/UpGameKeyEventHandler.h"
#include "org/allbinary/game/input/mapping/InputToGameKeyMapping.h"
#include "org/allbinary/game/layer/AllBinaryGameLayerManager.h"
#include "org/allbinary/game/layer/SWTUtil.h"
#include "org/allbinary/game/midlet/DemoGameMidlet.h"
#include "org/allbinary/game/score/HighScoreCommands.h"
#include "org/allbinary/game/score/HighScores.h"
#include "org/allbinary/game/score/HighScoresFactoryInterface.h"
#include "org/allbinary/game/score/HighScoresHelper.h"
#include "org/allbinary/game/score/HighScoresHelperBase.h"
#include "org/allbinary/game/score/HighScoresPaintable.h"
#include "org/allbinary/game/score/NullHighScoresSingletonFactory.h"
#include "org/allbinary/game/state/GameState.h"
#include "org/allbinary/game/state/GameStateFactory.h"
#include "org/allbinary/graphics/Rectangle.h"
#include "org/allbinary/graphics/ResizableListenerHandler.h"
#include "org/allbinary/graphics/canvas/transition/progress/ProgressCanvas.h"
#include "org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory.h"
#include "org/allbinary/graphics/color/BasicColor.h"
#include "org/allbinary/graphics/color/BasicColorFactory.h"
#include "org/allbinary/graphics/displayable/command/MyCommandsFactory.h"
#include "org/allbinary/graphics/displayable/event/DisplayChangeEvent.h"
#include "org/allbinary/graphics/displayable/event/DisplayChangeEventHandler.h"
#include "org/allbinary/graphics/displayable/screen/FullScreenPaintableFactory.h"
#include "org/allbinary/graphics/form/CommandCurrentSelectionFormFactory.h"
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
#include "org/allbinary/graphics/paint/NullPaintable.h"
#include "org/allbinary/graphics/paint/Paintable.h"
#include "org/allbinary/graphics/paint/PaintableInterface.h"
#include "org/allbinary/graphics/paint/StatePaintable.h"
#include "org/allbinary/graphics/paint/StatePaintableFactory.h"
#include "org/allbinary/input/motion/gesture/observer/BasicMotionGesturesHandler.h"
#include "org/allbinary/logic/communication/log/ForcedLogUtil.h"
#include "org/allbinary/logic/communication/log/PreLogUtil.h"
#include "org/allbinary/logic/math/SmallIntegerSingletonFactory.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/logic/system/os/OperatingSystemFactory.h"
#include "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.h"
#include "org/allbinary/logic/system/security/licensing/InApplicationPurchaseFactory.h"
#include "org/allbinary/logic/system/security/licensing/LockableFeature.h"
#include "org/allbinary/logic/system/security/licensing/LockableFeatureFactory.h"
#include "org/allbinary/logic/util/event/AllBinaryEventObject.h"
#include "org/allbinary/logic/util/event/EventStrings.h"
#include "org/allbinary/media/audio/AllBinaryMediaManager.h"
#include "org/allbinary/media/audio/EarlySoundsFactory.h"
#include "org/allbinary/media/audio/PrimaryPlayerQueueFactory.h"
#include "org/allbinary/media/audio/SecondaryPlayerQueueFactory.h"
#include "org/allbinary/string/CommonSeps.h"
#include "org/allbinary/thread/NullThread.h"
#include "org/allbinary/thread/ThreadFactoryUtil.h"
#include "org/allbinary/thread/ThreadUtil.h"
#include "org/allbinary/time/TimeDelayHelper.h"
#include "org/allbinary/util/ABHashtable.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/util/BasicArrayListD.h"
#include "org/allbinary/game/displayable/canvas/GameCanvasRunnableInterface.h"
#include "org/allbinary/game/displayable/canvas/MenuListener.h"
#include "org/allbinary/game/displayable/canvas/DemoPaintableInterface.h"
#include "org/allbinary/game/displayable/canvas/FormUtil.h"
#include "org/allbinary/game/displayable/canvas/NullGameCanvas.h"
#include "org/allbinary/game/displayable/canvas/AllBinaryGameCanvas.h"
#include "org/allbinary/game/displayable/canvas/NoMenuInputProcessor.h"
#include "org/allbinary/game/displayable/canvas/BasicMenuInputProcessor.h"
#include "org/allbinary/game/displayable/canvas/DemoGameStartupRunnable.h"
#include "org/allbinary/game/displayable/canvas/NullWaitGameRunnable.h"
#include "org/allbinary/game/displayable/canvas/GameRunnable.h"
#include "org/allbinary/game/displayable/canvas/GameInputMappingCanvas.h"
#include "org/allbinary/game/displayable/canvas/DemoLimitedCommandTextItemArrayFactory.h"
#include "org/allbinary/game/displayable/canvas/CommandFormInputProcessor.h"
#include "org/allbinary/game/displayable/canvas/DemoCanvasProgressUtil.h"
#include "org/allbinary/game/displayable/canvas/DemoGameRunnable.h"
#if __has_include("org/allbinary/game/displayable/canvas/PersistentInputMapping.h")
#include "org/allbinary/game/displayable/canvas/PersistentInputMapping.h"
#endif
#if __has_include("javax/microedition/lcdui/PersistentInputMapping.h")
#include "javax/microedition/lcdui/PersistentInputMapping.h"
#endif
#if __has_include("javax/microedition/lcdui/PersistentInputMapping.h")
#include "javax/microedition/lcdui/PersistentInputMapping.h"
#endif
#if __has_include("javax/microedition/lcdui/PersistentInputMapping.h")
#include "javax/microedition/lcdui/PersistentInputMapping.h"
#endif
#if __has_include("javax/microedition/lcdui/PersistentInputMapping.h")
#include "javax/microedition/lcdui/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/PersistentInputMapping.h")
#include "org/allbinary/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/animation/PersistentInputMapping.h")
#include "org/allbinary/animation/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/animation/PersistentInputMapping.h")
#include "org/allbinary/animation/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/animation/special/PersistentInputMapping.h")
#include "org/allbinary/animation/special/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/business/advertisement/PersistentInputMapping.h")
#include "org/allbinary/business/advertisement/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/canvas/PersistentInputMapping.h")
#include "org/allbinary/canvas/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/canvas/PersistentInputMapping.h")
#include "org/allbinary/canvas/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/canvas/PersistentInputMapping.h")
#include "org/allbinary/canvas/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/canvas/PersistentInputMapping.h")
#include "org/allbinary/canvas/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/canvas/PersistentInputMapping.h")
#include "org/allbinary/canvas/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/game/PersistentInputMapping.h")
#include "org/allbinary/game/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/game/PersistentInputMapping.h")
#include "org/allbinary/game/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/game/commands/PersistentInputMapping.h")
#include "org/allbinary/game/commands/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/game/configuration/event/PersistentInputMapping.h")
#include "org/allbinary/game/configuration/event/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/game/configuration/feature/PersistentInputMapping.h")
#include "org/allbinary/game/configuration/feature/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/game/configuration/feature/PersistentInputMapping.h")
#include "org/allbinary/game/configuration/feature/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/game/configuration/feature/PersistentInputMapping.h")
#include "org/allbinary/game/configuration/feature/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/game/configuration/feature/PersistentInputMapping.h")
#include "org/allbinary/game/configuration/feature/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/game/init/PersistentInputMapping.h")
#include "org/allbinary/game/init/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/game/init/PersistentInputMapping.h")
#include "org/allbinary/game/init/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/game/input/PersistentInputMapping.h")
#include "org/allbinary/game/input/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/game/input/PersistentInputMapping.h")
#include "org/allbinary/game/input/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/game/input/PersistentInputMapping.h")
#include "org/allbinary/game/input/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/game/input/PersistentInputMapping.h")
#include "org/allbinary/game/input/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/game/input/event/PersistentInputMapping.h")
#include "org/allbinary/game/input/event/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/game/input/event/PersistentInputMapping.h")
#include "org/allbinary/game/input/event/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/game/input/event/PersistentInputMapping.h")
#include "org/allbinary/game/input/event/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/game/input/event/PersistentInputMapping.h")
#include "org/allbinary/game/input/event/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/game/input/event/PersistentInputMapping.h")
#include "org/allbinary/game/input/event/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/game/input/mapping/PersistentInputMapping.h")
#include "org/allbinary/game/input/mapping/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/game/layer/PersistentInputMapping.h")
#include "org/allbinary/game/layer/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/game/layer/PersistentInputMapping.h")
#include "org/allbinary/game/layer/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/game/midlet/PersistentInputMapping.h")
#include "org/allbinary/game/midlet/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/game/score/PersistentInputMapping.h")
#include "org/allbinary/game/score/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/game/score/PersistentInputMapping.h")
#include "org/allbinary/game/score/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/game/score/PersistentInputMapping.h")
#include "org/allbinary/game/score/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/game/score/PersistentInputMapping.h")
#include "org/allbinary/game/score/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/game/score/PersistentInputMapping.h")
#include "org/allbinary/game/score/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/game/score/PersistentInputMapping.h")
#include "org/allbinary/game/score/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/game/score/PersistentInputMapping.h")
#include "org/allbinary/game/score/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/game/state/PersistentInputMapping.h")
#include "org/allbinary/game/state/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/game/state/PersistentInputMapping.h")
#include "org/allbinary/game/state/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/graphics/PersistentInputMapping.h")
#include "org/allbinary/graphics/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/graphics/PersistentInputMapping.h")
#include "org/allbinary/graphics/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/graphics/canvas/transition/progress/PersistentInputMapping.h")
#include "org/allbinary/graphics/canvas/transition/progress/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/graphics/canvas/transition/progress/PersistentInputMapping.h")
#include "org/allbinary/graphics/canvas/transition/progress/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/graphics/color/PersistentInputMapping.h")
#include "org/allbinary/graphics/color/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/graphics/color/PersistentInputMapping.h")
#include "org/allbinary/graphics/color/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/command/PersistentInputMapping.h")
#include "org/allbinary/graphics/displayable/command/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/event/PersistentInputMapping.h")
#include "org/allbinary/graphics/displayable/event/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/event/PersistentInputMapping.h")
#include "org/allbinary/graphics/displayable/event/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/event/PersistentInputMapping.h")
#include "org/allbinary/graphics/displayable/event/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/screen/PersistentInputMapping.h")
#include "org/allbinary/graphics/displayable/screen/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/graphics/form/PersistentInputMapping.h")
#include "org/allbinary/graphics/form/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/graphics/form/PersistentInputMapping.h")
#include "org/allbinary/graphics/form/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/graphics/form/PersistentInputMapping.h")
#include "org/allbinary/graphics/form/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/graphics/form/PersistentInputMapping.h")
#include "org/allbinary/graphics/form/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/graphics/form/PersistentInputMapping.h")
#include "org/allbinary/graphics/form/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/graphics/form/item/PersistentInputMapping.h")
#include "org/allbinary/graphics/form/item/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/graphics/form/item/PersistentInputMapping.h")
#include "org/allbinary/graphics/form/item/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/graphics/opengles/PersistentInputMapping.h")
#include "org/allbinary/graphics/opengles/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/graphics/opengles/PersistentInputMapping.h")
#include "org/allbinary/graphics/opengles/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/graphics/opengles/PersistentInputMapping.h")
#include "org/allbinary/graphics/opengles/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/graphics/opengles/PersistentInputMapping.h")
#include "org/allbinary/graphics/opengles/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/graphics/paint/PersistentInputMapping.h")
#include "org/allbinary/graphics/paint/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/graphics/paint/PersistentInputMapping.h")
#include "org/allbinary/graphics/paint/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/graphics/paint/PersistentInputMapping.h")
#include "org/allbinary/graphics/paint/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/graphics/paint/PersistentInputMapping.h")
#include "org/allbinary/graphics/paint/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/graphics/paint/PersistentInputMapping.h")
#include "org/allbinary/graphics/paint/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/graphics/paint/PersistentInputMapping.h")
#include "org/allbinary/graphics/paint/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/input/motion/gesture/observer/PersistentInputMapping.h")
#include "org/allbinary/input/motion/gesture/observer/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/logic/communication/log/PersistentInputMapping.h")
#include "org/allbinary/logic/communication/log/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/logic/communication/log/PersistentInputMapping.h")
#include "org/allbinary/logic/communication/log/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/logic/math/PersistentInputMapping.h")
#include "org/allbinary/logic/math/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/logic/string/PersistentInputMapping.h")
#include "org/allbinary/logic/string/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/logic/string/PersistentInputMapping.h")
#include "org/allbinary/logic/string/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/logic/system/os/PersistentInputMapping.h")
#include "org/allbinary/logic/system/os/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/logic/system/security/licensing/PersistentInputMapping.h")
#include "org/allbinary/logic/system/security/licensing/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/logic/system/security/licensing/PersistentInputMapping.h")
#include "org/allbinary/logic/system/security/licensing/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/logic/system/security/licensing/PersistentInputMapping.h")
#include "org/allbinary/logic/system/security/licensing/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/logic/system/security/licensing/PersistentInputMapping.h")
#include "org/allbinary/logic/system/security/licensing/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/logic/util/event/PersistentInputMapping.h")
#include "org/allbinary/logic/util/event/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/logic/util/event/PersistentInputMapping.h")
#include "org/allbinary/logic/util/event/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/media/audio/PersistentInputMapping.h")
#include "org/allbinary/media/audio/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/media/audio/PersistentInputMapping.h")
#include "org/allbinary/media/audio/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/media/audio/PersistentInputMapping.h")
#include "org/allbinary/media/audio/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/media/audio/PersistentInputMapping.h")
#include "org/allbinary/media/audio/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/string/PersistentInputMapping.h")
#include "org/allbinary/string/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/thread/PersistentInputMapping.h")
#include "org/allbinary/thread/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/thread/PersistentInputMapping.h")
#include "org/allbinary/thread/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/thread/PersistentInputMapping.h")
#include "org/allbinary/thread/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/time/PersistentInputMapping.h")
#include "org/allbinary/time/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/util/PersistentInputMapping.h")
#include "org/allbinary/util/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/util/PersistentInputMapping.h")
#include "org/allbinary/util/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/util/PersistentInputMapping.h")
#include "org/allbinary/util/PersistentInputMapping.h"
#endif
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
#if __has_include("org/allbinary/GenericOperatingSystem.h")
#include "org/allbinary/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/animation/GenericOperatingSystem.h")
#include "org/allbinary/animation/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/animation/GenericOperatingSystem.h")
#include "org/allbinary/animation/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/animation/special/GenericOperatingSystem.h")
#include "org/allbinary/animation/special/GenericOperatingSystem.h"
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
#if __has_include("org/allbinary/canvas/GenericOperatingSystem.h")
#include "org/allbinary/canvas/GenericOperatingSystem.h"
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
#if __has_include("org/allbinary/game/input/event/GenericOperatingSystem.h")
#include "org/allbinary/game/input/event/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/game/input/event/GenericOperatingSystem.h")
#include "org/allbinary/game/input/event/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/game/input/event/GenericOperatingSystem.h")
#include "org/allbinary/game/input/event/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/game/input/event/GenericOperatingSystem.h")
#include "org/allbinary/game/input/event/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/game/input/mapping/GenericOperatingSystem.h")
#include "org/allbinary/game/input/mapping/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/game/layer/GenericOperatingSystem.h")
#include "org/allbinary/game/layer/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/game/layer/GenericOperatingSystem.h")
#include "org/allbinary/game/layer/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/game/midlet/GenericOperatingSystem.h")
#include "org/allbinary/game/midlet/GenericOperatingSystem.h"
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
#if __has_include("org/allbinary/game/score/GenericOperatingSystem.h")
#include "org/allbinary/game/score/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/game/score/GenericOperatingSystem.h")
#include "org/allbinary/game/score/GenericOperatingSystem.h"
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
#if __has_include("org/allbinary/graphics/displayable/screen/GenericOperatingSystem.h")
#include "org/allbinary/graphics/displayable/screen/GenericOperatingSystem.h"
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
#if __has_include("org/allbinary/graphics/paint/GenericOperatingSystem.h")
#include "org/allbinary/graphics/paint/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/input/motion/gesture/observer/GenericOperatingSystem.h")
#include "org/allbinary/input/motion/gesture/observer/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/logic/communication/log/GenericOperatingSystem.h")
#include "org/allbinary/logic/communication/log/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/logic/communication/log/GenericOperatingSystem.h")
#include "org/allbinary/logic/communication/log/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/logic/math/GenericOperatingSystem.h")
#include "org/allbinary/logic/math/GenericOperatingSystem.h"
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
#if __has_include("org/allbinary/logic/system/security/licensing/GenericOperatingSystem.h")
#include "org/allbinary/logic/system/security/licensing/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/logic/system/security/licensing/GenericOperatingSystem.h")
#include "org/allbinary/logic/system/security/licensing/GenericOperatingSystem.h"
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
#if __has_include("org/allbinary/string/GenericOperatingSystem.h")
#include "org/allbinary/string/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/thread/GenericOperatingSystem.h")
#include "org/allbinary/thread/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/thread/GenericOperatingSystem.h")
#include "org/allbinary/thread/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/thread/GenericOperatingSystem.h")
#include "org/allbinary/thread/GenericOperatingSystem.h"
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
#if __has_include("org/allbinary/game/displayable/canvas/PlayerQueue.h")
#include "org/allbinary/game/displayable/canvas/PlayerQueue.h"
#endif
#if __has_include("javax/microedition/lcdui/PlayerQueue.h")
#include "javax/microedition/lcdui/PlayerQueue.h"
#endif
#if __has_include("javax/microedition/lcdui/PlayerQueue.h")
#include "javax/microedition/lcdui/PlayerQueue.h"
#endif
#if __has_include("javax/microedition/lcdui/PlayerQueue.h")
#include "javax/microedition/lcdui/PlayerQueue.h"
#endif
#if __has_include("javax/microedition/lcdui/PlayerQueue.h")
#include "javax/microedition/lcdui/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/PlayerQueue.h")
#include "org/allbinary/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/animation/PlayerQueue.h")
#include "org/allbinary/animation/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/animation/PlayerQueue.h")
#include "org/allbinary/animation/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/animation/special/PlayerQueue.h")
#include "org/allbinary/animation/special/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/business/advertisement/PlayerQueue.h")
#include "org/allbinary/business/advertisement/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/canvas/PlayerQueue.h")
#include "org/allbinary/canvas/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/canvas/PlayerQueue.h")
#include "org/allbinary/canvas/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/canvas/PlayerQueue.h")
#include "org/allbinary/canvas/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/canvas/PlayerQueue.h")
#include "org/allbinary/canvas/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/canvas/PlayerQueue.h")
#include "org/allbinary/canvas/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/game/PlayerQueue.h")
#include "org/allbinary/game/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/game/PlayerQueue.h")
#include "org/allbinary/game/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/game/commands/PlayerQueue.h")
#include "org/allbinary/game/commands/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/game/configuration/event/PlayerQueue.h")
#include "org/allbinary/game/configuration/event/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/game/configuration/feature/PlayerQueue.h")
#include "org/allbinary/game/configuration/feature/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/game/configuration/feature/PlayerQueue.h")
#include "org/allbinary/game/configuration/feature/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/game/configuration/feature/PlayerQueue.h")
#include "org/allbinary/game/configuration/feature/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/game/configuration/feature/PlayerQueue.h")
#include "org/allbinary/game/configuration/feature/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/game/init/PlayerQueue.h")
#include "org/allbinary/game/init/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/game/init/PlayerQueue.h")
#include "org/allbinary/game/init/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/game/input/PlayerQueue.h")
#include "org/allbinary/game/input/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/game/input/PlayerQueue.h")
#include "org/allbinary/game/input/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/game/input/PlayerQueue.h")
#include "org/allbinary/game/input/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/game/input/PlayerQueue.h")
#include "org/allbinary/game/input/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/game/input/event/PlayerQueue.h")
#include "org/allbinary/game/input/event/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/game/input/event/PlayerQueue.h")
#include "org/allbinary/game/input/event/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/game/input/event/PlayerQueue.h")
#include "org/allbinary/game/input/event/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/game/input/event/PlayerQueue.h")
#include "org/allbinary/game/input/event/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/game/input/event/PlayerQueue.h")
#include "org/allbinary/game/input/event/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/game/input/mapping/PlayerQueue.h")
#include "org/allbinary/game/input/mapping/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/game/layer/PlayerQueue.h")
#include "org/allbinary/game/layer/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/game/layer/PlayerQueue.h")
#include "org/allbinary/game/layer/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/game/midlet/PlayerQueue.h")
#include "org/allbinary/game/midlet/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/game/score/PlayerQueue.h")
#include "org/allbinary/game/score/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/game/score/PlayerQueue.h")
#include "org/allbinary/game/score/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/game/score/PlayerQueue.h")
#include "org/allbinary/game/score/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/game/score/PlayerQueue.h")
#include "org/allbinary/game/score/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/game/score/PlayerQueue.h")
#include "org/allbinary/game/score/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/game/score/PlayerQueue.h")
#include "org/allbinary/game/score/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/game/score/PlayerQueue.h")
#include "org/allbinary/game/score/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/game/state/PlayerQueue.h")
#include "org/allbinary/game/state/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/game/state/PlayerQueue.h")
#include "org/allbinary/game/state/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/graphics/PlayerQueue.h")
#include "org/allbinary/graphics/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/graphics/PlayerQueue.h")
#include "org/allbinary/graphics/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/graphics/canvas/transition/progress/PlayerQueue.h")
#include "org/allbinary/graphics/canvas/transition/progress/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/graphics/canvas/transition/progress/PlayerQueue.h")
#include "org/allbinary/graphics/canvas/transition/progress/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/graphics/color/PlayerQueue.h")
#include "org/allbinary/graphics/color/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/graphics/color/PlayerQueue.h")
#include "org/allbinary/graphics/color/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/command/PlayerQueue.h")
#include "org/allbinary/graphics/displayable/command/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/event/PlayerQueue.h")
#include "org/allbinary/graphics/displayable/event/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/event/PlayerQueue.h")
#include "org/allbinary/graphics/displayable/event/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/event/PlayerQueue.h")
#include "org/allbinary/graphics/displayable/event/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/screen/PlayerQueue.h")
#include "org/allbinary/graphics/displayable/screen/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/graphics/form/PlayerQueue.h")
#include "org/allbinary/graphics/form/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/graphics/form/PlayerQueue.h")
#include "org/allbinary/graphics/form/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/graphics/form/PlayerQueue.h")
#include "org/allbinary/graphics/form/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/graphics/form/PlayerQueue.h")
#include "org/allbinary/graphics/form/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/graphics/form/PlayerQueue.h")
#include "org/allbinary/graphics/form/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/graphics/form/item/PlayerQueue.h")
#include "org/allbinary/graphics/form/item/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/graphics/form/item/PlayerQueue.h")
#include "org/allbinary/graphics/form/item/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/graphics/opengles/PlayerQueue.h")
#include "org/allbinary/graphics/opengles/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/graphics/opengles/PlayerQueue.h")
#include "org/allbinary/graphics/opengles/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/graphics/opengles/PlayerQueue.h")
#include "org/allbinary/graphics/opengles/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/graphics/opengles/PlayerQueue.h")
#include "org/allbinary/graphics/opengles/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/graphics/paint/PlayerQueue.h")
#include "org/allbinary/graphics/paint/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/graphics/paint/PlayerQueue.h")
#include "org/allbinary/graphics/paint/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/graphics/paint/PlayerQueue.h")
#include "org/allbinary/graphics/paint/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/graphics/paint/PlayerQueue.h")
#include "org/allbinary/graphics/paint/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/graphics/paint/PlayerQueue.h")
#include "org/allbinary/graphics/paint/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/graphics/paint/PlayerQueue.h")
#include "org/allbinary/graphics/paint/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/input/motion/gesture/observer/PlayerQueue.h")
#include "org/allbinary/input/motion/gesture/observer/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/logic/communication/log/PlayerQueue.h")
#include "org/allbinary/logic/communication/log/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/logic/communication/log/PlayerQueue.h")
#include "org/allbinary/logic/communication/log/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/logic/math/PlayerQueue.h")
#include "org/allbinary/logic/math/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/logic/string/PlayerQueue.h")
#include "org/allbinary/logic/string/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/logic/string/PlayerQueue.h")
#include "org/allbinary/logic/string/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/logic/system/os/PlayerQueue.h")
#include "org/allbinary/logic/system/os/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/logic/system/security/licensing/PlayerQueue.h")
#include "org/allbinary/logic/system/security/licensing/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/logic/system/security/licensing/PlayerQueue.h")
#include "org/allbinary/logic/system/security/licensing/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/logic/system/security/licensing/PlayerQueue.h")
#include "org/allbinary/logic/system/security/licensing/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/logic/system/security/licensing/PlayerQueue.h")
#include "org/allbinary/logic/system/security/licensing/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/logic/util/event/PlayerQueue.h")
#include "org/allbinary/logic/util/event/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/logic/util/event/PlayerQueue.h")
#include "org/allbinary/logic/util/event/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/media/audio/PlayerQueue.h")
#include "org/allbinary/media/audio/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/media/audio/PlayerQueue.h")
#include "org/allbinary/media/audio/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/media/audio/PlayerQueue.h")
#include "org/allbinary/media/audio/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/media/audio/PlayerQueue.h")
#include "org/allbinary/media/audio/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/string/PlayerQueue.h")
#include "org/allbinary/string/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/thread/PlayerQueue.h")
#include "org/allbinary/thread/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/thread/PlayerQueue.h")
#include "org/allbinary/thread/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/thread/PlayerQueue.h")
#include "org/allbinary/thread/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/time/PlayerQueue.h")
#include "org/allbinary/time/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/util/PlayerQueue.h")
#include "org/allbinary/util/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/util/PlayerQueue.h")
#include "org/allbinary/util/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/util/PlayerQueue.h")
#include "org/allbinary/util/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/game/displayable/canvas/PlayerQueue.h")
#include "org/allbinary/game/displayable/canvas/PlayerQueue.h"
#endif
#if __has_include("javax/microedition/lcdui/PlayerQueue.h")
#include "javax/microedition/lcdui/PlayerQueue.h"
#endif
#if __has_include("javax/microedition/lcdui/PlayerQueue.h")
#include "javax/microedition/lcdui/PlayerQueue.h"
#endif
#if __has_include("javax/microedition/lcdui/PlayerQueue.h")
#include "javax/microedition/lcdui/PlayerQueue.h"
#endif
#if __has_include("javax/microedition/lcdui/PlayerQueue.h")
#include "javax/microedition/lcdui/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/PlayerQueue.h")
#include "org/allbinary/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/animation/PlayerQueue.h")
#include "org/allbinary/animation/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/animation/PlayerQueue.h")
#include "org/allbinary/animation/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/animation/special/PlayerQueue.h")
#include "org/allbinary/animation/special/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/business/advertisement/PlayerQueue.h")
#include "org/allbinary/business/advertisement/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/canvas/PlayerQueue.h")
#include "org/allbinary/canvas/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/canvas/PlayerQueue.h")
#include "org/allbinary/canvas/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/canvas/PlayerQueue.h")
#include "org/allbinary/canvas/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/canvas/PlayerQueue.h")
#include "org/allbinary/canvas/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/canvas/PlayerQueue.h")
#include "org/allbinary/canvas/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/game/PlayerQueue.h")
#include "org/allbinary/game/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/game/PlayerQueue.h")
#include "org/allbinary/game/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/game/commands/PlayerQueue.h")
#include "org/allbinary/game/commands/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/game/configuration/event/PlayerQueue.h")
#include "org/allbinary/game/configuration/event/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/game/configuration/feature/PlayerQueue.h")
#include "org/allbinary/game/configuration/feature/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/game/configuration/feature/PlayerQueue.h")
#include "org/allbinary/game/configuration/feature/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/game/configuration/feature/PlayerQueue.h")
#include "org/allbinary/game/configuration/feature/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/game/configuration/feature/PlayerQueue.h")
#include "org/allbinary/game/configuration/feature/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/game/init/PlayerQueue.h")
#include "org/allbinary/game/init/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/game/init/PlayerQueue.h")
#include "org/allbinary/game/init/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/game/input/PlayerQueue.h")
#include "org/allbinary/game/input/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/game/input/PlayerQueue.h")
#include "org/allbinary/game/input/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/game/input/PlayerQueue.h")
#include "org/allbinary/game/input/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/game/input/PlayerQueue.h")
#include "org/allbinary/game/input/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/game/input/event/PlayerQueue.h")
#include "org/allbinary/game/input/event/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/game/input/event/PlayerQueue.h")
#include "org/allbinary/game/input/event/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/game/input/event/PlayerQueue.h")
#include "org/allbinary/game/input/event/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/game/input/event/PlayerQueue.h")
#include "org/allbinary/game/input/event/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/game/input/event/PlayerQueue.h")
#include "org/allbinary/game/input/event/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/game/input/mapping/PlayerQueue.h")
#include "org/allbinary/game/input/mapping/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/game/layer/PlayerQueue.h")
#include "org/allbinary/game/layer/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/game/layer/PlayerQueue.h")
#include "org/allbinary/game/layer/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/game/midlet/PlayerQueue.h")
#include "org/allbinary/game/midlet/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/game/score/PlayerQueue.h")
#include "org/allbinary/game/score/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/game/score/PlayerQueue.h")
#include "org/allbinary/game/score/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/game/score/PlayerQueue.h")
#include "org/allbinary/game/score/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/game/score/PlayerQueue.h")
#include "org/allbinary/game/score/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/game/score/PlayerQueue.h")
#include "org/allbinary/game/score/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/game/score/PlayerQueue.h")
#include "org/allbinary/game/score/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/game/score/PlayerQueue.h")
#include "org/allbinary/game/score/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/game/state/PlayerQueue.h")
#include "org/allbinary/game/state/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/game/state/PlayerQueue.h")
#include "org/allbinary/game/state/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/graphics/PlayerQueue.h")
#include "org/allbinary/graphics/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/graphics/PlayerQueue.h")
#include "org/allbinary/graphics/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/graphics/canvas/transition/progress/PlayerQueue.h")
#include "org/allbinary/graphics/canvas/transition/progress/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/graphics/canvas/transition/progress/PlayerQueue.h")
#include "org/allbinary/graphics/canvas/transition/progress/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/graphics/color/PlayerQueue.h")
#include "org/allbinary/graphics/color/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/graphics/color/PlayerQueue.h")
#include "org/allbinary/graphics/color/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/command/PlayerQueue.h")
#include "org/allbinary/graphics/displayable/command/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/event/PlayerQueue.h")
#include "org/allbinary/graphics/displayable/event/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/event/PlayerQueue.h")
#include "org/allbinary/graphics/displayable/event/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/event/PlayerQueue.h")
#include "org/allbinary/graphics/displayable/event/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/screen/PlayerQueue.h")
#include "org/allbinary/graphics/displayable/screen/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/graphics/form/PlayerQueue.h")
#include "org/allbinary/graphics/form/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/graphics/form/PlayerQueue.h")
#include "org/allbinary/graphics/form/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/graphics/form/PlayerQueue.h")
#include "org/allbinary/graphics/form/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/graphics/form/PlayerQueue.h")
#include "org/allbinary/graphics/form/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/graphics/form/PlayerQueue.h")
#include "org/allbinary/graphics/form/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/graphics/form/item/PlayerQueue.h")
#include "org/allbinary/graphics/form/item/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/graphics/form/item/PlayerQueue.h")
#include "org/allbinary/graphics/form/item/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/graphics/opengles/PlayerQueue.h")
#include "org/allbinary/graphics/opengles/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/graphics/opengles/PlayerQueue.h")
#include "org/allbinary/graphics/opengles/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/graphics/opengles/PlayerQueue.h")
#include "org/allbinary/graphics/opengles/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/graphics/opengles/PlayerQueue.h")
#include "org/allbinary/graphics/opengles/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/graphics/paint/PlayerQueue.h")
#include "org/allbinary/graphics/paint/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/graphics/paint/PlayerQueue.h")
#include "org/allbinary/graphics/paint/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/graphics/paint/PlayerQueue.h")
#include "org/allbinary/graphics/paint/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/graphics/paint/PlayerQueue.h")
#include "org/allbinary/graphics/paint/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/graphics/paint/PlayerQueue.h")
#include "org/allbinary/graphics/paint/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/graphics/paint/PlayerQueue.h")
#include "org/allbinary/graphics/paint/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/input/motion/gesture/observer/PlayerQueue.h")
#include "org/allbinary/input/motion/gesture/observer/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/logic/communication/log/PlayerQueue.h")
#include "org/allbinary/logic/communication/log/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/logic/communication/log/PlayerQueue.h")
#include "org/allbinary/logic/communication/log/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/logic/math/PlayerQueue.h")
#include "org/allbinary/logic/math/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/logic/string/PlayerQueue.h")
#include "org/allbinary/logic/string/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/logic/string/PlayerQueue.h")
#include "org/allbinary/logic/string/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/logic/system/os/PlayerQueue.h")
#include "org/allbinary/logic/system/os/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/logic/system/security/licensing/PlayerQueue.h")
#include "org/allbinary/logic/system/security/licensing/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/logic/system/security/licensing/PlayerQueue.h")
#include "org/allbinary/logic/system/security/licensing/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/logic/system/security/licensing/PlayerQueue.h")
#include "org/allbinary/logic/system/security/licensing/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/logic/system/security/licensing/PlayerQueue.h")
#include "org/allbinary/logic/system/security/licensing/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/logic/util/event/PlayerQueue.h")
#include "org/allbinary/logic/util/event/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/logic/util/event/PlayerQueue.h")
#include "org/allbinary/logic/util/event/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/media/audio/PlayerQueue.h")
#include "org/allbinary/media/audio/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/media/audio/PlayerQueue.h")
#include "org/allbinary/media/audio/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/media/audio/PlayerQueue.h")
#include "org/allbinary/media/audio/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/media/audio/PlayerQueue.h")
#include "org/allbinary/media/audio/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/string/PlayerQueue.h")
#include "org/allbinary/string/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/thread/PlayerQueue.h")
#include "org/allbinary/thread/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/thread/PlayerQueue.h")
#include "org/allbinary/thread/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/thread/PlayerQueue.h")
#include "org/allbinary/thread/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/time/PlayerQueue.h")
#include "org/allbinary/time/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/util/PlayerQueue.h")
#include "org/allbinary/util/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/util/PlayerQueue.h")
#include "org/allbinary/util/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/util/PlayerQueue.h")
#include "org/allbinary/util/PlayerQueue.h"
#endif


static constexpr int32_t DemoCanvas_id_ = 0;
static const char* DemoCanvas_BOT_GAME_STATS = "Bot Game Statistics: ";


void DemoCanvas_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation DemoCanvas

- (void) initFields {
    self->basicColorFactory = [BasicColorFactory getInstance];
    self->myCommandsFactory = [MyCommandsFactory getInstance];
    self->gameAdStateFactory = [GameAdStateFactory getInstance];
    self->gameInputStrings = [GameInputStrings getInstance];
    self->gameStateFactory = [GameStateFactory getInstance];
    self->threadFactoryUtil = [ThreadFactoryUtil getInstance];
    self->formUtil = [FormUtil getInstance];
    self->fullscreenPaintable = [FullScreenPaintableFactory getInstance]->paintable;
    self->basicGameDemoPaintable = [StatePaintableFactory getInstance];
    self->specialAnimationInterface = [SpecialAnimation getInstance];
    self->paintedSpecialAnimationInterface = [SpecialAnimation getInstance];
    self->fullScreenUtil = [FullScreenUtil getInstance];
    self->gameCanvas = [NullGameCanvas getInstance];
    self->highScoresHelper = [((HighScoresHelper*) [HighScoresHelper alloc]) init];
    self->realHighScoresPaintable = [((HighScoresPaintable*) [HighScoresPaintable alloc]) init];
    self->highScoresPaintable = [NullPaintable getInstance];
    self->state = 0;
    self->canvasThread = (NullThread_staticInit(), NullThread_NULL_THREAD);
    self->timeDelayHelper = [((TimeDelayHelper*) [TimeDelayHelper alloc]) init:6000];
    self->basicColor = self->basicColorFactory->RED;
    
    
    self->menuInputProcessor = [NoMenuInputProcessor getInstance];
    self->menuForm = [ScrollSelectionForm getNullScrollSelectionForm];
    
    self->initialized = false;
    
    self->defaultPaintableInterface = [NullPaintable getInstance];
    self->paintableInterface = [NullPaintable getInstance];
    
    self->progressPaintable = [ProgressCanvasFactory getLazyInstance];
    self->tempWait = [NullWaitGameRunnable getInstance]->WAIT;
    self->inputToGameKeyMapping = [[[PlatformInputMappingFactory getInstance] getPersistentInputMappingInstance] getInputMapping];
    self->gameRunnable = [NullWaitGameRunnable getInstance];
    self->isSingleKeyRepeatableProcessing = [[Features getInstance] isFeature:[InputFeatureFactory getInstance]->SINGLE_KEY_REPEAT_PRESS];
    self->NONE = [GameKeyFactory getInstance]->NONE;
    self->gameKeyEventFactory = [GameKeyEventFactory getInstance];
    self->lastKeyNotMapped = -1;
    self->SET_STATE = "setState";
    self->baseGameStatistics = [GameStatisticsFactory getInstance];
}


- (instancetype) init:(AbeClientInformationInterface*)abeClientInformation :(CommandListener*)commandListener :(HighScoresFactoryInterface*)highScoresFactoryInterface :(Paintable*)paintable :(InitUpdatePaintable*)overlayPaintable :(BasicBuildGameInitializerFactory*)gameInitializationInterfaceFactoryInterface :(bool)isContinue {
        self = [super init:commandListener :[CurrentDisplayableFactory getInstance]->DEFAULT_CHILD_NAME_LIST :true];
        [self initFields];
        self->abeClientInformation = abeClientInformation;
        [self setWait:[NullWaitGameRunnable getInstance]->WAIT];
        self->gameInitializationInterfaceFactoryInterface = gameInitializationInterfaceFactoryInterface;
        [[GameInitializationUtil getInstance] initDemo:abeClientInformation :self :gameInitializationInterfaceFactoryInterface];
        [[ResizableListenerHandler getInstance] fireEvent:false];
        self->overlayPaintable = overlayPaintable;
        self->highScoresFactoryInterface = highScoresFactoryInterface;
        [self setDefaultPaintableInterface:paintable];
        [self setPaintableInterface:[self getDefaultPaintableInterface]];
        if (isContinue) {
            [self addCommand:[GameCommandsFactory getInstance]->CONTINUE_COMMAND];
        }
        if ([[ChangedGameFeatureListener getInstance] isChangedFeature:[GameFeatureFactory getInstance]->SOUND]) {
            [self mediaInit];
        }
        self->demoGameRunnable = [((DemoGameStartupRunnable*) [DemoGameStartupRunnable alloc]) init:self];
        [[DisplayChangeEventHandler getInstance] addListenerInterface:self];
    return self;
}


- (void) onEvent:(AllBinaryEventObject*)eventObject {
        [ForcedLogUtil log:[EventStrings getInstance]->PERFORMANCE_MESSAGE :self];
}


- (void) onDisplayChangeEvent:(DisplayChangeEvent*)displayChangeEvent {
        JAVA_TRY {
            [self->logUtil putF:[[[[((StringMaker*) [StringMaker alloc]) init] append:self->commonLabels->START_LABEL] append:[self->displayInfo toString]] toString] :self :self->canvasStrings->ON_DISPLAY_CHANGE_EVENT];
            ScrollSelectionForm* scrollSelectionForm = [self getMenuForm];
            if (scrollSelectionForm != nil) {
                FormType* formType = [[FormTypeFactory getInstance] getFormType];
                Rectangle* rectangle = [self->formUtil createFormRectangle];
                [scrollSelectionForm init_:rectangle :formType];
            }
            [self->overlayPaintable init_];
        } JAVA_CATCH(Exception, e) {
            [self->logUtil put:self->commonStrings->EXCEPTION :self :self->canvasStrings->ON_DISPLAY_CHANGE_EVENT :e];
        } JAVA_END_TRY;
}


- (id*) getCustomCommands {
        GameCommandsFactory* gameCommandsFactory = [GameCommandsFactory getInstance];
        if ([J2MEUtil isHTML]) {
            id* commandArray = ((id*) java_array_from(sizeof(id), sizeof((id[]){ gameCommandsFactory->START_COMMAND, [HighScoreCommands getInstance]->DISPLAY, (GameInputMappingCanvas_staticInit(), GameInputMappingCanvas_DISPLAY), gameCommandsFactory->DISPLAY_ABOUT }) / sizeof(id), (id[]){ gameCommandsFactory->START_COMMAND, [HighScoreCommands getInstance]->DISPLAY, (GameInputMappingCanvas_staticInit(), GameInputMappingCanvas_DISPLAY), gameCommandsFactory->DISPLAY_ABOUT }));
            return commandArray;
        } else {
            BasicArrayList* commandList = [((BasicArrayListD*) [BasicArrayListD alloc]) init];
            [commandList add:gameCommandsFactory->START_COMMAND];
            InApplicationPurchaseFactory* inApplicationPurchaseFactory = [InApplicationPurchaseFactory getInstance];
            if ([inApplicationPurchaseFactory isEnabled]) {
                BasicArrayList* list = [[LockableFeatureFactory getInstance] getList];
                if ([list size] > 0 && ![inApplicationPurchaseFactory isPurchased:((LockableFeature*) [list get:0])]) {
                    [commandList add:gameCommandsFactory->BUY_COMMAND];
                }
            }
            [commandList add:[HighScoreCommands getInstance]->DISPLAY];
            JAVA_TRY {
                bool isOverScan = [[[OperatingSystemFactory getInstance] getOperatingSystemInstance] isOverScan];
                if ((SWTUtil_staticInit(), SWTUtil_isSWT)) {
                    [commandList add:(GameInputMappingCanvas_staticInit(), GameInputMappingCanvas_DISPLAY)];
                } else if (!isOverScan) {
                    [commandList add:gameCommandsFactory->DISPLAY_OPTIONS];
                    [commandList add:gameCommandsFactory->DISPLAY_LOAD_FORM];
                    [commandList add:(GameInputMappingCanvas_staticInit(), GameInputMappingCanvas_DISPLAY)];
                }
            } JAVA_CATCH(Exception, e) {
            } JAVA_END_TRY;
            [commandList add:gameCommandsFactory->DISPLAY_ABOUT];
            id* commandArray = [commandList toArray];
            return commandArray;
        }
}


- (void) initCommands:(CommandListener*)cmdListener {
        [self removeAllCommands];
        id* commandArray = [self getCustomCommands];
        int32_t size = java_array_length(commandArray);
        for (int32_t index = 0; index < size; index++) {
            [self addCommand:((Command*) commandArray[index])];
        }
        [CustomGameMenuUtil add:self];
        [self setCommandListener:cmdListener];
}


// throws Exception
- (void) initPostPaint {
}


// throws Exception
- (void) mediaInit {
        [AllBinaryMediaManager init_:[EarlySoundsFactory getInstance]];
}


- (void) itemStateChanged:(Item*)item {
        [ForcedLogUtil log:self->commonStrings->NOT_IMPLEMENTED :self];
}


// throws Exception
- (void) initMenu {
        [self close];
        CommandTextItemArrayFactory* commandTextItemArrayFactory = [[DemoLimitedCommandTextItemArrayFactory getInstance] getCommandTextItemArrayFactory];
        ABCustomItem** items = [commandTextItemArrayFactory getInstance:[self getCommandStack] :self->basicColorFactory->BLACK :self->basicColorFactory->WHITE];
        FormType* formType = [[FormTypeFactory getInstance] getFormType];
        Rectangle* rectangle = [self->formUtil createFormRectangle];
        [PreLogUtil put:[[[[((StringMaker*) [StringMaker alloc]) init] append:self->commonLabels->START_LABEL] append:[self->displayInfo toString]] toString] :self :"initMenu"];
        ScrollSelectionForm* scrollSelectionForm = [CommandCurrentSelectionFormFactory getInstance:[StringUtil getInstance]->EMPTY_STRING :items :rectangle :formType :15 :true :self->basicColorFactory->BLACK :self->basicColorFactory->WHITE];
        [self setMenuForm:scrollSelectionForm];
        FormType* formType2 = [[FormTypeFactory getInstance] getFormType];
        Rectangle* rectangle2 = [self->formUtil createFormRectangle];
        [scrollSelectionForm init_:rectangle2 :formType2];
        if ([self getMenuForm] != [ScrollSelectionFormNoneFactory getInstance]) {
            [self setMenuInputProcessor:[((CommandFormInputProcessor*) [CommandFormInputProcessor alloc]) init:[((BasicArrayListD*) [BasicArrayListD alloc]) init] :-1 :self :[self getMenuForm]]];
        }
        [self open];
}


- (void) open {
        [[BasicMotionGesturesHandler getInstance] addListenerInterface:[self getMenuInputProcessor]];
        [[GameKeyEventHandler getInstance] addListener:[self getMenuInputProcessor]];
}


- (void) close {
        [[BasicMotionGesturesHandler getInstance] removeListener:[self getMenuInputProcessor]];
        [[GameKeyEventHandler getInstance] removeListener:[self getMenuInputProcessor]];
}


- (int32_t) getSourceId {
        return DemoCanvas_id_;
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
        [self addGameKeyEvent:keyCode :false];
}


- (void) keyReleasedByDevice:(int32_t)keyCode :(int32_t)deviceId {
        [self removeGameKeyEvent:keyCode :false];
}


- (void) keyRepeatedByDevice:(int32_t)keyCode :(int32_t)deviceId {
        if (self->isSingleKeyRepeatableProcessing) {
            [self addGameKeyEvent:keyCode :true];
        }
}


- (void) addGameKeyEvent:(int32_t)keyCode :(bool)repeated {
        JAVA_TRY {
            GameKey* gameKey = [self->inputToGameKeyMapping getInstanceForCanvas:self :keyCode];
            if (gameKey != self->NONE) {
                GameKeyEvent* gameKeyEvent = [self->gameKeyEventFactory getInstanceForInput:self :gameKey];
                [[DownGameKeyEventHandler getInstance] fireEvent:gameKeyEvent];
            } else {
                if (self->lastKeyNotMapped != keyCode) {
                    self->lastKeyNotMapped = keyCode;
                    [self->logUtil putF:[[[[((StringMaker*) [StringMaker alloc]) init] append:self->gameInputStrings->NO_KEY] appendint:keyCode] toString] :self :self->gameInputStrings->ADD_KEY_EVENT];
                }
            }
        } JAVA_CATCH(Exception, e) {
            [self->logUtil put:"Key Event Error" :self :self->gameInputStrings->ADD_KEY_EVENT :e];
        } JAVA_END_TRY;
}


- (void) removeGameKeyEvent:(int32_t)keyCode :(bool)repeated {
        JAVA_TRY {
            GameKey* gameKey = [self->inputToGameKeyMapping getInstanceForCanvas:self :keyCode];
            if (gameKey != self->NONE) {
                GameKeyEvent* gameKeyEvent = [self->gameKeyEventFactory getInstanceForInput:self :gameKey];
                [[UpGameKeyEventHandler getInstance] fireEvent:gameKeyEvent];
            } else {
                [self->logUtil putF:[[[[((StringMaker*) [StringMaker alloc]) init] append:self->gameInputStrings->NO_KEY] appendint:keyCode] toString] :self :self->gameInputStrings->REMOVE_KEY_EVENT];
            }
        } JAVA_CATCH(Exception, e) {
            [self->logUtil put:"Key Event Error" :self :self->gameInputStrings->REMOVE_KEY_EVENT :e];
        } JAVA_END_TRY;
}


// synchronized
- (void) pause {
        [self close];
        [self setPaused:true];
        self->gameRunnable = [NullWaitGameRunnable getInstance];
        [self->gameCanvas pause];
}


// synchronized
- (void) unPause {
        [self open];
        [self->gameCanvas unPause];
        self->gameRunnable = self->gameCanvas->gameRunnable;
        [self setPaused:false];
}


- (bool) isPausable {
        if ([[CurrentDisplayableFactory getInstance] getUsedRunnable] == [NullWaitGameRunnable getInstance]) {
            return true;
        } else {
            return false;
        }
}


- (bool) isGameOver {
        [self->logUtil putF:[[[[((StringMaker*) [StringMaker alloc]) init] append:self->commonStrings->NOT_IMPLEMENTED] append:" since not a game"] toString] :self :"isGameOver"];
        return false;
}


// throws Exception
- (void) setLoadStateHashtable:(ABHashtable*)hashtable {
        [self->logUtil putF:"Trying to continue a demo lol - only continue a game canvas not the demo" :self :"setLoadStateHashtable"];
}


// throws Exception
- (ABHashtable*) getLoadStateHashtable {
        [self->logUtil putF:"Trying to continue a demo lol - only continue a game canvas not the demo" :self :"getLoadStateHashtable"];
        return self->stdUtil->NULL_TABLE;
}


// throws Exception
- (ABHashtable*) getCurrentStateHashtable {
        [self->logUtil putF:"Trying to save the AI lol" :self :"getCurrentStateHashtable"];
        return self->stdUtil->NULL_TABLE;
}


- (void) setHighScoreSubmitted:(bool)isNotUsed {
}


- (void) paint:(Graphics*)graphics {
        [self->paintableInterface paint:graphics];
        [self->paintedSpecialAnimationInterface paintXY:graphics :0 :0];
        [self->highScoresPaintable paint:graphics];
        [[self getBasicGameDemoPaintable] paint:graphics];
        [self->overlayPaintable paint:graphics];
        [self->fullscreenPaintable paint:graphics];
        [self->progressPaintable paint:graphics];
}


- (void) paintThreed:(Graphics*)graphics {
        [self->paintableInterface paintThreed:graphics];
        [self->paintedSpecialAnimationInterface paintThreedXYZ:graphics :0 :0 :0];
}


// synchronized
- (void) processGameOver {
        [self->logUtil putF:"Not Implemented since not a game" :self :"setGameOver"];
}


- (void) demoStateChange {
        int32_t newState = self->state + 1;
        if (newState > 2) {
            newState = 0;
        } else if (newState == 2) {
            if (![self->highScoresHelper isAnyHighScores]) {
                newState = 0;
            } else {
                HighScores* highScores = [self->highScoresHelper getNextHighScores];
                if (highScores == [NullHighScoresSingletonFactory getInstance]) {
                    newState = 0;
                } else {
                    [[self getRealHighScoresPaintable] setHighScores:highScores];
                }
            }
        }
        [self setState:newState];
        [self updateDemoState];
}


- (void) updateDemoState {
        [PreLogUtil put:[[[SmallIntegerSingletonFactory getInstance] createInstance:self->state] toString] :self :self->SET_STATE];
        [[self getBasicGameDemoPaintable] setState:self->state];
        if (self->state == 0) {
            self->highScoresPaintable = [NullPaintable getInstance];
            self->paintedSpecialAnimationInterface = [self getSpecialAnimationInterface];
            if (![self->demoGameRunnable isRunning] && [self->gameCanvas isInitialized]) {
                [[self getSpecialAnimationInterface] reset];
            }
        } else if (self->state == 1) {
            self->paintedSpecialAnimationInterface = [SpecialAnimation getInstance];
        } else if (self->state == 2) {
            self->highScoresPaintable = [self getRealHighScoresPaintable];
        }
        GameAdState* gameAdState = [self->gameAdStateFactory getCurrentInstance];
        [gameAdState processPageAdState];
}


// throws Exception
- (int32_t) getNextRandom {
        java_throw(java_exception_new("Exception", self->commonStrings->NOT_IMPLEMENTED));
}


// throws Exception
- (AllBinaryGameLayerManager*) createGameLayerManager:(int32_t)randomValue {
        java_throw(java_exception_new("Exception", self->commonStrings->NOT_IMPLEMENTED));
}


// throws Exception
- (GameCanvasRunnableInterface*) createRunnable:(int32_t)randomLevel {
        java_throw(java_exception_new("Exception", self->commonStrings->NOT_IMPLEMENTED));
}


// throws Exception
- (void) create {
        [PreLogUtil put:self->commonStrings->START :self :"create"];
        self->highScoresPaintable = [NullPaintable getInstance];
        int32_t randomLevel = [self getNextRandom];
        self->gameCanvas = ((AllBinaryGameCanvas*) [self createRunnable:randomLevel]);
        self->basicColor = [[self->gameCanvas getLayerManager] getForegroundBasicColor];
        [[self getRealHighScoresPaintable] setBasicColorP:self->basicColor];
        [self->gameCanvas setGameCanvasStartListener:self];
        GameInfo* gameInfo = [[self->gameCanvas getLayerManager] getGameInfo];
        [[self getHighScoresFactoryInterface] fetchHighScores:gameInfo :self->highScoresHelper];
}


// throws Exception
- (void) start {
        AllBinaryGameCanvas* gameCanvas = self->gameCanvas;
        [PreLogUtil put:[[[[((StringMaker*) [StringMaker alloc]) init] append:"Game Thread in DemoCanvas: "] append:[self->stringUtil toString:gameCanvas]] toString] :self :self->commonStrings->START];
        self->canvasThread = [self->threadFactoryUtil getInstanceGameCanvasRunnable:gameCanvas];
        [self->gameCanvas setThread:self->canvasThread];
        [self->threadFactoryUtil start:self->canvasThread];
        if ([self getWait] == [NullWaitGameRunnable getInstance]->WAIT) {
            [self setWait:[self getTempWait]];
        }
}


- (void) preDemoProcess {
        if (![self->gameCanvas isInitialized] || [self->gameCanvas getTitle] == (NullGameCanvas_staticInit(), NullGameCanvas_NO_GAME)) {
            if ([AllBinaryMediaManager update]) {
                if (![[PrimaryPlayerQueueFactory getInstance] process]) {
                    [[SecondaryPlayerQueueFactory getInstance] process];
                }
            }
        }
        [self->overlayPaintable update];
}


// throws Exception
- (void) process {
        [super process];
        [[self getMenuInputProcessor] processInputList];
        [self preDemoProcess];
        if (self->state == 0) {
            IndexedAnimationBehavior* indexedAnimationBehavior = (((IndexedAnimationBehavior*) [[self getSpecialAnimationInterface] getAnimationBehavior]));
            if (indexedAnimationBehavior->loopIndex < 1) {
                [self->timeDelayHelper setStartTimeTNT];
            }
            DemoGameMidlet* demoGameMidlet = ((DemoGameMidlet*) [self getCustomCommandListener]);
            if (self->gameCanvas != [NullGameCanvas getInstance] && [self->gameCanvas isGameOver]) {
                [self stopGameDemo];
                int32_t randomLevel = [self getNextRandom];
                GameInfo* gameInfo = [[self->gameCanvas getLayerManager] getGameInfo];
                [gameInfo setCurrentLevel:randomLevel];
                [self->gameCanvas setGameOver:false];
                [self start];
            } else if (self->gameCanvas == [NullGameCanvas getInstance] && [demoGameMidlet isReady]) {
                if (![self->demoGameRunnable isRunning]) {
                    [self startDemoGame];
                    [self->demoGameRunnable setRunning:true];
                    Thread* thread = [self->threadFactoryUtil getInstanceForRunnable:self->demoGameRunnable];
                    [self->demoGameRunnable setThread:thread];
                    [self->threadFactoryUtil start:thread];
                }
            }
        }
}


// throws Exception
- (void) startDemoGame {
        [DemoCanvasProgressUtil showProgress:self];
}


// throws Exception
- (void) stopGameDemo {
        if (self->gameCanvas != [NullGameCanvas getInstance]) {
            [self->logUtil putF:"Set Running False" :self :"stopGameDemo"];
            [self->gameCanvas setRunning:false];
        }
        [[ThreadUtil getInstance] join:self->canvasThread];
}


- (void) showGamePaintable {
        const char* METHOD_NAME = "showGamePaintable";
        [PreLogUtil put:self->commonStrings->START :self :METHOD_NAME];
        bool isDefault = [J2MEUtil isHTML];
        if (self->gameCanvas != [NullGameCanvas getInstance] && ([self->gameCanvas isRunning] || isDefault || (SWTUtil_staticInit(), SWTUtil_isSWT)) && !([self->gameCanvas getType] == (NullGameCanvas_staticInit(), NullGameCanvas_TYPE))) {
            self->gameRunnable = self->gameCanvas->gameRunnable;
            [PreLogUtil put:"Showing Game" :self :METHOD_NAME];
            [self setPaintableInterface:self->gameCanvas];
        } else {
            self->gameRunnable = [NullWaitGameRunnable getInstance];
            [PreLogUtil put:"Not Showing Game" :self :METHOD_NAME];
            [self setPaintableInterface:[self getDefaultPaintableInterface]];
        }
}


- (bool) isReadyForStateChange {
        return ![self->demoGameRunnable isRunning] && [self->gameCanvas isInitialized];
}


// throws Exception
- (void) processGame {
        [self->gameRunnable run];
        if (![self->specialAnimationInterface isComplete] && [self isReadyForStateChange]) {
            [self->specialAnimationInterface nextFrame];
        }
        if ([self->timeDelayHelper isTimeTNT] && [self isReadyForStateChange]) {
            [self demoStateChange];
        } else {
            [self process];
        }
}


- (void) run {
        [self->logUtil putF:self->commonStrings->START_RUNNABLE :self :self->commonStrings->RUN];
        JAVA_TRY {
            ProgressCanvas* progressCanvas = [ProgressCanvasFactory getInstance];
            Features* features = [Features getInstance];
            OpenGLFeatureFactory* openGLFeatureFactory = [OpenGLFeatureFactory getInstance];
            [progressCanvas addNormalPortion:50 :"Demo Thread"];
            [self setCurrentThread];
            [self setRunning:true];
            if ([features isFeature:[MainFeatureFactory getInstance]->LOAD_ONDEMAND]) {
                [progressCanvas end];
            } else {
                [progressCanvas addNormalPortion:50 :"Demo Thread Running"];
            }
            [self->fullScreenUtil initOnRun:self :[self getCustomCommandListener]];
            [self initMenu];
            [self initPostPaint];
            [self updateDemoState];
            if ([features isDefault:openGLFeatureFactory->OPENGL_AS_GAME_THREAD]) {
                while (self->gameCanvas == [NullGameCanvas getInstance] || ![self->gameCanvas isInitialized]) {
                    [self->loopTimeHelper setStartTimeTNT];
                    [self processGame];
                    [self processLoopSleep];
                }
                DemoGameRunnable* demoGameRunnable = [((DemoGameRunnable*) [DemoGameRunnable alloc]) init:self];
                CurrentDisplayableFactory* currentDisplayableFactory = [CurrentDisplayableFactory getInstance];
                [currentDisplayableFactory setRunnable:demoGameRunnable];
                [currentDisplayableFactory setMyCanvas:self];
                [[OpenGLThreadUtil getInstance] onResume];
            }
            if ([features isDefault:openGLFeatureFactory->OPENGL_AS_GAME_THREAD] || [J2MEUtil isHTML]) {
                DemoGameRunnable* demoGameRunnable = [((DemoGameRunnable*) [DemoGameRunnable alloc]) init:self];
                CurrentDisplayableFactory* currentDisplayableFactory = [CurrentDisplayableFactory getInstance];
                [currentDisplayableFactory setRunnable:demoGameRunnable];
                [currentDisplayableFactory setMyCanvas:self];
            } else {
                while ([self isRunning]) {
                    [self run3];
                }
                [self end];
            }
        } JAVA_CATCH(Exception, e) {
            [self->logUtil put:self->commonStrings->EXCEPTION :self :self->commonStrings->RUN :e];
        } JAVA_END_TRY;
        [self->logUtil putF:self->commonStrings->END_RUNNABLE :self :self->commonStrings->RUN];
}


// throws Exception
- (void) run3 {
        [self->loopTimeHelper setStartTimeTNT];
        [self processGame];
        [self processLoopSleep];
}


- (void) setRunning:(bool)running {
        [super setRunning:running];
        JAVA_TRY {
            Features* features = [Features getInstance];
            OpenGLFeatureFactory* openGLFeatureFactory = [OpenGLFeatureFactory getInstance];
            if (running) {
            } else {
                if (([features isDefault:openGLFeatureFactory->OPENGL] || [J2MEUtil isHTML]) || (SWTUtil_staticInit(), SWTUtil_isSWT)) {
                    CurrentDisplayableFactory* currentDisplayableFactory = [CurrentDisplayableFactory getInstance];
                    [currentDisplayableFactory clearRunnable];
                    [self end];
                }
            }
        } JAVA_CATCH(Exception, e) {
            [self->logUtil put:self->commonStrings->EXCEPTION :self :self->SET_RUNNING :e];
        } JAVA_END_TRY;
}


// throws Exception
- (void) end {
        ProgressCanvas* progressCanvas = [ProgressCanvasFactory getInstance];
        Features* features = [Features getInstance];
        [self->baseGameStatistics add:[[[[[((StringMaker*) [StringMaker alloc]) init] append:DemoCanvas_BOT_GAME_STATS] append:[self->baseGameStatistics toString]] append:[CommonSeps getInstance]->NEW_LINE] toString]];
        [self->baseGameStatistics init_];
        if ([features isFeature:[MainFeatureFactory getInstance]->LOAD_ONDEMAND]) {
            [progressCanvas start];
        }
        [self->logUtil putF:"Demo End" :self :self->commonStrings->RUN];
        [self close];
        [[DisplayChangeEventHandler getInstance] removeListener:self];
        [self stopGameDemo];
}


- (void) setGameState:(GameState*)gameState {
}


- (GameState*) getGameState {
        return self->gameStateFactory->PLAYING_GAME_STATE;
}


- (AllBinaryGameCanvas*) getGameCanvasRunnableInterface {
        return self->gameCanvas;
}


- (bool) isDemoLoading {
        AllBinaryGameCanvas* gameCanvas = self->gameCanvas;
        if (gameCanvas == [NullGameCanvas getInstance]) {
            return true;
        } else if ([gameCanvas isInitialized]) {
            return false;
        }
        return true;
}


- (int32_t) getState {
        return self->state;
}


- (void) setState:(int32_t)state {
        self->state = state;
}


- (bool) isHighScoreSubmitted {
        [self->logUtil putF:"Wow the AI got a high score!" :self :"isHighScoreSubmitted"];
        return false;
}


- (HighScoresPaintable*) getRealHighScoresPaintable {
        return self->realHighScoresPaintable;
}


- (void) setSpecialAnimationInterface:(SpecialAnimation*)specialAnimationInterface {
        [specialAnimationInterface setFrame:0];
        self->specialAnimationInterface = specialAnimationInterface;
}


- (SpecialAnimation*) getSpecialAnimationInterface {
        return self->specialAnimationInterface;
}


- (void) setPaintableInterface:(PaintableInterface*)paintableInterface {
        self->paintableInterface = paintableInterface;
}


- (PaintableInterface*) getPaintableInterface {
        return self->paintableInterface;
}


- (void) setDefaultPaintableInterface:(Paintable*)defaultPaintableInterface {
        self->defaultPaintableInterface = defaultPaintableInterface;
}


- (Paintable*) getDefaultPaintableInterface {
        return self->defaultPaintableInterface;
}


- (HighScoresFactoryInterface*) getHighScoresFactoryInterface {
        return self->highScoresFactoryInterface;
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


- (bool) isInitialized {
        return self->initialized;
}


- (Paintable*) getOverlayPaintable {
        return self->overlayPaintable;
}


- (void) setBasicGameDemoPaintable:(StatePaintable*)basicGameDemoPaintable {
        self->basicGameDemoPaintable = basicGameDemoPaintable;
}


- (StatePaintable*) getBasicGameDemoPaintable {
        return self->basicGameDemoPaintable;
}


- (void) setTempWait:(int32_t)tempWait {
        self->tempWait = tempWait;
}


- (int32_t) getTempWait {
        return self->tempWait;
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


- (BasicBuildGameInitializerFactory*) getGameInitializationInterfaceFactoryInterface {
        return self->gameInitializationInterfaceFactoryInterface;
}


- (int32_t) getType {
        return DemoCanvas_TYPE;
}


- (const char*) getTitle {
        return [super getTitle];
}


- (bool) isPaused {
        return [super isPaused];
}

@end

