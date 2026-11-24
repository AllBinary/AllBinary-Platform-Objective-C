// Generated Code Do Not Modify
#include "org/allbinary/game/displayable/canvas/GameCommandCanvas.h"
#include "javax/microedition/lcdui/CommandListener.h"
#include "javax/microedition/lcdui/Font.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "javax/microedition/lcdui/NullCommandListener.h"
#include "org/allbinary/canvas/Processor.h"
#include "org/allbinary/game/commands/GameCommandsFactory.h"
#include "org/allbinary/game/configuration/feature/Features.h"
#include "org/allbinary/game/configuration/feature/InputFeatureFactory.h"
#include "org/allbinary/game/displayable/RepaintBehavior.h"
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
#include "org/allbinary/graphics/PointFactory.h"
#include "org/allbinary/graphics/Rectangle.h"
#include "org/allbinary/graphics/color/BasicColor.h"
#include "org/allbinary/graphics/displayable/CanvasStrings.h"
#include "org/allbinary/graphics/displayable/DisplayInfoSingleton.h"
#include "org/allbinary/graphics/displayable/event/DisplayChangeEvent.h"
#include "org/allbinary/graphics/displayable/event/DisplayChangeEventHandler.h"
#include "org/allbinary/graphics/displayable/screen/ScreenRepaintProcessorFactory.h"
#include "org/allbinary/graphics/font/MyFontProcessor.h"
#include "org/allbinary/graphics/font/UpdateMyFontProcessor.h"
#include "org/allbinary/graphics/form/CommandCurrentSelectionFormFactory.h"
#include "org/allbinary/graphics/form/FormPaintable.h"
#include "org/allbinary/graphics/form/FormTypeFactory.h"
#include "org/allbinary/graphics/form/PaintableForm.h"
#include "org/allbinary/graphics/form/ScrollSelectionForm.h"
#include "org/allbinary/graphics/form/ScrollSelectionFormNoneFactory.h"
#include "org/allbinary/graphics/form/item/CommandTextItemArrayFactory.h"
#include "org/allbinary/graphics/form/item/ABCustomItem.h"
#include "org/allbinary/graphics/form/item/validation/AllCommandsVisitor.h"
#include "org/allbinary/graphics/paint/NullPaintable.h"
#include "org/allbinary/graphics/paint/Paintable.h"
#include "org/allbinary/input/motion/gesture/observer/BasicMotionGesturesHandler.h"
#include "org/allbinary/logic/communication/log/ForcedLogUtil.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/logic/util/event/AllBinaryEventObject.h"
#include "org/allbinary/logic/util/event/EventStrings.h"
#include "org/allbinary/string/CommonSeps.h"
#include "org/allbinary/util/BasicArrayListD.h"
#include "org/allbinary/game/displayable/canvas/MenuListener.h"
#include "org/allbinary/game/displayable/canvas/NoMenuInputProcessor.h"
#include "org/allbinary/game/displayable/canvas/BasicMenuInputProcessor.h"
#include "org/allbinary/game/displayable/canvas/ImmediateCommandFormInputProcessor.h"
#if __has_include("org/allbinary/graphics/displayable/screen/ScreenRepaintProcessorFactory.h")
#include "org/allbinary/graphics/displayable/screen/ScreenRepaintProcessorFactory.h"
#endif
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
#if __has_include("org/allbinary/canvas/PersistentInputMapping.h")
#include "org/allbinary/canvas/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/game/commands/PersistentInputMapping.h")
#include "org/allbinary/game/commands/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/game/configuration/feature/PersistentInputMapping.h")
#include "org/allbinary/game/configuration/feature/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/game/configuration/feature/PersistentInputMapping.h")
#include "org/allbinary/game/configuration/feature/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/game/displayable/PersistentInputMapping.h")
#include "org/allbinary/game/displayable/PersistentInputMapping.h"
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
#if __has_include("org/allbinary/graphics/PersistentInputMapping.h")
#include "org/allbinary/graphics/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/graphics/PersistentInputMapping.h")
#include "org/allbinary/graphics/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/graphics/color/PersistentInputMapping.h")
#include "org/allbinary/graphics/color/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/PersistentInputMapping.h")
#include "org/allbinary/graphics/displayable/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/PersistentInputMapping.h")
#include "org/allbinary/graphics/displayable/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/PersistentInputMapping.h")
#include "org/allbinary/graphics/displayable/PersistentInputMapping.h"
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
#if __has_include("org/allbinary/graphics/font/PersistentInputMapping.h")
#include "org/allbinary/graphics/font/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/graphics/font/PersistentInputMapping.h")
#include "org/allbinary/graphics/font/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/graphics/font/PersistentInputMapping.h")
#include "org/allbinary/graphics/font/PersistentInputMapping.h"
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
#if __has_include("org/allbinary/graphics/form/PersistentInputMapping.h")
#include "org/allbinary/graphics/form/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/graphics/form/item/PersistentInputMapping.h")
#include "org/allbinary/graphics/form/item/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/graphics/form/item/PersistentInputMapping.h")
#include "org/allbinary/graphics/form/item/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/graphics/form/item/validation/PersistentInputMapping.h")
#include "org/allbinary/graphics/form/item/validation/PersistentInputMapping.h"
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
#if __has_include("org/allbinary/logic/string/PersistentInputMapping.h")
#include "org/allbinary/logic/string/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/logic/string/PersistentInputMapping.h")
#include "org/allbinary/logic/string/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/logic/util/event/PersistentInputMapping.h")
#include "org/allbinary/logic/util/event/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/logic/util/event/PersistentInputMapping.h")
#include "org/allbinary/logic/util/event/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/string/PersistentInputMapping.h")
#include "org/allbinary/string/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/util/PersistentInputMapping.h")
#include "org/allbinary/util/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/game/input/PlatformInputMappingFactory.h")
#include "org/allbinary/game/input/PlatformInputMappingFactory.h"
#endif
#if __has_include("org/allbinary/game/configuration/feature/Features.h")
#include "org/allbinary/game/configuration/feature/Features.h"
#endif
#if __has_include("org/allbinary/game/configuration/feature/InputFeatureFactory.h")
#include "org/allbinary/game/configuration/feature/InputFeatureFactory.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/CanvasStrings.h")
#include "org/allbinary/graphics/displayable/CanvasStrings.h"
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
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/graphics/form/FormTypeFactory.h")
#include "org/allbinary/graphics/form/FormTypeFactory.h"
#endif
#if __has_include("org/allbinary/logic/util/event/EventStrings.h")
#include "org/allbinary/logic/util/event/EventStrings.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/DisplayInfoSingleton.h")
#include "org/allbinary/graphics/displayable/DisplayInfoSingleton.h"
#endif
#if __has_include("org/allbinary/game/commands/GameCommandsFactory.h")
#include "org/allbinary/game/commands/GameCommandsFactory.h"
#endif
#if __has_include("org/allbinary/logic/string/StringUtil.h")
#include "org/allbinary/logic/string/StringUtil.h"
#endif
#if __has_include("org/allbinary/graphics/form/FormTypeFactory.h")
#include "org/allbinary/graphics/form/FormTypeFactory.h"
#endif
#if __has_include("org/allbinary/input/motion/gesture/observer/BasicMotionGesturesHandler.h")
#include "org/allbinary/input/motion/gesture/observer/BasicMotionGesturesHandler.h"
#endif
#if __has_include("org/allbinary/game/input/event/GameKeyEventHandler.h")
#include "org/allbinary/game/input/event/GameKeyEventHandler.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/event/DisplayChangeEventHandler.h")
#include "org/allbinary/graphics/displayable/event/DisplayChangeEventHandler.h"
#endif
#if __has_include("org/allbinary/input/motion/gesture/observer/BasicMotionGesturesHandler.h")
#include "org/allbinary/input/motion/gesture/observer/BasicMotionGesturesHandler.h"
#endif
#if __has_include("org/allbinary/game/input/event/GameKeyEventHandler.h")
#include "org/allbinary/game/input/event/GameKeyEventHandler.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/event/DisplayChangeEventHandler.h")
#include "org/allbinary/graphics/displayable/event/DisplayChangeEventHandler.h"
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
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/game/displayable/canvas/DownGameKeyEventHandlerBase.h")
#include "org/allbinary/game/displayable/canvas/DownGameKeyEventHandlerBase.h"
#endif
#if __has_include("javax/microedition/lcdui/DownGameKeyEventHandlerBase.h")
#include "javax/microedition/lcdui/DownGameKeyEventHandlerBase.h"
#endif
#if __has_include("javax/microedition/lcdui/DownGameKeyEventHandlerBase.h")
#include "javax/microedition/lcdui/DownGameKeyEventHandlerBase.h"
#endif
#if __has_include("javax/microedition/lcdui/DownGameKeyEventHandlerBase.h")
#include "javax/microedition/lcdui/DownGameKeyEventHandlerBase.h"
#endif
#if __has_include("javax/microedition/lcdui/DownGameKeyEventHandlerBase.h")
#include "javax/microedition/lcdui/DownGameKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/canvas/DownGameKeyEventHandlerBase.h")
#include "org/allbinary/canvas/DownGameKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/game/commands/DownGameKeyEventHandlerBase.h")
#include "org/allbinary/game/commands/DownGameKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/game/configuration/feature/DownGameKeyEventHandlerBase.h")
#include "org/allbinary/game/configuration/feature/DownGameKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/game/configuration/feature/DownGameKeyEventHandlerBase.h")
#include "org/allbinary/game/configuration/feature/DownGameKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/game/displayable/DownGameKeyEventHandlerBase.h")
#include "org/allbinary/game/displayable/DownGameKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/game/input/DownGameKeyEventHandlerBase.h")
#include "org/allbinary/game/input/DownGameKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/game/input/DownGameKeyEventHandlerBase.h")
#include "org/allbinary/game/input/DownGameKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/game/input/DownGameKeyEventHandlerBase.h")
#include "org/allbinary/game/input/DownGameKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/game/input/DownGameKeyEventHandlerBase.h")
#include "org/allbinary/game/input/DownGameKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/game/input/event/DownGameKeyEventHandlerBase.h")
#include "org/allbinary/game/input/event/DownGameKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/game/input/event/DownGameKeyEventHandlerBase.h")
#include "org/allbinary/game/input/event/DownGameKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/game/input/event/DownGameKeyEventHandlerBase.h")
#include "org/allbinary/game/input/event/DownGameKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/game/input/event/DownGameKeyEventHandlerBase.h")
#include "org/allbinary/game/input/event/DownGameKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/game/input/event/DownGameKeyEventHandlerBase.h")
#include "org/allbinary/game/input/event/DownGameKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/game/input/mapping/DownGameKeyEventHandlerBase.h")
#include "org/allbinary/game/input/mapping/DownGameKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/graphics/DownGameKeyEventHandlerBase.h")
#include "org/allbinary/graphics/DownGameKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/graphics/DownGameKeyEventHandlerBase.h")
#include "org/allbinary/graphics/DownGameKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/graphics/color/DownGameKeyEventHandlerBase.h")
#include "org/allbinary/graphics/color/DownGameKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/DownGameKeyEventHandlerBase.h")
#include "org/allbinary/graphics/displayable/DownGameKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/DownGameKeyEventHandlerBase.h")
#include "org/allbinary/graphics/displayable/DownGameKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/DownGameKeyEventHandlerBase.h")
#include "org/allbinary/graphics/displayable/DownGameKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/event/DownGameKeyEventHandlerBase.h")
#include "org/allbinary/graphics/displayable/event/DownGameKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/event/DownGameKeyEventHandlerBase.h")
#include "org/allbinary/graphics/displayable/event/DownGameKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/event/DownGameKeyEventHandlerBase.h")
#include "org/allbinary/graphics/displayable/event/DownGameKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/screen/DownGameKeyEventHandlerBase.h")
#include "org/allbinary/graphics/displayable/screen/DownGameKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/graphics/font/DownGameKeyEventHandlerBase.h")
#include "org/allbinary/graphics/font/DownGameKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/graphics/font/DownGameKeyEventHandlerBase.h")
#include "org/allbinary/graphics/font/DownGameKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/graphics/font/DownGameKeyEventHandlerBase.h")
#include "org/allbinary/graphics/font/DownGameKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/graphics/form/DownGameKeyEventHandlerBase.h")
#include "org/allbinary/graphics/form/DownGameKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/graphics/form/DownGameKeyEventHandlerBase.h")
#include "org/allbinary/graphics/form/DownGameKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/graphics/form/DownGameKeyEventHandlerBase.h")
#include "org/allbinary/graphics/form/DownGameKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/graphics/form/DownGameKeyEventHandlerBase.h")
#include "org/allbinary/graphics/form/DownGameKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/graphics/form/DownGameKeyEventHandlerBase.h")
#include "org/allbinary/graphics/form/DownGameKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/graphics/form/DownGameKeyEventHandlerBase.h")
#include "org/allbinary/graphics/form/DownGameKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/graphics/form/item/DownGameKeyEventHandlerBase.h")
#include "org/allbinary/graphics/form/item/DownGameKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/graphics/form/item/DownGameKeyEventHandlerBase.h")
#include "org/allbinary/graphics/form/item/DownGameKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/graphics/form/item/validation/DownGameKeyEventHandlerBase.h")
#include "org/allbinary/graphics/form/item/validation/DownGameKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/graphics/paint/DownGameKeyEventHandlerBase.h")
#include "org/allbinary/graphics/paint/DownGameKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/graphics/paint/DownGameKeyEventHandlerBase.h")
#include "org/allbinary/graphics/paint/DownGameKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/input/motion/gesture/observer/DownGameKeyEventHandlerBase.h")
#include "org/allbinary/input/motion/gesture/observer/DownGameKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/logic/communication/log/DownGameKeyEventHandlerBase.h")
#include "org/allbinary/logic/communication/log/DownGameKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/logic/string/DownGameKeyEventHandlerBase.h")
#include "org/allbinary/logic/string/DownGameKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/logic/string/DownGameKeyEventHandlerBase.h")
#include "org/allbinary/logic/string/DownGameKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/logic/util/event/DownGameKeyEventHandlerBase.h")
#include "org/allbinary/logic/util/event/DownGameKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/logic/util/event/DownGameKeyEventHandlerBase.h")
#include "org/allbinary/logic/util/event/DownGameKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/string/DownGameKeyEventHandlerBase.h")
#include "org/allbinary/string/DownGameKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/util/DownGameKeyEventHandlerBase.h")
#include "org/allbinary/util/DownGameKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/game/displayable/canvas/UpGameKeyEventHandlerBase.h")
#include "org/allbinary/game/displayable/canvas/UpGameKeyEventHandlerBase.h"
#endif
#if __has_include("javax/microedition/lcdui/UpGameKeyEventHandlerBase.h")
#include "javax/microedition/lcdui/UpGameKeyEventHandlerBase.h"
#endif
#if __has_include("javax/microedition/lcdui/UpGameKeyEventHandlerBase.h")
#include "javax/microedition/lcdui/UpGameKeyEventHandlerBase.h"
#endif
#if __has_include("javax/microedition/lcdui/UpGameKeyEventHandlerBase.h")
#include "javax/microedition/lcdui/UpGameKeyEventHandlerBase.h"
#endif
#if __has_include("javax/microedition/lcdui/UpGameKeyEventHandlerBase.h")
#include "javax/microedition/lcdui/UpGameKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/canvas/UpGameKeyEventHandlerBase.h")
#include "org/allbinary/canvas/UpGameKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/game/commands/UpGameKeyEventHandlerBase.h")
#include "org/allbinary/game/commands/UpGameKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/game/configuration/feature/UpGameKeyEventHandlerBase.h")
#include "org/allbinary/game/configuration/feature/UpGameKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/game/configuration/feature/UpGameKeyEventHandlerBase.h")
#include "org/allbinary/game/configuration/feature/UpGameKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/game/displayable/UpGameKeyEventHandlerBase.h")
#include "org/allbinary/game/displayable/UpGameKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/game/input/UpGameKeyEventHandlerBase.h")
#include "org/allbinary/game/input/UpGameKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/game/input/UpGameKeyEventHandlerBase.h")
#include "org/allbinary/game/input/UpGameKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/game/input/UpGameKeyEventHandlerBase.h")
#include "org/allbinary/game/input/UpGameKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/game/input/UpGameKeyEventHandlerBase.h")
#include "org/allbinary/game/input/UpGameKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/game/input/event/UpGameKeyEventHandlerBase.h")
#include "org/allbinary/game/input/event/UpGameKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/game/input/event/UpGameKeyEventHandlerBase.h")
#include "org/allbinary/game/input/event/UpGameKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/game/input/event/UpGameKeyEventHandlerBase.h")
#include "org/allbinary/game/input/event/UpGameKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/game/input/event/UpGameKeyEventHandlerBase.h")
#include "org/allbinary/game/input/event/UpGameKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/game/input/event/UpGameKeyEventHandlerBase.h")
#include "org/allbinary/game/input/event/UpGameKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/game/input/mapping/UpGameKeyEventHandlerBase.h")
#include "org/allbinary/game/input/mapping/UpGameKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/graphics/UpGameKeyEventHandlerBase.h")
#include "org/allbinary/graphics/UpGameKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/graphics/UpGameKeyEventHandlerBase.h")
#include "org/allbinary/graphics/UpGameKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/graphics/color/UpGameKeyEventHandlerBase.h")
#include "org/allbinary/graphics/color/UpGameKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/UpGameKeyEventHandlerBase.h")
#include "org/allbinary/graphics/displayable/UpGameKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/UpGameKeyEventHandlerBase.h")
#include "org/allbinary/graphics/displayable/UpGameKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/UpGameKeyEventHandlerBase.h")
#include "org/allbinary/graphics/displayable/UpGameKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/event/UpGameKeyEventHandlerBase.h")
#include "org/allbinary/graphics/displayable/event/UpGameKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/event/UpGameKeyEventHandlerBase.h")
#include "org/allbinary/graphics/displayable/event/UpGameKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/event/UpGameKeyEventHandlerBase.h")
#include "org/allbinary/graphics/displayable/event/UpGameKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/screen/UpGameKeyEventHandlerBase.h")
#include "org/allbinary/graphics/displayable/screen/UpGameKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/graphics/font/UpGameKeyEventHandlerBase.h")
#include "org/allbinary/graphics/font/UpGameKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/graphics/font/UpGameKeyEventHandlerBase.h")
#include "org/allbinary/graphics/font/UpGameKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/graphics/font/UpGameKeyEventHandlerBase.h")
#include "org/allbinary/graphics/font/UpGameKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/graphics/form/UpGameKeyEventHandlerBase.h")
#include "org/allbinary/graphics/form/UpGameKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/graphics/form/UpGameKeyEventHandlerBase.h")
#include "org/allbinary/graphics/form/UpGameKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/graphics/form/UpGameKeyEventHandlerBase.h")
#include "org/allbinary/graphics/form/UpGameKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/graphics/form/UpGameKeyEventHandlerBase.h")
#include "org/allbinary/graphics/form/UpGameKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/graphics/form/UpGameKeyEventHandlerBase.h")
#include "org/allbinary/graphics/form/UpGameKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/graphics/form/UpGameKeyEventHandlerBase.h")
#include "org/allbinary/graphics/form/UpGameKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/graphics/form/item/UpGameKeyEventHandlerBase.h")
#include "org/allbinary/graphics/form/item/UpGameKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/graphics/form/item/UpGameKeyEventHandlerBase.h")
#include "org/allbinary/graphics/form/item/UpGameKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/graphics/form/item/validation/UpGameKeyEventHandlerBase.h")
#include "org/allbinary/graphics/form/item/validation/UpGameKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/graphics/paint/UpGameKeyEventHandlerBase.h")
#include "org/allbinary/graphics/paint/UpGameKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/graphics/paint/UpGameKeyEventHandlerBase.h")
#include "org/allbinary/graphics/paint/UpGameKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/input/motion/gesture/observer/UpGameKeyEventHandlerBase.h")
#include "org/allbinary/input/motion/gesture/observer/UpGameKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/logic/communication/log/UpGameKeyEventHandlerBase.h")
#include "org/allbinary/logic/communication/log/UpGameKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/logic/string/UpGameKeyEventHandlerBase.h")
#include "org/allbinary/logic/string/UpGameKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/logic/string/UpGameKeyEventHandlerBase.h")
#include "org/allbinary/logic/string/UpGameKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/logic/util/event/UpGameKeyEventHandlerBase.h")
#include "org/allbinary/logic/util/event/UpGameKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/logic/util/event/UpGameKeyEventHandlerBase.h")
#include "org/allbinary/logic/util/event/UpGameKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/string/UpGameKeyEventHandlerBase.h")
#include "org/allbinary/string/UpGameKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/util/UpGameKeyEventHandlerBase.h")
#include "org/allbinary/util/UpGameKeyEventHandlerBase.h"
#endif


static constexpr int32_t GameCommandCanvas_id_ = 0;

void GameCommandCanvas_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation GameCommandCanvas

- (void) initFields {
    self->repaintProcessor = [[ScreenRepaintProcessorFactory getInstance] create:self];
    self->gameInputStrings = [GameInputStrings getInstance];
    
    
    self->inputToGameKeyMapping = [[[PlatformInputMappingFactory getInstance] getPersistentInputMappingInstance] getInputMapping];
    self->gameKeyFactory = [GameKeyFactory getInstance];
    self->gameKeyEventFactory = [GameKeyEventFactory getInstance];
    self->downGameKeyEventHandler = [DownGameKeyEventHandler getInstance];
    self->upGameKeyEventHandler = [UpGameKeyEventHandler getInstance];
    
    self->updateMyFontProcessor = ((UpdateMyFontProcessor*) [((UpdateMyFontProcessor*) [UpdateMyFontProcessor alloc]) init:self]);
    self->myFontProcessor = self->updateMyFontProcessor;
    
    
    self->menuInputProcessor = [NoMenuInputProcessor getInstance];
    self->menuPaintable = [NullPaintable getInstance];
    self->menuForm = [PaintableForm getNullPaintableForm];
    self->isSingleKeyRepeatableProcessing = [[Features getInstance] isFeature:[InputFeatureFactory getInstance]->SINGLE_KEY_REPEAT_PRESS];
    self->fontHeight = 0;
}


- (instancetype) init:(CommandListener*)cmdListener :(const char*)name :(BasicColor*)backgroundBasicColor :(BasicColor*)foregroundBasicColor {
        self = [super init:name :[CanvasStrings getInstance]->EMPTY_CHILD_NAME_LIST];
        [self initFields];
        self->repaintBehavior = [RepaintBehavior getInstance];
        self->foregroundBasicColor = foregroundBasicColor;
        self->backgroundBasicColor = backgroundBasicColor;
        self->foregroundColor = [self->foregroundBasicColor intValue];
        self->backgroundColor = [self->backgroundBasicColor intValue];
        [self initCommands:cmdListener];
        if (cmdListener != (NullCommandListener_staticInit(), NullCommandListener_NULL_COMMAND_LISTENER)) {
            JAVA_TRY {
                [self initMenu];
                [self->repaintProcessor process];
            } JAVA_CATCH(Exception, e) {
                java_throw(java_exception_new("RuntimeException", ""));
            } JAVA_END_TRY;
        }
    return self;
}


- (void) updateMeasurement:(Graphics*)graphics {
        JAVA_TRY {
            Font* font = [graphics getFont];
            [self->logUtil putF:[[[[[[((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]) append:self->commonStrings->START] append:self->canvasStrings->FD_WIDTH] appendint:[MyFontProcessor defaultCharWidth:font]] append:self->canvasStrings->FD_HEIGHT] appendint:[font getHeight]] toString] :self :self->canvasStrings->UPDATE_MEASUREMENT];
            self->fontHeight = [font getHeight];
            Rectangle* rectangle = [self createRectangle:[self->menuForm size]];
            [self->menuForm initMethod:rectangle :[FormTypeFactory getInstance]->VERTICAL_CENTER_FORM];
            [self update];
        } JAVA_CATCH(Exception, e) {
            [self->logUtil put:self->commonStrings->EXCEPTION :self :self->canvasStrings->ON_DISPLAY_CHANGE_EVENT :e];
        } JAVA_END_TRY;
        self->myFontProcessor = [MyFontProcessor getInstance];
}


- (void) onEvent:(AllBinaryEventObject*)eventObject {
        [ForcedLogUtil log:[EventStrings getInstance]->PERFORMANCE_MESSAGE :self];
}


- (void) onDisplayChangeEvent:(DisplayChangeEvent*)displayChangeEvent {
        [self->logUtil putF:[[[((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]) append:self->commonStrings->START] append:[[DisplayInfoSingleton getInstance] toString]] toString] :self :self->canvasStrings->ON_DISPLAY_CHANGE_EVENT];
        self->myFontProcessor = self->updateMyFontProcessor;
}


- (void) initCommands:(CommandListener*)cmdListener {
        [self removeAllCommands];
        [self addCommand:[GameCommandsFactory getInstance]->CLOSE_AND_SHOW_GAME_CANVAS];
        [self setCommandListener:cmdListener];
}


// throws Exception
- (void) initMenu {
        ScrollSelectionForm* form = [self createForm];
        self->menuForm = form;
        if (form != [ScrollSelectionFormNoneFactory getInstance]) {
            [self setMenuInputProcessor:((ImmediateCommandFormInputProcessor*) [((ImmediateCommandFormInputProcessor*) [ImmediateCommandFormInputProcessor alloc]) init:((BasicArrayListD*) [((BasicArrayListD*) [BasicArrayListD alloc]) init]) :-1 :self :form])];
            self->menuPaintable = ((FormPaintable*) [((FormPaintable*) [FormPaintable alloc]) init:form]);
        }
        [self->repaintBehavior onChangeRepaint:self];
}


// throws Exception
- (ScrollSelectionForm*) createForm {
        ABCustomItem** items = [((CommandTextItemArrayFactory*) [((CommandTextItemArrayFactory*) [CommandTextItemArrayFactory alloc]) init:((AllCommandsVisitor*) [((AllCommandsVisitor*) [AllCommandsVisitor alloc]) init])]) getInstance:[self getCommandStack] :self->backgroundBasicColor :self->foregroundBasicColor];
        Rectangle* rectangle = [self createRectangle:java_array_length(items)];
        return [CommandCurrentSelectionFormFactory getInstance:[StringUtil getInstance]->EMPTY_STRING :items :rectangle :[FormTypeFactory getInstance]->VERTICAL_CENTER_FORM :15 :false :self->backgroundBasicColor :self->foregroundBasicColor];
}


- (Rectangle*) createRectangle:(int32_t)size {
        int32_t height = size * self->fontHeight;
        int32_t startY = ([self->displayInfo getLastHeight] * 2 / 3) - height;
        PointFactory* pointFactory = [PointFactory getInstance];
        Rectangle* rectangle = ((Rectangle*) [((Rectangle*) [Rectangle alloc]) init:[pointFactory createXY:30 :startY] :[self->displayInfo getLastWidth] - 30 :startY]);
        return rectangle;
}


- (void) open {
        [self->logUtil putF:self->commonStrings->START :self :"open"];
        [[BasicMotionGesturesHandler getInstance] addListenerInterface:[self getMenuInputProcessor]];
        [[GameKeyEventHandler getInstance] addListener:[self getMenuInputProcessor]];
        [[DisplayChangeEventHandler getInstance] addListenerInterface:self];
}


// throws Exception
- (void) close {
        [self->logUtil putF:self->commonStrings->START :self :self->commonStrings->CLOSE];
        [[BasicMotionGesturesHandler getInstance] removeListener:[self getMenuInputProcessor]];
        [[GameKeyEventHandler getInstance] removeListener:[self getMenuInputProcessor]];
        [[DisplayChangeEventHandler getInstance] removeListener:self];
}


// throws Exception
- (void) update {
        [self->repaintProcessor process];
}


- (int32_t) getSourceId {
        return GameCommandCanvas_id_;
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
        [self->logUtil putF:[[[((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]) append:[CommonSeps getInstance]->SPACE] appendint:keyCode] toString] :self :self->gameInputStrings->KEY_PRESSED];
        [self addGameKeyEvent:keyCode :0 :false];
}


- (void) keyReleasedByDevice:(int32_t)keyCode :(int32_t)deviceId {
        [self removeGameKeyEvent:keyCode :deviceId :false];
}


- (void) keyRepeatedByDevice:(int32_t)keyCode :(int32_t)deviceId {
        if (self->isSingleKeyRepeatableProcessing) {
            [self addGameKeyEvent:keyCode :deviceId :true];
        }
}


- (void) addGameKeyEvent:(int32_t)keyCode :(int32_t)deviceId :(bool)repeated {
        JAVA_TRY {
            GameKey* gameKey = [self->inputToGameKeyMapping getInstanceForCanvas:self :keyCode];
            if (gameKey != self->gameKeyFactory->NONE) {
                GameKeyEvent* gameKeyEvent = [self->gameKeyEventFactory getInstanceForInput:self :gameKey];
                [self->downGameKeyEventHandler fireEvent:gameKeyEvent];
                [[self->downGameKeyEventHandler getInstanceForDevice:deviceId] fireEvent:gameKeyEvent];
            } else {
                [self->logUtil putF:[[[((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]) append:self->gameInputStrings->NO_KEY] appendint:keyCode] toString] :self :self->gameInputStrings->ADD_KEY_EVENT];
            }
        } JAVA_CATCH(Exception, e) {
            [self->logUtil put:"Key Event Error" :self :self->gameInputStrings->ADD_KEY_EVENT :e];
        } JAVA_END_TRY;
}


- (void) removeGameKeyEvent:(int32_t)keyCode :(int32_t)deviceId :(bool)repeated {
        JAVA_TRY {
            GameKey* gameKey = [self->inputToGameKeyMapping getInstanceForCanvas:self :keyCode];
            if (gameKey != self->gameKeyFactory->NONE) {
                GameKeyEvent* gameKeyEvent = [self->gameKeyEventFactory getInstanceForInput:self :gameKey];
                [self->upGameKeyEventHandler fireEvent:gameKeyEvent];
                [[self->upGameKeyEventHandler getInstanceForDevice:deviceId] fireEvent:gameKeyEvent];
            } else {
                [self->logUtil putF:[[[((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]) append:self->gameInputStrings->NO_KEY] appendint:keyCode] toString] :self :self->gameInputStrings->REMOVE_KEY_EVENT];
            }
        } JAVA_CATCH(Exception, e) {
            [self->logUtil put:"Key Event Error" :self :self->gameInputStrings->REMOVE_KEY_EVENT :e];
        } JAVA_END_TRY;
}


- (void) paint:(Graphics*)graphics {
        [self->myFontProcessor process:graphics];
        [self->menuPaintable paint:graphics];
        [self->repaintBehavior repaint:self];
}


- (void) setMenuInputProcessor:(BasicMenuInputProcessor*)menuInputProcessor {
        self->menuInputProcessor = menuInputProcessor;
}


- (BasicMenuInputProcessor*) getMenuInputProcessor {
        return self->menuInputProcessor;
}

@end

