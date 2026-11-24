// Generated Code Do Not Modify
#include "org/allbinary/game/displayable/canvas/StartCanvas.h"
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
#include "org/allbinary/game/score/HighScoresPaintable.h"
#include "org/allbinary/game/score/NullHighScoresSingletonFactory.h"
#include "org/allbinary/game/state/GameState.h"
#include "org/allbinary/game/state/GameStateFactory.h"
#include "org/allbinary/graphics/Rectangle.h"
#include "org/allbinary/graphics/ResizableListenerHandler.h"
#include "org/allbinary/graphics/canvas/transition/progress/ProgressCanvas.h"
#include "org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory.h"
#include "org/allbinary/graphics/color/BasicColorFactory.h"
#include "org/allbinary/graphics/displayable/command/MyCommandsFactory.h"
#include "org/allbinary/graphics/displayable/event/DisplayChangeEvent.h"
#include "org/allbinary/graphics/displayable/event/DisplayChangeEventHandler.h"
#include "org/allbinary/graphics/form/FormType.h"
#include "org/allbinary/graphics/form/FormTypeFactory.h"
#include "org/allbinary/graphics/form/ScrollSelectionForm.h"
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
#include "org/allbinary/logic/system/os/OperatingSystemFactory.h"
#include "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.h"
#include "org/allbinary/logic/system/security/licensing/InApplicationPurchaseFactory.h"
#include "org/allbinary/logic/system/security/licensing/LockableFeature.h"
#include "org/allbinary/logic/system/security/licensing/LockableFeatureFactory.h"
#include "org/allbinary/logic/util/event/AllBinaryEventObject.h"
#include "org/allbinary/logic/util/event/EventStrings.h"
#include "org/allbinary/media/audio/AllBinaryMediaManager.h"
#include "org/allbinary/media/audio/EarlySoundsFactory.h"
#include "org/allbinary/string/CommonSeps.h"
#include "org/allbinary/time/TimeDelayHelper.h"
#include "org/allbinary/util/ABHashtable.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/util/BasicArrayListD.h"
#include "org/allbinary/game/displayable/canvas/GameCanvasRunnableInterface.h"
#include "org/allbinary/game/displayable/canvas/MenuListener.h"
#include "org/allbinary/game/displayable/canvas/FormUtil.h"
#include "org/allbinary/game/displayable/canvas/NoMenuInputProcessor.h"
#include "org/allbinary/game/displayable/canvas/BasicMenuInputProcessor.h"
#include "org/allbinary/game/displayable/canvas/NullWaitGameRunnable.h"
#include "org/allbinary/game/displayable/canvas/GameRunnable.h"
#include "org/allbinary/game/displayable/canvas/GameInputMappingCanvas.h"
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
#if __has_include("org/allbinary/graphics/form/PersistentInputMapping.h")
#include "org/allbinary/graphics/form/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/graphics/form/PersistentInputMapping.h")
#include "org/allbinary/graphics/form/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/graphics/form/PersistentInputMapping.h")
#include "org/allbinary/graphics/form/PersistentInputMapping.h"
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
#if __has_include("org/allbinary/string/PersistentInputMapping.h")
#include "org/allbinary/string/PersistentInputMapping.h"
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
#if __has_include("org/allbinary/game/input/PlatformInputMappingFactory.h")
#include "org/allbinary/game/input/PlatformInputMappingFactory.h"
#endif
#if __has_include("org/allbinary/graphics/opengles/CurrentDisplayableFactory.h")
#include "org/allbinary/graphics/opengles/CurrentDisplayableFactory.h"
#endif
#if __has_include("org/allbinary/game/init/GameInitializationUtil.h")
#include "org/allbinary/game/init/GameInitializationUtil.h"
#endif
#if __has_include("org/allbinary/graphics/ResizableListenerHandler.h")
#include "org/allbinary/graphics/ResizableListenerHandler.h"
#endif
#if __has_include("org/allbinary/game/commands/GameCommandsFactory.h")
#include "org/allbinary/game/commands/GameCommandsFactory.h"
#endif
#if __has_include("org/allbinary/game/configuration/event/ChangedGameFeatureListener.h")
#include "org/allbinary/game/configuration/event/ChangedGameFeatureListener.h"
#endif
#if __has_include("org/allbinary/game/configuration/feature/GameFeatureFactory.h")
#include "org/allbinary/game/configuration/feature/GameFeatureFactory.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/event/DisplayChangeEventHandler.h")
#include "org/allbinary/graphics/displayable/event/DisplayChangeEventHandler.h"
#endif
#if __has_include("org/allbinary/logic/util/event/EventStrings.h")
#include "org/allbinary/logic/util/event/EventStrings.h"
#endif
#if __has_include("org/allbinary/graphics/form/FormTypeFactory.h")
#include "org/allbinary/graphics/form/FormTypeFactory.h"
#endif
#if __has_include("org/allbinary/logic/system/security/licensing/LockableFeatureFactory.h")
#include "org/allbinary/logic/system/security/licensing/LockableFeatureFactory.h"
#endif
#if __has_include("org/allbinary/game/score/HighScoreCommands.h")
#include "org/allbinary/game/score/HighScoreCommands.h"
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
#if __has_include("org/allbinary/graphics/form/GenericOperatingSystem.h")
#include "org/allbinary/graphics/form/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/graphics/form/GenericOperatingSystem.h")
#include "org/allbinary/graphics/form/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/graphics/form/GenericOperatingSystem.h")
#include "org/allbinary/graphics/form/GenericOperatingSystem.h"
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
#if __has_include("org/allbinary/string/GenericOperatingSystem.h")
#include "org/allbinary/string/GenericOperatingSystem.h"
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
#if __has_include("org/allbinary/logic/system/os/OperatingSystemFactory.h")
#include "org/allbinary/logic/system/os/OperatingSystemFactory.h"
#endif
#if __has_include("org/allbinary/game/score/HighScoreCommands.h")
#include "org/allbinary/game/score/HighScoreCommands.h"
#endif
#if __has_include("org/allbinary/input/motion/gesture/observer/BasicMotionGesturesHandler.h")
#include "org/allbinary/input/motion/gesture/observer/BasicMotionGesturesHandler.h"
#endif
#if __has_include("org/allbinary/game/input/event/GameKeyEventHandler.h")
#include "org/allbinary/game/input/event/GameKeyEventHandler.h"
#endif
#if __has_include("org/allbinary/input/motion/gesture/observer/BasicMotionGesturesHandler.h")
#include "org/allbinary/input/motion/gesture/observer/BasicMotionGesturesHandler.h"
#endif
#if __has_include("org/allbinary/game/input/event/GameKeyEventHandler.h")
#include "org/allbinary/game/input/event/GameKeyEventHandler.h"
#endif
#if __has_include("org/allbinary/game/configuration/feature/InputFeatureFactory.h")
#include "org/allbinary/game/configuration/feature/InputFeatureFactory.h"
#endif
#if __has_include("org/allbinary/game/input/GameKeyFactory.h")
#include "org/allbinary/game/input/GameKeyFactory.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/game/input/event/DownGameKeyEventHandler.h")
#include "org/allbinary/game/input/event/DownGameKeyEventHandler.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/game/input/event/UpGameKeyEventHandler.h")
#include "org/allbinary/game/input/event/UpGameKeyEventHandler.h"
#endif
#if __has_include("org/allbinary/graphics/opengles/CurrentDisplayableFactory.h")
#include "org/allbinary/graphics/opengles/CurrentDisplayableFactory.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/graphics/paint/StatePaintable.h")
#include "org/allbinary/graphics/paint/StatePaintable.h"
#endif
#if __has_include("org/allbinary/game/score/HighScoresPaintable.h")
#include "org/allbinary/game/score/HighScoresPaintable.h"
#endif
#if __has_include("org/allbinary/logic/math/SmallIntegerSingletonFactory.h")
#include "org/allbinary/logic/math/SmallIntegerSingletonFactory.h"
#endif
#if __has_include("org/allbinary/graphics/paint/StatePaintable.h")
#include "org/allbinary/graphics/paint/StatePaintable.h"
#endif
#if __has_include("org/allbinary/animation/special/SpecialAnimation.h")
#include "org/allbinary/animation/special/SpecialAnimation.h"
#endif
#if __has_include("org/allbinary/animation/special/SpecialAnimation.h")
#include "org/allbinary/animation/special/SpecialAnimation.h"
#endif
#if __has_include("org/allbinary/game/configuration/feature/MainFeatureFactory.h")
#include "org/allbinary/game/configuration/feature/MainFeatureFactory.h"
#endif
#if __has_include("org/allbinary/graphics/opengles/OpenGLThreadUtil.h")
#include "org/allbinary/graphics/opengles/OpenGLThreadUtil.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/string/CommonSeps.h")
#include "org/allbinary/string/CommonSeps.h"
#endif
#if __has_include("org/allbinary/game/configuration/feature/MainFeatureFactory.h")
#include "org/allbinary/game/configuration/feature/MainFeatureFactory.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/event/DisplayChangeEventHandler.h")
#include "org/allbinary/graphics/displayable/event/DisplayChangeEventHandler.h"
#endif
#if __has_include("org/allbinary/graphics/opengles/OpenGLFeatureUtil.h")
#include "org/allbinary/graphics/opengles/OpenGLFeatureUtil.h"
#endif


static constexpr int32_t StartCanvas_id_ = 0;
static const char* StartCanvas_BOT_GAME_STATS = "Bot Game Statistics: ";

void StartCanvas_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation StartCanvas

- (void) initFields {
    self->basicColorFactory = [BasicColorFactory getInstance];
    self->features = [Features getInstance];
    self->openGLFeatureFactory = [OpenGLFeatureFactory getInstance];
    self->myCommandsFactory = [MyCommandsFactory getInstance];
    self->gameAdStateFactory = [GameAdStateFactory getInstance];
    self->gameStateFactory = [GameStateFactory getInstance];
    self->gameInputStrings = [GameInputStrings getInstance];
    self->formUtil = [FormUtil getInstance];
    self->basicGameDemoPaintable = [StatePaintableFactory getInstance];
    self->specialAnimationInterface = [SpecialAnimation getInstance];
    self->paintedSpecialAnimationInterface = [SpecialAnimation getInstance];
    self->fullScreenUtil = [FullScreenUtil getInstance];
    self->highScoresHelper = ((HighScoresHelper*) [((HighScoresHelper*) [HighScoresHelper alloc]) init]);
    self->realHighScoresPaintable = ((HighScoresPaintable*) [((HighScoresPaintable*) [HighScoresPaintable alloc]) init]);
    self->highScoresPaintable = [NullPaintable getInstance];
    self->state = 0;
    self->timeDelayHelper = ((TimeDelayHelper*) [((TimeDelayHelper*) [TimeDelayHelper alloc]) init:6000]);
    
    self->menuInputProcessor = [NoMenuInputProcessor getInstance];
    self->menuForm = [ScrollSelectionForm getNullScrollSelectionForm];
    
    self->initialized = false;
    self->defaultPaintableInterface = [NullPaintable getInstance];
    self->paintableInterface = [NullPaintable getInstance];
    
    self->tempWait = [NullWaitGameRunnable getInstance]->WAIT;
    self->inputToGameKeyMapping = [[[PlatformInputMappingFactory getInstance] getPersistentInputMappingInstance] getInputMapping];
    self->gameRunnable = [NullWaitGameRunnable getInstance];
    self->progressPaintable = [ProgressCanvasFactory getLazyInstance];
    self->isSingleKeyRepeatableProcessing = [self->features isFeature:[InputFeatureFactory getInstance]->SINGLE_KEY_REPEAT_PRESS];
    self->NONE = [GameKeyFactory getInstance]->NONE;
    self->gameKeyEventFactory = [GameKeyEventFactory getInstance];
    self->SET_STATE = "setState";
    self->baseGameStatistics = [GameStatisticsFactory getInstance];
}


- (instancetype) init:(AbeClientInformationInterface*)abeClientInformation :(CommandListener*)commandListener :(HighScoresFactoryInterface*)highScoresFactoryInterface :(Paintable*)paintable :(InitUpdatePaintable*)overlayPaintable :(BasicBuildGameInitializerFactory*)gameInitializationInterfaceFactoryInterface :(bool)isContinue {
        self = [super init:commandListener :[CurrentDisplayableFactory getInstance]->DEFAULT_CHILD_NAME_LIST :true];
        [self initFields];
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
        [[DisplayChangeEventHandler getInstance] addListenerInterface:self];
    return self;
}


- (void) onEvent:(AllBinaryEventObject*)eventObject {
        [ForcedLogUtil log:[EventStrings getInstance]->PERFORMANCE_MESSAGE :self];
}


- (void) onDisplayChangeEvent:(DisplayChangeEvent*)displayChangeEvent {
        JAVA_TRY {
            ScrollSelectionForm* scrollSelectionForm = [self getMenuForm];
            if (scrollSelectionForm != nil) {
                FormType* formType = [[FormTypeFactory getInstance] getFormType];
                Rectangle* rectangle = [self->formUtil createFormRectangle];
                [scrollSelectionForm initMethod:rectangle :formType];
            }
            [self->overlayPaintable initMethod];
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
            BasicArrayList* commandList = ((BasicArrayListD*) [((BasicArrayListD*) [BasicArrayListD alloc]) init]);
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
        [AllBinaryMediaManager initMethod:[EarlySoundsFactory getInstance]];
}


- (void) itemStateChanged:(Item*)item {
        [ForcedLogUtil log:self->commonStrings->NOT_IMPLEMENTED :self];
}


// throws Exception
- (void) initMenu {
        [self close];
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
        return StartCanvas_id_;
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
                [self->logUtil putF:[[[((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]) append:self->gameInputStrings->NO_KEY] appendint:keyCode] toString] :self :self->gameInputStrings->ADD_KEY_EVENT];
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
                [self->logUtil putF:[[[((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]) append:self->gameInputStrings->NO_KEY] appendint:keyCode] toString] :self :self->gameInputStrings->REMOVE_KEY_EVENT];
            }
        } JAVA_CATCH(Exception, e) {
            [self->logUtil put:"Key Event Error" :self :self->gameInputStrings->REMOVE_KEY_EVENT :e];
        } JAVA_END_TRY;
}


// synchronized
- (void) pause {
        [self close];
        [self setPaused:true];
}


// synchronized
- (void) unPause {
        [self open];
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
        [self->logUtil putF:[[[((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]) append:self->commonStrings->NOT_IMPLEMENTED] append:" since not a game"] toString] :self :"isGameOver"];
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
        [((id<PaintableInterface>) self->paintableInterface) paint:graphics];
        [self->paintedSpecialAnimationInterface paintXY:graphics :0 :0];
        [self->highScoresPaintable paint:graphics];
        [[self getBasicGameDemoPaintable] paint:graphics];
        [self->overlayPaintable paint:graphics];
        [((id<PaintableInterface>) self->progressPaintable) paint:graphics];
}


- (void) paintThreed:(Graphics*)graphics {
        [((id<PaintableInterface>) self->paintableInterface) paintThreed:graphics];
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
            [[self getSpecialAnimationInterface] reset];
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
- (void) createCanvas {
        self->highScoresPaintable = [NullPaintable getInstance];
        int32_t randomLevel = [self getNextRandom];
}


// throws Exception
- (void) start {
}


- (void) preDemoProcess {
        [self->overlayPaintable update];
}


// throws Exception
- (void) process {
        [[self getMenuInputProcessor] processInputList];
        [self preDemoProcess];
        if (self->state == 0) {
            IndexedAnimationBehavior* indexedAnimationBehavior = ((IndexedAnimationBehavior*) [[self getSpecialAnimationInterface] getAnimationBehavior]);
            if (indexedAnimationBehavior->loopIndex < 1) {
                [self->timeDelayHelper setStartTimeTNT];
            }
            DemoGameMidlet* demoGameMidlet = ((DemoGameMidlet*) [self getCustomCommandListener]);
        }
}


// throws Exception
- (void) startDemoGame {
}


// throws Exception
- (void) processGame {
        [self->gameRunnable run];
        [self->specialAnimationInterface nextFrame];
        [self process];
}


- (void) run {
        [self->logUtil putF:self->commonStrings->START_RUNNABLE :self :self->commonStrings->RUN];
        JAVA_TRY {
            ProgressCanvas* progressCanvas = [ProgressCanvasFactory getInstance];
            [progressCanvas addNormalPortion:50 :"Demo Thread"];
            [self setCurrentThread];
            [self setRunning:true];
            if ([self->features isFeature:[MainFeatureFactory getInstance]->LOAD_ONDEMAND]) {
                [progressCanvas end];
            } else {
                [progressCanvas addNormalPortion:50 :"Demo Thread Running"];
            }
            [self->fullScreenUtil initOnRun:self :[self getCustomCommandListener]];
            [self initMenu];
            [self initPostPaint];
            [self updateDemoState];
            if ([self->features isDefault:self->openGLFeatureFactory->OPENGL_AS_GAME_THREAD]) {
                [[OpenGLThreadUtil getInstance] onResume];
            }
            if ([self->features isDefault:self->openGLFeatureFactory->OPENGL_AS_GAME_THREAD] || [J2MEUtil isHTML]) {
            } else {
                while ([self isRunning]) {
                    [self->loopTimeHelper setStartTimeTNT];
                    [self processGame];
                    [self processLoopSleep];
                }
                [self end];
            }
        } JAVA_CATCH(Exception, e) {
            [self->logUtil put:self->commonStrings->EXCEPTION :self :self->commonStrings->RUN :e];
        } JAVA_END_TRY;
        [self->logUtil putF:self->commonStrings->END_RUNNABLE :self :self->commonStrings->RUN];
}


- (void) setRunning:(bool)running {
        [super setRunning:running];
        JAVA_TRY {
            if (([self->features isDefault:self->openGLFeatureFactory->OPENGL] || [J2MEUtil isHTML]) && !running) {
                CurrentDisplayableFactory* currentDisplayableFactory = [CurrentDisplayableFactory getInstance];
                [currentDisplayableFactory clearRunnable];
                [self end];
            }
        } JAVA_CATCH(Exception, e) {
            [self->logUtil put:self->commonStrings->EXCEPTION :self :self->SET_RUNNING :e];
        } JAVA_END_TRY;
}


// throws Exception
- (void) end {
        ProgressCanvas* progressCanvas = [ProgressCanvasFactory getInstance];
        [self->baseGameStatistics add:[[[[((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]) append:StartCanvas_BOT_GAME_STATS] append:[self->baseGameStatistics toString]] append:[CommonSeps getInstance]->NEW_LINE] toString]];
        [self->baseGameStatistics initMethod];
        if ([self->features isFeature:[MainFeatureFactory getInstance]->LOAD_ONDEMAND]) {
            [progressCanvas start];
        }
        [self->logUtil putF:"Demo End" :self :self->commonStrings->RUN];
        [self close];
        [[DisplayChangeEventHandler getInstance] removeListener:self];
}


- (void) setGameState:(GameState*)gameState {
}


- (GameState*) getGameState {
        return self->gameStateFactory->PLAYING_GAME_STATE;
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


- (const char*) getTitle {
        return [super getTitle];
}


- (bool) isPaused {
        return [super isPaused];
}


- (int32_t) getType {
        return [super getType];
}

@end

