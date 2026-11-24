// Generated Code Do Not Modify
#include "org/allbinary/game/displayable/canvas/GameCanvasInputProcessor.h"
#include "javax/microedition/lcdui/Canvas.h"
#include "org/allbinary/game/input/GameKey.h"
#include "org/allbinary/game/input/GameKeyEventSourceInterface.h"
#include "org/allbinary/game/input/GameKeyFactory.h"
#include "org/allbinary/game/input/PlatformInputMappingFactory.h"
#include "org/allbinary/game/input/event/DownGameKeyEventHandler.h"
#include "org/allbinary/game/input/event/DownKeyEventHandler.h"
#include "org/allbinary/game/input/event/GameKeyEvent.h"
#include "org/allbinary/game/input/event/GameKeyEventFactory.h"
#include "org/allbinary/game/input/event/UpGameKeyEventHandler.h"
#include "org/allbinary/game/input/mapping/InputToGameKeyMapping.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/logic/math/SmallIntegerSingletonFactory.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/game/displayable/canvas/AllBinaryGameCanvas.h"
#if __has_include("org/allbinary/game/displayable/canvas/PersistentInputMapping.h")
#include "org/allbinary/game/displayable/canvas/PersistentInputMapping.h"
#endif
#if __has_include("javax/microedition/lcdui/PersistentInputMapping.h")
#include "javax/microedition/lcdui/PersistentInputMapping.h"
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
#if __has_include("org/allbinary/logic/communication/log/PersistentInputMapping.h")
#include "org/allbinary/logic/communication/log/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/logic/math/PersistentInputMapping.h")
#include "org/allbinary/logic/math/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/logic/string/PersistentInputMapping.h")
#include "org/allbinary/logic/string/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/game/input/PlatformInputMappingFactory.h")
#include "org/allbinary/game/input/PlatformInputMappingFactory.h"
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
#if __has_include("org/allbinary/game/displayable/canvas/DownGameKeyEventHandlerBase.h")
#include "org/allbinary/game/displayable/canvas/DownGameKeyEventHandlerBase.h"
#endif
#if __has_include("javax/microedition/lcdui/DownGameKeyEventHandlerBase.h")
#include "javax/microedition/lcdui/DownGameKeyEventHandlerBase.h"
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
#if __has_include("org/allbinary/logic/communication/log/DownGameKeyEventHandlerBase.h")
#include "org/allbinary/logic/communication/log/DownGameKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/logic/math/DownGameKeyEventHandlerBase.h")
#include "org/allbinary/logic/math/DownGameKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/logic/string/DownGameKeyEventHandlerBase.h")
#include "org/allbinary/logic/string/DownGameKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/game/displayable/canvas/DownKeyEventHandlerBase.h")
#include "org/allbinary/game/displayable/canvas/DownKeyEventHandlerBase.h"
#endif
#if __has_include("javax/microedition/lcdui/DownKeyEventHandlerBase.h")
#include "javax/microedition/lcdui/DownKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/game/input/DownKeyEventHandlerBase.h")
#include "org/allbinary/game/input/DownKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/game/input/DownKeyEventHandlerBase.h")
#include "org/allbinary/game/input/DownKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/game/input/DownKeyEventHandlerBase.h")
#include "org/allbinary/game/input/DownKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/game/input/DownKeyEventHandlerBase.h")
#include "org/allbinary/game/input/DownKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/game/input/DownKeyEventHandlerBase.h")
#include "org/allbinary/game/input/DownKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/game/input/event/DownKeyEventHandlerBase.h")
#include "org/allbinary/game/input/event/DownKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/game/input/event/DownKeyEventHandlerBase.h")
#include "org/allbinary/game/input/event/DownKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/game/input/event/DownKeyEventHandlerBase.h")
#include "org/allbinary/game/input/event/DownKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/game/input/event/DownKeyEventHandlerBase.h")
#include "org/allbinary/game/input/event/DownKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/game/input/event/DownKeyEventHandlerBase.h")
#include "org/allbinary/game/input/event/DownKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/game/input/mapping/DownKeyEventHandlerBase.h")
#include "org/allbinary/game/input/mapping/DownKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/logic/communication/log/DownKeyEventHandlerBase.h")
#include "org/allbinary/logic/communication/log/DownKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/logic/math/DownKeyEventHandlerBase.h")
#include "org/allbinary/logic/math/DownKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/logic/string/DownKeyEventHandlerBase.h")
#include "org/allbinary/logic/string/DownKeyEventHandlerBase.h"
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
#if __has_include("org/allbinary/game/input/event/UpGameKeyEventHandlerBase.h")
#include "org/allbinary/game/input/event/UpGameKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/game/input/mapping/UpGameKeyEventHandlerBase.h")
#include "org/allbinary/game/input/mapping/UpGameKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/logic/communication/log/UpGameKeyEventHandlerBase.h")
#include "org/allbinary/logic/communication/log/UpGameKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/logic/math/UpGameKeyEventHandlerBase.h")
#include "org/allbinary/logic/math/UpGameKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/logic/string/UpGameKeyEventHandlerBase.h")
#include "org/allbinary/logic/string/UpGameKeyEventHandlerBase.h"
#endif



void GameCanvasInputProcessor_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation GameCanvasInputProcessor

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
    
    self->downGameKeyEventHandler = [DownGameKeyEventHandler getInstance];
    self->upGameKeyEventHandler = [UpGameKeyEventHandler getInstance];
    self->downKeyEventHandler = [DownKeyEventHandler getInstance];
    self->smallIntegerSingletonFactory = [SmallIntegerSingletonFactory getInstance];
    self->inputToGameKeyMapping = [[[PlatformInputMappingFactory getInstance] getPersistentInputMappingInstance] getInputMapping];
    self->NONE = [GameKeyFactory getInstance]->NONE;
    self->gameKeyEventFactory = [GameKeyEventFactory getInstance];
}


- (instancetype) init:(AllBinaryGameCanvas*)allBinaryGameCanvas {
    self = [super init];
    [self initFields];
        self->allBinaryGameCanvas = allBinaryGameCanvas;
        [self->inputToGameKeyMapping initMethod:self->allBinaryGameCanvas];
    return self;
}


- (void) keyPressedByDevice:(int32_t)keyCode :(int32_t)deviceId {
        JAVA_TRY {
            GameKey* gameKey = [self->inputToGameKeyMapping getInstanceForCanvas:self->allBinaryGameCanvas :keyCode];
            if (gameKey != self->NONE) {
                GameKeyEvent* gameKeyEvent = [self->gameKeyEventFactory getInstanceForInput:self->allBinaryGameCanvas :gameKey];
                [self->downGameKeyEventHandler fireEvent:gameKeyEvent];
                [[self->downGameKeyEventHandler getInstanceForDevice:deviceId] fireEvent:gameKeyEvent];
            } else {
                [self->logUtil putF:[[[((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]) append:self->gameInputStrings->NO_KEY] appendint:keyCode] toString] :self :self->gameInputStrings->ADD_KEY_EVENT];
            }
            int32_t keyCodeAsInteger = [self->smallIntegerSingletonFactory getAtNoThrow:keyCode];
            [self->downKeyEventHandler fireEventI:keyCodeAsInteger];
            [[self->downKeyEventHandler getInstanceForDevice:deviceId] fireEventI:keyCodeAsInteger];
        } JAVA_CATCH(Exception, e) {
            [self->logUtil put:"Key Event Error" :self :self->gameInputStrings->ADD_KEY_EVENT :e];
        } JAVA_END_TRY;
}


- (void) keyReleasedByDevice:(Canvas*)canvas :(int32_t)keyCode :(int32_t)deviceId {
        [self removeGameKeyEvent:canvas :keyCode :deviceId :false];
}


- (void) removeGameKeyEvent:(Canvas*)canvas :(int32_t)keyCode :(int32_t)deviceId :(bool)repeated {
        JAVA_TRY {
            GameKey* gameKey = [self->inputToGameKeyMapping getInstanceForCanvas:canvas :keyCode];
            if (gameKey != self->NONE) {
                GameKeyEventSourceInterface* gameKeyEventSourceInterface = ((GameKeyEventSourceInterface*) canvas);
                GameKeyEvent* gameKeyEvent = [self->gameKeyEventFactory getInstanceForInput:gameKeyEventSourceInterface :gameKey];
                [self->upGameKeyEventHandler fireEvent:gameKeyEvent];
                [[self->upGameKeyEventHandler getInstanceForDevice:deviceId] fireEvent:gameKeyEvent];
            } else {
                [self->logUtil putF:[[[((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]) append:self->gameInputStrings->NO_KEY] appendint:keyCode] toString] :self :self->gameInputStrings->REMOVE_KEY_EVENT];
            }
        } JAVA_CATCH(Exception, e) {
            [self->logUtil put:"Key Event Error" :self :self->gameInputStrings->REMOVE_KEY_EVENT :e];
        } JAVA_END_TRY;
}

@end

