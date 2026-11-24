// Generated Code Do Not Modify
#include "org/allbinary/game/displayable/canvas/GameInputMappingInstructionsCanvas.h"
#include "javax/microedition/lcdui/Command.h"
#include "javax/microedition/lcdui/CommandListener.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "org/allbinary/game/layer/AllBinaryGameLayerManager.h"
#include "org/allbinary/game/paint/ColorFillBasePaintable.h"
#include "org/allbinary/game/paint/ColorFillPaintableFactory.h"
#include "org/allbinary/graphics/Anchor.h"
#include "org/allbinary/graphics/draw/DrawStringUtil.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/game/displayable/canvas/GameCommandCanvas.h"
#if __has_include("org/allbinary/logic/string/StringUtil.h")
#include "org/allbinary/logic/string/StringUtil.h"
#endif
#if __has_include("org/allbinary/logic/string/StringUtil.h")
#include "org/allbinary/logic/string/StringUtil.h"
#endif
#if __has_include("org/allbinary/logic/string/StringUtil.h")
#include "org/allbinary/logic/string/StringUtil.h"
#endif
#if __has_include("org/allbinary/game/paint/ColorFillPaintableFactory.h")
#include "org/allbinary/game/paint/ColorFillPaintableFactory.h"
#endif
#if __has_include("org/allbinary/game/displayable/canvas/Font.h")
#include "org/allbinary/game/displayable/canvas/Font.h"
#endif
#if __has_include("javax/microedition/lcdui/Font.h")
#include "javax/microedition/lcdui/Font.h"
#endif
#if __has_include("javax/microedition/lcdui/Font.h")
#include "javax/microedition/lcdui/Font.h"
#endif
#if __has_include("javax/microedition/lcdui/Font.h")
#include "javax/microedition/lcdui/Font.h"
#endif
#if __has_include("org/allbinary/game/layer/Font.h")
#include "org/allbinary/game/layer/Font.h"
#endif
#if __has_include("org/allbinary/game/paint/Font.h")
#include "org/allbinary/game/paint/Font.h"
#endif
#if __has_include("org/allbinary/game/paint/Font.h")
#include "org/allbinary/game/paint/Font.h"
#endif
#if __has_include("org/allbinary/graphics/Font.h")
#include "org/allbinary/graphics/Font.h"
#endif
#if __has_include("org/allbinary/graphics/draw/Font.h")
#include "org/allbinary/graphics/draw/Font.h"
#endif
#if __has_include("org/allbinary/logic/string/Font.h")
#include "org/allbinary/logic/string/Font.h"
#endif


Command* GameInputMappingInstructionsCanvas_DISPLAY;
Command* GameInputMappingInstructionsCanvas_CLOSE;
const char* GameInputMappingInstructionsCanvas_NAME = "GameInputMappingInstructionsCanvas";

void GameInputMappingInstructionsCanvas_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    GameInputMappingInstructionsCanvas_DISPLAY = ((Command*) [((Command*) [Command alloc]) init:"Help" :[StringUtil getInstance]->EMPTY_STRING :(Command_staticInit(), Command_SCREEN) :1]);
    GameInputMappingInstructionsCanvas_CLOSE = ((Command*) [((Command*) [Command alloc]) init:"Close" :[StringUtil getInstance]->EMPTY_STRING :(Command_staticInit(), Command_SCREEN) :1]);
}

@implementation GameInputMappingInstructionsCanvas

- (void) initFields {
    self->drawStringUtil = [DrawStringUtil getInstance];
    self->TITLE = "Input Instructions";
    self->instructions = ((const char**) java_array_from(sizeof(const char*), sizeof((const char*[]){ "Add Input Mapping:", "1. Select the desired action by generating a currently defined input for a given action.", "(Example: Press the '1' key to select the Fire action)", "2. Make the newly desired input for the selected action.", "(Example: Press 'f' to add it to the selected action)", "Note: If the input is already mapped to another action then it will not be added. You", "will need to deleted from the other action before adding it to another.", "Warning: Not all keys map for a given platform and show as Unknown.", [StringUtil getInstance]->EMPTY_STRING, "Remove Input Mapping:", "1. Select the desired action by generating a currently defined input for a given action.", "(Example: Press the key '1' to select the Fire action)", "2. Select a mapped input for the selected action.", "(Example: Press the key '1' to select the '1' key input for the selected Fire action)", "3. Press the Delete Key." }) / sizeof(const char*), (const char*[]){ "Add Input Mapping:", "1. Select the desired action by generating a currently defined input for a given action.", "(Example: Press the '1' key to select the Fire action)", "2. Make the newly desired input for the selected action.", "(Example: Press 'f' to add it to the selected action)", "Note: If the input is already mapped to another action then it will not be added. You", "will need to deleted from the other action before adding it to another.", "Warning: Not all keys map for a given platform and show as Unknown.", [StringUtil getInstance]->EMPTY_STRING, "Remove Input Mapping:", "1. Select the desired action by generating a currently defined input for a given action.", "(Example: Press the key '1' to select the Fire action)", "2. Select a mapped input for the selected action.", "(Example: Press the key '1' to select the '1' key input for the selected Fire action)", "3. Press the Delete Key." }));
    
    self->anchor = (Anchor_staticInit(), Anchor_TOP_LEFT);
}


- (instancetype) init:(CommandListener*)commandListener :(AllBinaryGameLayerManager*)allBinaryGameLayerManager {
        self = [super init:commandListener :GameInputMappingInstructionsCanvas_NAME :[allBinaryGameLayerManager getBackgroundBasicColor] :[allBinaryGameLayerManager getForegroundBasicColor]];
        [self initFields];
        [self->logUtil putF:self->commonStrings->START :self :self->commonStrings->CONSTRUCTOR];
        self->colorFillPaintable = [[ColorFillPaintableFactory getInstance] getInstance:[allBinaryGameLayerManager getBackgroundBasicColor] :false];
    return self;
}


- (void) initCommands:(CommandListener*)cmdListener {
        [self removeAllCommands];
        [self addCommand:(GameInputMappingInstructionsCanvas_staticInit(), GameInputMappingInstructionsCanvas_CLOSE)];
        [self setCommandListener:cmdListener];
}


- (void) paint:(Graphics*)graphics {
        [self->myFontProcessor process:graphics];
        [self->colorFillPaintable paint:graphics];
        int32_t halfWidth = [self->displayInfo getLastHalfWidth];
        int32_t beginWidth = ([[graphics getFont] stringWidth:self->TITLE] >> 1);
        [graphics setColor:self->foregroundColor];
        [graphics drawString:self->TITLE :halfWidth - beginWidth :self->fontHeight :self->anchor];
        [self->drawStringUtil drawCenterStrings:graphics :self->instructions :[self->displayInfo getLastWidth] :self->fontHeight :halfWidth :3 * self->fontHeight];
        [super paint:graphics];
}

@end

