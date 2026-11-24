// Generated Code Do Not Modify
#include "org/allbinary/game/displayable/canvas/GameInputMappingCanvas.h"
#include "javax/microedition/lcdui/Command.h"
#include "javax/microedition/lcdui/CommandListener.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "org/allbinary/game/commands/GameCommandsFactory.h"
#include "org/allbinary/game/input/GameKey.h"
#include "org/allbinary/game/input/GameKeyFactory.h"
#include "org/allbinary/game/input/Input.h"
#include "org/allbinary/game/input/InputFactory.h"
#include "org/allbinary/game/input/PlatformInputMappingFactory.h"
#include "org/allbinary/game/input/mapping/PersistentInputMapping.h"
#include "org/allbinary/game/layer/AllBinaryGameLayerManager.h"
#include "org/allbinary/game/paint/ColorFillBasePaintable.h"
#include "org/allbinary/game/paint/ColorFillPaintableFactory.h"
#include "org/allbinary/game/paint/help/HelpPaintable.h"
#include "org/allbinary/game/paint/help/InputMappingHelpPaintable.h"
#include "org/allbinary/graphics/paint/ProcessPaintable.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/game/displayable/canvas/GameCommandCanvas.h"
#include "org/allbinary/game/displayable/canvas/GameInputMappingInstructionsCanvas.h"
#if __has_include("org/allbinary/logic/string/StringUtil.h")
#include "org/allbinary/logic/string/StringUtil.h"
#endif
#if __has_include("org/allbinary/logic/string/StringUtil.h")
#include "org/allbinary/logic/string/StringUtil.h"
#endif
#if __has_include("org/allbinary/game/input/GameKeyFactory.h")
#include "org/allbinary/game/input/GameKeyFactory.h"
#endif
#if __has_include("org/allbinary/game/input/PlatformInputMappingFactory.h")
#include "org/allbinary/game/input/PlatformInputMappingFactory.h"
#endif
#if __has_include("org/allbinary/game/paint/ColorFillPaintableFactory.h")
#include "org/allbinary/game/paint/ColorFillPaintableFactory.h"
#endif
#if __has_include("org/allbinary/game/commands/GameCommandsFactory.h")
#include "org/allbinary/game/commands/GameCommandsFactory.h"
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
#if __has_include("org/allbinary/game/displayable/canvas/InputToGameKeyMapping.h")
#include "org/allbinary/game/displayable/canvas/InputToGameKeyMapping.h"
#endif
#if __has_include("javax/microedition/lcdui/InputToGameKeyMapping.h")
#include "javax/microedition/lcdui/InputToGameKeyMapping.h"
#endif
#if __has_include("javax/microedition/lcdui/InputToGameKeyMapping.h")
#include "javax/microedition/lcdui/InputToGameKeyMapping.h"
#endif
#if __has_include("javax/microedition/lcdui/InputToGameKeyMapping.h")
#include "javax/microedition/lcdui/InputToGameKeyMapping.h"
#endif
#if __has_include("org/allbinary/game/commands/InputToGameKeyMapping.h")
#include "org/allbinary/game/commands/InputToGameKeyMapping.h"
#endif
#if __has_include("org/allbinary/game/input/InputToGameKeyMapping.h")
#include "org/allbinary/game/input/InputToGameKeyMapping.h"
#endif
#if __has_include("org/allbinary/game/input/InputToGameKeyMapping.h")
#include "org/allbinary/game/input/InputToGameKeyMapping.h"
#endif
#if __has_include("org/allbinary/game/input/InputToGameKeyMapping.h")
#include "org/allbinary/game/input/InputToGameKeyMapping.h"
#endif
#if __has_include("org/allbinary/game/input/InputToGameKeyMapping.h")
#include "org/allbinary/game/input/InputToGameKeyMapping.h"
#endif
#if __has_include("org/allbinary/game/input/InputToGameKeyMapping.h")
#include "org/allbinary/game/input/InputToGameKeyMapping.h"
#endif
#if __has_include("org/allbinary/game/input/mapping/InputToGameKeyMapping.h")
#include "org/allbinary/game/input/mapping/InputToGameKeyMapping.h"
#endif
#if __has_include("org/allbinary/game/input/mapping/InputToGameKeyMapping.h")
#include "org/allbinary/game/input/mapping/InputToGameKeyMapping.h"
#endif
#if __has_include("org/allbinary/game/layer/InputToGameKeyMapping.h")
#include "org/allbinary/game/layer/InputToGameKeyMapping.h"
#endif
#if __has_include("org/allbinary/game/paint/InputToGameKeyMapping.h")
#include "org/allbinary/game/paint/InputToGameKeyMapping.h"
#endif
#if __has_include("org/allbinary/game/paint/InputToGameKeyMapping.h")
#include "org/allbinary/game/paint/InputToGameKeyMapping.h"
#endif
#if __has_include("org/allbinary/game/paint/help/InputToGameKeyMapping.h")
#include "org/allbinary/game/paint/help/InputToGameKeyMapping.h"
#endif
#if __has_include("org/allbinary/game/paint/help/InputToGameKeyMapping.h")
#include "org/allbinary/game/paint/help/InputToGameKeyMapping.h"
#endif
#if __has_include("org/allbinary/graphics/paint/InputToGameKeyMapping.h")
#include "org/allbinary/graphics/paint/InputToGameKeyMapping.h"
#endif
#if __has_include("org/allbinary/logic/string/InputToGameKeyMapping.h")
#include "org/allbinary/logic/string/InputToGameKeyMapping.h"
#endif
#if __has_include("org/allbinary/logic/string/InputToGameKeyMapping.h")
#include "org/allbinary/logic/string/InputToGameKeyMapping.h"
#endif
#if __has_include("org/allbinary/logic/system/security/licensing/InputToGameKeyMapping.h")
#include "org/allbinary/logic/system/security/licensing/InputToGameKeyMapping.h"
#endif
#if __has_include("org/allbinary/util/InputToGameKeyMapping.h")
#include "org/allbinary/util/InputToGameKeyMapping.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/game/displayable/canvas/InputToGameKeyMapping.h")
#include "org/allbinary/game/displayable/canvas/InputToGameKeyMapping.h"
#endif
#if __has_include("javax/microedition/lcdui/InputToGameKeyMapping.h")
#include "javax/microedition/lcdui/InputToGameKeyMapping.h"
#endif
#if __has_include("javax/microedition/lcdui/InputToGameKeyMapping.h")
#include "javax/microedition/lcdui/InputToGameKeyMapping.h"
#endif
#if __has_include("javax/microedition/lcdui/InputToGameKeyMapping.h")
#include "javax/microedition/lcdui/InputToGameKeyMapping.h"
#endif
#if __has_include("org/allbinary/game/commands/InputToGameKeyMapping.h")
#include "org/allbinary/game/commands/InputToGameKeyMapping.h"
#endif
#if __has_include("org/allbinary/game/input/InputToGameKeyMapping.h")
#include "org/allbinary/game/input/InputToGameKeyMapping.h"
#endif
#if __has_include("org/allbinary/game/input/InputToGameKeyMapping.h")
#include "org/allbinary/game/input/InputToGameKeyMapping.h"
#endif
#if __has_include("org/allbinary/game/input/InputToGameKeyMapping.h")
#include "org/allbinary/game/input/InputToGameKeyMapping.h"
#endif
#if __has_include("org/allbinary/game/input/InputToGameKeyMapping.h")
#include "org/allbinary/game/input/InputToGameKeyMapping.h"
#endif
#if __has_include("org/allbinary/game/input/InputToGameKeyMapping.h")
#include "org/allbinary/game/input/InputToGameKeyMapping.h"
#endif
#if __has_include("org/allbinary/game/input/mapping/InputToGameKeyMapping.h")
#include "org/allbinary/game/input/mapping/InputToGameKeyMapping.h"
#endif
#if __has_include("org/allbinary/game/input/mapping/InputToGameKeyMapping.h")
#include "org/allbinary/game/input/mapping/InputToGameKeyMapping.h"
#endif
#if __has_include("org/allbinary/game/layer/InputToGameKeyMapping.h")
#include "org/allbinary/game/layer/InputToGameKeyMapping.h"
#endif
#if __has_include("org/allbinary/game/paint/InputToGameKeyMapping.h")
#include "org/allbinary/game/paint/InputToGameKeyMapping.h"
#endif
#if __has_include("org/allbinary/game/paint/InputToGameKeyMapping.h")
#include "org/allbinary/game/paint/InputToGameKeyMapping.h"
#endif
#if __has_include("org/allbinary/game/paint/help/InputToGameKeyMapping.h")
#include "org/allbinary/game/paint/help/InputToGameKeyMapping.h"
#endif
#if __has_include("org/allbinary/game/paint/help/InputToGameKeyMapping.h")
#include "org/allbinary/game/paint/help/InputToGameKeyMapping.h"
#endif
#if __has_include("org/allbinary/graphics/paint/InputToGameKeyMapping.h")
#include "org/allbinary/graphics/paint/InputToGameKeyMapping.h"
#endif
#if __has_include("org/allbinary/logic/string/InputToGameKeyMapping.h")
#include "org/allbinary/logic/string/InputToGameKeyMapping.h"
#endif
#if __has_include("org/allbinary/logic/string/InputToGameKeyMapping.h")
#include "org/allbinary/logic/string/InputToGameKeyMapping.h"
#endif
#if __has_include("org/allbinary/logic/system/security/licensing/InputToGameKeyMapping.h")
#include "org/allbinary/logic/system/security/licensing/InputToGameKeyMapping.h"
#endif
#if __has_include("org/allbinary/util/InputToGameKeyMapping.h")
#include "org/allbinary/util/InputToGameKeyMapping.h"
#endif
#if __has_include("org/allbinary/game/displayable/canvas/InputToGameKeyMapping.h")
#include "org/allbinary/game/displayable/canvas/InputToGameKeyMapping.h"
#endif
#if __has_include("javax/microedition/lcdui/InputToGameKeyMapping.h")
#include "javax/microedition/lcdui/InputToGameKeyMapping.h"
#endif
#if __has_include("javax/microedition/lcdui/InputToGameKeyMapping.h")
#include "javax/microedition/lcdui/InputToGameKeyMapping.h"
#endif
#if __has_include("javax/microedition/lcdui/InputToGameKeyMapping.h")
#include "javax/microedition/lcdui/InputToGameKeyMapping.h"
#endif
#if __has_include("org/allbinary/game/commands/InputToGameKeyMapping.h")
#include "org/allbinary/game/commands/InputToGameKeyMapping.h"
#endif
#if __has_include("org/allbinary/game/input/InputToGameKeyMapping.h")
#include "org/allbinary/game/input/InputToGameKeyMapping.h"
#endif
#if __has_include("org/allbinary/game/input/InputToGameKeyMapping.h")
#include "org/allbinary/game/input/InputToGameKeyMapping.h"
#endif
#if __has_include("org/allbinary/game/input/InputToGameKeyMapping.h")
#include "org/allbinary/game/input/InputToGameKeyMapping.h"
#endif
#if __has_include("org/allbinary/game/input/InputToGameKeyMapping.h")
#include "org/allbinary/game/input/InputToGameKeyMapping.h"
#endif
#if __has_include("org/allbinary/game/input/InputToGameKeyMapping.h")
#include "org/allbinary/game/input/InputToGameKeyMapping.h"
#endif
#if __has_include("org/allbinary/game/input/mapping/InputToGameKeyMapping.h")
#include "org/allbinary/game/input/mapping/InputToGameKeyMapping.h"
#endif
#if __has_include("org/allbinary/game/input/mapping/InputToGameKeyMapping.h")
#include "org/allbinary/game/input/mapping/InputToGameKeyMapping.h"
#endif
#if __has_include("org/allbinary/game/layer/InputToGameKeyMapping.h")
#include "org/allbinary/game/layer/InputToGameKeyMapping.h"
#endif
#if __has_include("org/allbinary/game/paint/InputToGameKeyMapping.h")
#include "org/allbinary/game/paint/InputToGameKeyMapping.h"
#endif
#if __has_include("org/allbinary/game/paint/InputToGameKeyMapping.h")
#include "org/allbinary/game/paint/InputToGameKeyMapping.h"
#endif
#if __has_include("org/allbinary/game/paint/help/InputToGameKeyMapping.h")
#include "org/allbinary/game/paint/help/InputToGameKeyMapping.h"
#endif
#if __has_include("org/allbinary/game/paint/help/InputToGameKeyMapping.h")
#include "org/allbinary/game/paint/help/InputToGameKeyMapping.h"
#endif
#if __has_include("org/allbinary/graphics/paint/InputToGameKeyMapping.h")
#include "org/allbinary/graphics/paint/InputToGameKeyMapping.h"
#endif
#if __has_include("org/allbinary/logic/string/InputToGameKeyMapping.h")
#include "org/allbinary/logic/string/InputToGameKeyMapping.h"
#endif
#if __has_include("org/allbinary/logic/string/InputToGameKeyMapping.h")
#include "org/allbinary/logic/string/InputToGameKeyMapping.h"
#endif
#if __has_include("org/allbinary/logic/system/security/licensing/InputToGameKeyMapping.h")
#include "org/allbinary/logic/system/security/licensing/InputToGameKeyMapping.h"
#endif
#if __has_include("org/allbinary/util/InputToGameKeyMapping.h")
#include "org/allbinary/util/InputToGameKeyMapping.h"
#endif
#if __has_include("org/allbinary/game/displayable/canvas/InputToGameKeyMapping.h")
#include "org/allbinary/game/displayable/canvas/InputToGameKeyMapping.h"
#endif
#if __has_include("javax/microedition/lcdui/InputToGameKeyMapping.h")
#include "javax/microedition/lcdui/InputToGameKeyMapping.h"
#endif
#if __has_include("javax/microedition/lcdui/InputToGameKeyMapping.h")
#include "javax/microedition/lcdui/InputToGameKeyMapping.h"
#endif
#if __has_include("javax/microedition/lcdui/InputToGameKeyMapping.h")
#include "javax/microedition/lcdui/InputToGameKeyMapping.h"
#endif
#if __has_include("org/allbinary/game/commands/InputToGameKeyMapping.h")
#include "org/allbinary/game/commands/InputToGameKeyMapping.h"
#endif
#if __has_include("org/allbinary/game/input/InputToGameKeyMapping.h")
#include "org/allbinary/game/input/InputToGameKeyMapping.h"
#endif
#if __has_include("org/allbinary/game/input/InputToGameKeyMapping.h")
#include "org/allbinary/game/input/InputToGameKeyMapping.h"
#endif
#if __has_include("org/allbinary/game/input/InputToGameKeyMapping.h")
#include "org/allbinary/game/input/InputToGameKeyMapping.h"
#endif
#if __has_include("org/allbinary/game/input/InputToGameKeyMapping.h")
#include "org/allbinary/game/input/InputToGameKeyMapping.h"
#endif
#if __has_include("org/allbinary/game/input/InputToGameKeyMapping.h")
#include "org/allbinary/game/input/InputToGameKeyMapping.h"
#endif
#if __has_include("org/allbinary/game/input/mapping/InputToGameKeyMapping.h")
#include "org/allbinary/game/input/mapping/InputToGameKeyMapping.h"
#endif
#if __has_include("org/allbinary/game/input/mapping/InputToGameKeyMapping.h")
#include "org/allbinary/game/input/mapping/InputToGameKeyMapping.h"
#endif
#if __has_include("org/allbinary/game/layer/InputToGameKeyMapping.h")
#include "org/allbinary/game/layer/InputToGameKeyMapping.h"
#endif
#if __has_include("org/allbinary/game/paint/InputToGameKeyMapping.h")
#include "org/allbinary/game/paint/InputToGameKeyMapping.h"
#endif
#if __has_include("org/allbinary/game/paint/InputToGameKeyMapping.h")
#include "org/allbinary/game/paint/InputToGameKeyMapping.h"
#endif
#if __has_include("org/allbinary/game/paint/help/InputToGameKeyMapping.h")
#include "org/allbinary/game/paint/help/InputToGameKeyMapping.h"
#endif
#if __has_include("org/allbinary/game/paint/help/InputToGameKeyMapping.h")
#include "org/allbinary/game/paint/help/InputToGameKeyMapping.h"
#endif
#if __has_include("org/allbinary/graphics/paint/InputToGameKeyMapping.h")
#include "org/allbinary/graphics/paint/InputToGameKeyMapping.h"
#endif
#if __has_include("org/allbinary/logic/string/InputToGameKeyMapping.h")
#include "org/allbinary/logic/string/InputToGameKeyMapping.h"
#endif
#if __has_include("org/allbinary/logic/string/InputToGameKeyMapping.h")
#include "org/allbinary/logic/string/InputToGameKeyMapping.h"
#endif
#if __has_include("org/allbinary/logic/system/security/licensing/InputToGameKeyMapping.h")
#include "org/allbinary/logic/system/security/licensing/InputToGameKeyMapping.h"
#endif
#if __has_include("org/allbinary/util/InputToGameKeyMapping.h")
#include "org/allbinary/util/InputToGameKeyMapping.h"
#endif
#if __has_include("org/allbinary/game/displayable/canvas/InputToGameKeyMapping.h")
#include "org/allbinary/game/displayable/canvas/InputToGameKeyMapping.h"
#endif
#if __has_include("javax/microedition/lcdui/InputToGameKeyMapping.h")
#include "javax/microedition/lcdui/InputToGameKeyMapping.h"
#endif
#if __has_include("javax/microedition/lcdui/InputToGameKeyMapping.h")
#include "javax/microedition/lcdui/InputToGameKeyMapping.h"
#endif
#if __has_include("javax/microedition/lcdui/InputToGameKeyMapping.h")
#include "javax/microedition/lcdui/InputToGameKeyMapping.h"
#endif
#if __has_include("org/allbinary/game/commands/InputToGameKeyMapping.h")
#include "org/allbinary/game/commands/InputToGameKeyMapping.h"
#endif
#if __has_include("org/allbinary/game/input/InputToGameKeyMapping.h")
#include "org/allbinary/game/input/InputToGameKeyMapping.h"
#endif
#if __has_include("org/allbinary/game/input/InputToGameKeyMapping.h")
#include "org/allbinary/game/input/InputToGameKeyMapping.h"
#endif
#if __has_include("org/allbinary/game/input/InputToGameKeyMapping.h")
#include "org/allbinary/game/input/InputToGameKeyMapping.h"
#endif
#if __has_include("org/allbinary/game/input/InputToGameKeyMapping.h")
#include "org/allbinary/game/input/InputToGameKeyMapping.h"
#endif
#if __has_include("org/allbinary/game/input/InputToGameKeyMapping.h")
#include "org/allbinary/game/input/InputToGameKeyMapping.h"
#endif
#if __has_include("org/allbinary/game/input/mapping/InputToGameKeyMapping.h")
#include "org/allbinary/game/input/mapping/InputToGameKeyMapping.h"
#endif
#if __has_include("org/allbinary/game/input/mapping/InputToGameKeyMapping.h")
#include "org/allbinary/game/input/mapping/InputToGameKeyMapping.h"
#endif
#if __has_include("org/allbinary/game/layer/InputToGameKeyMapping.h")
#include "org/allbinary/game/layer/InputToGameKeyMapping.h"
#endif
#if __has_include("org/allbinary/game/paint/InputToGameKeyMapping.h")
#include "org/allbinary/game/paint/InputToGameKeyMapping.h"
#endif
#if __has_include("org/allbinary/game/paint/InputToGameKeyMapping.h")
#include "org/allbinary/game/paint/InputToGameKeyMapping.h"
#endif
#if __has_include("org/allbinary/game/paint/help/InputToGameKeyMapping.h")
#include "org/allbinary/game/paint/help/InputToGameKeyMapping.h"
#endif
#if __has_include("org/allbinary/game/paint/help/InputToGameKeyMapping.h")
#include "org/allbinary/game/paint/help/InputToGameKeyMapping.h"
#endif
#if __has_include("org/allbinary/graphics/paint/InputToGameKeyMapping.h")
#include "org/allbinary/graphics/paint/InputToGameKeyMapping.h"
#endif
#if __has_include("org/allbinary/logic/string/InputToGameKeyMapping.h")
#include "org/allbinary/logic/string/InputToGameKeyMapping.h"
#endif
#if __has_include("org/allbinary/logic/string/InputToGameKeyMapping.h")
#include "org/allbinary/logic/string/InputToGameKeyMapping.h"
#endif
#if __has_include("org/allbinary/logic/system/security/licensing/InputToGameKeyMapping.h")
#include "org/allbinary/logic/system/security/licensing/InputToGameKeyMapping.h"
#endif
#if __has_include("org/allbinary/util/InputToGameKeyMapping.h")
#include "org/allbinary/util/InputToGameKeyMapping.h"
#endif


const char* GameInputMappingCanvas_NAME = "GameInputMappingCanvas";
Command* GameInputMappingCanvas_DISPLAY;
Command* GameInputMappingCanvas_DEFAULT;

void GameInputMappingCanvas_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    GameInputMappingCanvas_DISPLAY = ((Command*) [((Command*) [Command alloc]) init:"Controls" :[StringUtil getInstance]->EMPTY_STRING :(Command_staticInit(), Command_SCREEN) :2]);
    GameInputMappingCanvas_DEFAULT = ((Command*) [((Command*) [Command alloc]) init:"Default" :[StringUtil getInstance]->EMPTY_STRING :(Command_staticInit(), Command_SCREEN) :2]);
}

@implementation GameInputMappingCanvas

- (void) initFields {
    
    
    
    
    self->NONE = [GameKeyFactory getInstance]->NONE;
    
    self->selectedGameKey = self->NONE;
    self->selectedInput = self->NONE;
    self->inputFactory = [InputFactory getInstance];
}


- (instancetype) init:(AbeClientInformationInterface*)abeClientInformation :(CommandListener*)commandListener :(AllBinaryGameLayerManager*)allBinaryGameLayerManager :(HelpPaintable*)helpPaintable {
        self = [super init:commandListener :GameInputMappingCanvas_NAME :[allBinaryGameLayerManager getBackgroundBasicColor] :[allBinaryGameLayerManager getForegroundBasicColor]];
        [self initFields];
        [self->logUtil putF:self->commonStrings->START :self :self->commonStrings->CONSTRUCTOR];
        if (helpPaintable == nil) {
            java_throw(java_exception_new("Exception", "Help Paintable Exception"));
        }
        self->abeClientInformation = abeClientInformation;
        self->helpPaintable = ((InputMappingHelpPaintable*) helpPaintable);
        self->inputMapping = [[PlatformInputMappingFactory getInstance] getPersistentInputMappingInstance];
        self->paintable = ((ProcessPaintable*) [((ProcessPaintable*) [ProcessPaintable alloc]) init]);
        self->colorFillPaintable = [[ColorFillPaintableFactory getInstance] getInstance:[allBinaryGameLayerManager getBackgroundBasicColor] :false];
    return self;
}


// throws Exception
- (void) close {
        [super close];
        [self->paintable process];
        self->selectedGameKey = self->NONE;
        self->selectedInput = self->NONE;
        [self update];
}


- (void) initCommands:(CommandListener*)cmdListener {
        [self removeAllCommands];
        [self addCommand:[GameCommandsFactory getInstance]->CLOSE_AND_SHOW_GAME_CANVAS];
        [self addCommand:(GameInputMappingCanvas_staticInit(), GameInputMappingCanvas_DEFAULT)];
        [self addCommand:(GameInputMappingInstructionsCanvas_staticInit(), GameInputMappingInstructionsCanvas_DISPLAY)];
        [self setCommandListener:cmdListener];
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
        [self addGameKey:keyCode :false];
        [super keyPressedByDevice:keyCode :0];
}


- (void) addGameKey:(int32_t)keyCode :(bool)repeated {
        JAVA_TRY {
            [self->logUtil putF:[[[((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]) append:"Raw Device Key Code: "] append:[Integer toHexString:keyCode]] toString] :self :self->gameInputStrings->ADD_KEY_EVENT];
            GameKey* gameKey = [self->inputToGameKeyMapping getInstanceForCanvas:self :keyCode];
            Input* input = [self->inputFactory getInstanceById:keyCode];
            [self processInputMapping:gameKey :input];
        } JAVA_CATCH(Exception, e) {
            [self->logUtil put:"Key Event Error" :self :self->gameInputStrings->ADD_KEY_EVENT :e];
        } JAVA_END_TRY;
}


// throws Exception
- (void) processInputMapping:(GameKey*)gameKey :(Input*)input {
        StringMaker* stringBuffer = ((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]);
        [stringBuffer append:"Start Passed GameKey: "];
        [stringBuffer append:[self->stringUtil toString:gameKey]];
        [stringBuffer append:" Input: "];
        [stringBuffer append:[self->stringUtil toString:input]];
        [self->logUtil putF:[stringBuffer toString] :self :self->commonStrings->PROCESS];
        if (self->selectedGameKey != self->NONE) {
            [self gameActionCrud:gameKey :input];
        } else {
            [self setSelectedAction:gameKey];
        }
}


- (void) setSelectedAction:(GameKey*)gameKey {
        [self->logUtil putF:[[[((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]) append:"Selected GameKey: "] append:[self->stringUtil toString:gameKey]] toString] :self :"setSelectedAction"];
        self->selectedGameKey = gameKey;
        self->selectedInput = self->NONE;
        [self->helpPaintable update:self->selectedGameKey :self->selectedInput];
        [self->repaintBehavior onChangeRepaint:self];
}


// throws Exception
- (void) gameActionCrud:(GameKey*)gameKey :(Input*)input {
        StringMaker* stringBuffer = ((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]);
        [stringBuffer append:"Start GameKey: "];
        [stringBuffer append:[self->stringUtil toString:self->selectedGameKey]];
        [stringBuffer append:" Input: "];
        [stringBuffer append:[self->stringUtil toString:self->selectedInput]];
        [self->logUtil putF:[stringBuffer toString] :self :"gameActionCrud"];
        if (self->selectedInput == self->NONE) {
            BasicArrayList* list = [[self->inputMapping getInputMapping] getMappedInput:self->selectedGameKey];
            bool isInputAlreadyMappedToSelectedAction = [list contains:input];
            if (isInputAlreadyMappedToSelectedAction) {
                [self->logUtil putF:[[[((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]) append:"Already Mapped Input: "] append:[self->stringUtil toString:input]] toString] :self :"gameActionCrud"];
                self->selectedInput = input;
                [self->helpPaintable update:self->selectedGameKey :self->selectedInput];
                [self->repaintBehavior onChangeRepaint:self];
            } else {
                [self addNewMapping:gameKey :input];
            }
        } else if ([self->inputMapping isDelete:input]) {
            [self deleteCurrentMapping];
        } else {
            [self setSelectedAction:gameKey];
        }
}


// throws Exception
- (void) addNewMapping:(GameKey*)gameKey :(Input*)input {
        const char* METHOD_NAME = "addNewMapping";
        [self->logUtil putF:self->commonStrings->START :self :METHOD_NAME];
        bool isInputAlreadyMapped = [[self->inputMapping getInputMapping] isMapped:input];
        if (!isInputAlreadyMapped && ![self->inputMapping isSystemInput:input]) {
            StringMaker* stringBuffer = ((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]);
            [stringBuffer append:"Add Key Mapping : GameKey: "];
            [stringBuffer append:[self->stringUtil toString:self->selectedGameKey]];
            [stringBuffer append:" Input: "];
            [stringBuffer append:[self->stringUtil toString:self->selectedInput]];
            [self->logUtil putF:[stringBuffer toString] :self :METHOD_NAME];
            [[self->inputMapping getInputMapping] add:self->selectedGameKey :input];
            self->selectedInput = input;
            [self update];
        } else {
            [self->logUtil putF:"Unable to add Mapping since one already exists or is MENU, HOME, or BACK key and setting selected action to what it is already mapped to" :self :METHOD_NAME];
            [self setSelectedAction:gameKey];
        }
}


// throws Exception
- (void) deleteCurrentMapping {
        const char* METHOD_NAME = "deleteCurrentMapping";
        BasicArrayList* list = [[self->inputMapping getInputMapping] getMappedInput:self->selectedGameKey];
        if ([list size] > 1) {
            StringMaker* stringBuffer = ((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]);
            [stringBuffer append:"Start GameKey: "];
            [stringBuffer append:"Remove Key Mapping: GameKey: "];
            [stringBuffer append:[self->stringUtil toString:self->selectedGameKey]];
            [stringBuffer append:" Input: "];
            [stringBuffer append:[self->stringUtil toString:self->selectedInput]];
            [self->logUtil putF:[stringBuffer toString] :self :METHOD_NAME];
            [[self->inputMapping getInputMapping] remove:self->selectedGameKey :self->selectedInput];
            self->selectedInput = self->NONE;
            [self update];
        } else {
            [self->logUtil putF:"Can't Remove Last Key Mapping" :self :METHOD_NAME];
        }
}


// throws Exception
- (void) setDefault {
        [self->inputMapping setDefault:self->abeClientInformation];
        [self->helpPaintable update:self->NONE :self->NONE];
        [self->repaintBehavior onChangeRepaint:self];
}


// throws Exception
- (void) update {
        [self->inputMapping update:self->abeClientInformation];
        [self->helpPaintable update:self->selectedGameKey :self->selectedInput];
        [self->repaintBehavior onChangeRepaint:self];
}


- (void) paint:(Graphics*)graphics {
        [self->colorFillPaintable paint:graphics];
        [self->helpPaintable paint:graphics];
        [self->paintable paint:graphics];
        [super paint:graphics];
}

@end

