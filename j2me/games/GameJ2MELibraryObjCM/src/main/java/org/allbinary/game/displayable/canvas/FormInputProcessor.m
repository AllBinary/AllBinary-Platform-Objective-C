// Generated Code Do Not Modify
#include "org/allbinary/game/displayable/canvas/FormInputProcessor.h"
#include "javax/microedition/lcdui/Canvas.h"
#include "org/allbinary/game/input/GameKey.h"
#include "org/allbinary/game/input/GameKeyEventSourceInterface.h"
#include "org/allbinary/game/input/GameKeyFactory.h"
#include "org/allbinary/game/input/Input.h"
#include "org/allbinary/game/input/InputFactory.h"
#include "org/allbinary/game/input/PlatformKeyFactory.h"
#include "org/allbinary/game/input/event/DownKeyEventHandler.h"
#include "org/allbinary/game/input/event/GameKeyEvent.h"
#include "org/allbinary/game/input/event/GameKeyEventFactory.h"
#include "org/allbinary/game/input/event/UpGameKeyEventHandler.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/logic/communication/log/PreLogUtil.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/string/CommonSeps.h"
#include "org/allbinary/string/CommonStrings.h"
#include "org/allbinary/game/displayable/canvas/AllBinaryGameCanvas.h"
#if __has_include("org/allbinary/game/displayable/canvas/UpGameKeyEventHandlerBase.h")
#include "org/allbinary/game/displayable/canvas/UpGameKeyEventHandlerBase.h"
#endif
#if __has_include("javax/microedition/lcdui/UpGameKeyEventHandlerBase.h")
#include "javax/microedition/lcdui/UpGameKeyEventHandlerBase.h"
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
#if __has_include("org/allbinary/logic/communication/log/UpGameKeyEventHandlerBase.h")
#include "org/allbinary/logic/communication/log/UpGameKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/logic/communication/log/UpGameKeyEventHandlerBase.h")
#include "org/allbinary/logic/communication/log/UpGameKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/logic/string/UpGameKeyEventHandlerBase.h")
#include "org/allbinary/logic/string/UpGameKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/string/UpGameKeyEventHandlerBase.h")
#include "org/allbinary/string/UpGameKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/string/UpGameKeyEventHandlerBase.h")
#include "org/allbinary/string/UpGameKeyEventHandlerBase.h"
#endif



void FormInputProcessor_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation FormInputProcessor

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
    self->commonStrings = [CommonStrings getInstance];
    self->gameKeyEventFactory = [GameKeyEventFactory getInstance];
    self->downKeyEventHandler = [DownKeyEventHandler getInstance];
    self->upGameKeyEventHandler = [UpGameKeyEventHandler getInstance];
    self->inputFactory = [InputFactory getInstance];
    self->platformKeyFactory = [PlatformKeyFactory getInstance];
    
}


- (instancetype) init:(AllBinaryGameCanvas*)allBinaryGameCanvas {
    self = [super init];
    [self initFields];
        self->allBinaryGameCanvas = allBinaryGameCanvas;
    return self;
}


- (void) keyPressedByDevice:(int32_t)keyCode :(int32_t)deviceId {
        JAVA_TRY {
            [PreLogUtil put:[[[[[[[((StringMaker*) [StringMaker alloc]) init] append:self->inputFactory->KEY_CODE_LABEL] appendint:keyCode] append:[CommonSeps getInstance]->SPACE] append:self->inputFactory->DEVICE_ID_LABEL] appendint:deviceId] toString] :self :self->gameInputStrings->KEY_PRESSED];
            Input* input = [self->inputFactory getInstanceById:keyCode];
            GameKeyEvent* gameKeyEvent = [self->gameKeyEventFactory getInstanceForInput:self->allBinaryGameCanvas :input];
            [self->downKeyEventHandler fireEventForGameKeyEvent:gameKeyEvent];
        } JAVA_CATCH(Exception, e) {
            [self->logUtil put:self->commonStrings->EXCEPTION :self :self->gameInputStrings->ADD_KEY_EVENT :e];
        } JAVA_END_TRY;
}


- (void) keyReleasedByDevice:(Canvas*)canvas :(int32_t)keyCode :(int32_t)deviceId {
        JAVA_TRY {
            Input* input = [self->inputFactory getInstanceById:keyCode];
            if ([self->platformKeyFactory isEnter:input]) {
                [PreLogUtil put:[[[[[[[((StringMaker*) [StringMaker alloc]) init] append:self->inputFactory->KEY_CODE_LABEL] appendint:keyCode] append:[CommonSeps getInstance]->SPACE] append:self->inputFactory->DEVICE_ID_LABEL] appendint:deviceId] toString] :self :self->gameInputStrings->KEY_RELEASED];
                GameKey* gameKey = [GameKeyFactory getInstance]->KEY_NUM0;
                GameKeyEventSourceInterface* gameKeyEventSourceInterface = ((GameKeyEventSourceInterface*) canvas);
                GameKeyEvent* gameKeyEvent = [self->gameKeyEventFactory getInstanceForInput:gameKeyEventSourceInterface :gameKey];
                [self->upGameKeyEventHandler fireEvent:gameKeyEvent];
                [[self->upGameKeyEventHandler getInstanceForDevice:deviceId] fireEvent:gameKeyEvent];
            }
        } JAVA_CATCH(Exception, e) {
            [self->logUtil put:self->commonStrings->EXCEPTION :self :self->gameInputStrings->ADD_KEY_EVENT :e];
        } JAVA_END_TRY;
}

@end

