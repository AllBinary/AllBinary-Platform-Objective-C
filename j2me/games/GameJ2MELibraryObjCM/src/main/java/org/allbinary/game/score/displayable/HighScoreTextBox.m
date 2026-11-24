// Generated Code Do Not Modify
#include "org/allbinary/game/score/displayable/HighScoreTextBox.h"
#include "javax/microedition/lcdui/CommandListener.h"
#include "javax/microedition/lcdui/Font.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "javax/microedition/lcdui/TextField.h"
#include "org/allbinary/PostGameCommandFactory.h"
#include "org/allbinary/game/GameInfo.h"
#include "org/allbinary/game/score/HighScore.h"
#include "org/allbinary/game/score/HighScoresHelperBaseInterface.h"
#include "org/allbinary/game/score/HighScoresFactoryInterface.h"
#include "org/allbinary/graphics/color/BasicColor.h"
#include "org/allbinary/graphics/color/BasicColorFactory.h"
#include "org/allbinary/graphics/paint/NullPaintable.h"
#include "org/allbinary/graphics/paint/Paintable.h"
#include "org/allbinary/graphics/paint/SimpleTextPaintable.h"
#include "org/allbinary/input/event/VirtualKeyboardEventHandler.h"
#include "org/allbinary/logic/system/os/GenericOperatingSystem.h"
#include "org/allbinary/logic/system/os/OperatingSystemFactory.h"
#include "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.h"
#include "org/allbinary/logic/system/security/licensing/InApplicationPurchaseFactory.h"
#include "org/allbinary/game/score/displayable/HighScoreUtil.h"
#if __has_include("org/allbinary/graphics/color/BasicColorFactory.h")
#include "org/allbinary/graphics/color/BasicColorFactory.h"
#endif
#if __has_include("org/allbinary/logic/system/os/OperatingSystemFactory.h")
#include "org/allbinary/logic/system/os/OperatingSystemFactory.h"
#endif
#if __has_include("org/allbinary/logic/system/security/licensing/InApplicationPurchaseFactory.h")
#include "org/allbinary/logic/system/security/licensing/InApplicationPurchaseFactory.h"
#endif
#if __has_include("org/allbinary/game/score/displayable/ABTextFieldItem.h")
#include "org/allbinary/game/score/displayable/ABTextFieldItem.h"
#endif
#if __has_include("javax/microedition/lcdui/ABTextFieldItem.h")
#include "javax/microedition/lcdui/ABTextFieldItem.h"
#endif
#if __has_include("javax/microedition/lcdui/ABTextFieldItem.h")
#include "javax/microedition/lcdui/ABTextFieldItem.h"
#endif
#if __has_include("javax/microedition/lcdui/ABTextFieldItem.h")
#include "javax/microedition/lcdui/ABTextFieldItem.h"
#endif
#if __has_include("javax/microedition/lcdui/ABTextFieldItem.h")
#include "javax/microedition/lcdui/ABTextFieldItem.h"
#endif
#if __has_include("org/allbinary/ABTextFieldItem.h")
#include "org/allbinary/ABTextFieldItem.h"
#endif
#if __has_include("org/allbinary/game/ABTextFieldItem.h")
#include "org/allbinary/game/ABTextFieldItem.h"
#endif
#if __has_include("org/allbinary/game/score/ABTextFieldItem.h")
#include "org/allbinary/game/score/ABTextFieldItem.h"
#endif
#if __has_include("org/allbinary/game/score/ABTextFieldItem.h")
#include "org/allbinary/game/score/ABTextFieldItem.h"
#endif
#if __has_include("org/allbinary/game/score/ABTextFieldItem.h")
#include "org/allbinary/game/score/ABTextFieldItem.h"
#endif
#if __has_include("org/allbinary/graphics/color/ABTextFieldItem.h")
#include "org/allbinary/graphics/color/ABTextFieldItem.h"
#endif
#if __has_include("org/allbinary/graphics/color/ABTextFieldItem.h")
#include "org/allbinary/graphics/color/ABTextFieldItem.h"
#endif
#if __has_include("org/allbinary/graphics/form/item/ABTextFieldItem.h")
#include "org/allbinary/graphics/form/item/ABTextFieldItem.h"
#endif
#if __has_include("org/allbinary/graphics/paint/ABTextFieldItem.h")
#include "org/allbinary/graphics/paint/ABTextFieldItem.h"
#endif
#if __has_include("org/allbinary/graphics/paint/ABTextFieldItem.h")
#include "org/allbinary/graphics/paint/ABTextFieldItem.h"
#endif
#if __has_include("org/allbinary/graphics/paint/ABTextFieldItem.h")
#include "org/allbinary/graphics/paint/ABTextFieldItem.h"
#endif
#if __has_include("org/allbinary/input/event/ABTextFieldItem.h")
#include "org/allbinary/input/event/ABTextFieldItem.h"
#endif
#if __has_include("org/allbinary/logic/system/os/ABTextFieldItem.h")
#include "org/allbinary/logic/system/os/ABTextFieldItem.h"
#endif
#if __has_include("org/allbinary/logic/system/os/ABTextFieldItem.h")
#include "org/allbinary/logic/system/os/ABTextFieldItem.h"
#endif
#if __has_include("org/allbinary/logic/system/security/licensing/ABTextFieldItem.h")
#include "org/allbinary/logic/system/security/licensing/ABTextFieldItem.h"
#endif
#if __has_include("org/allbinary/logic/system/security/licensing/ABTextFieldItem.h")
#include "org/allbinary/logic/system/security/licensing/ABTextFieldItem.h"
#endif
#if __has_include("org/allbinary/PostGameCommandFactory.h")
#include "org/allbinary/PostGameCommandFactory.h"
#endif
#if __has_include("org/allbinary/game/score/displayable/ABTextFieldItem.h")
#include "org/allbinary/game/score/displayable/ABTextFieldItem.h"
#endif
#if __has_include("javax/microedition/lcdui/ABTextFieldItem.h")
#include "javax/microedition/lcdui/ABTextFieldItem.h"
#endif
#if __has_include("javax/microedition/lcdui/ABTextFieldItem.h")
#include "javax/microedition/lcdui/ABTextFieldItem.h"
#endif
#if __has_include("javax/microedition/lcdui/ABTextFieldItem.h")
#include "javax/microedition/lcdui/ABTextFieldItem.h"
#endif
#if __has_include("javax/microedition/lcdui/ABTextFieldItem.h")
#include "javax/microedition/lcdui/ABTextFieldItem.h"
#endif
#if __has_include("org/allbinary/ABTextFieldItem.h")
#include "org/allbinary/ABTextFieldItem.h"
#endif
#if __has_include("org/allbinary/game/ABTextFieldItem.h")
#include "org/allbinary/game/ABTextFieldItem.h"
#endif
#if __has_include("org/allbinary/game/score/ABTextFieldItem.h")
#include "org/allbinary/game/score/ABTextFieldItem.h"
#endif
#if __has_include("org/allbinary/game/score/ABTextFieldItem.h")
#include "org/allbinary/game/score/ABTextFieldItem.h"
#endif
#if __has_include("org/allbinary/game/score/ABTextFieldItem.h")
#include "org/allbinary/game/score/ABTextFieldItem.h"
#endif
#if __has_include("org/allbinary/graphics/color/ABTextFieldItem.h")
#include "org/allbinary/graphics/color/ABTextFieldItem.h"
#endif
#if __has_include("org/allbinary/graphics/color/ABTextFieldItem.h")
#include "org/allbinary/graphics/color/ABTextFieldItem.h"
#endif
#if __has_include("org/allbinary/graphics/form/item/ABTextFieldItem.h")
#include "org/allbinary/graphics/form/item/ABTextFieldItem.h"
#endif
#if __has_include("org/allbinary/graphics/paint/ABTextFieldItem.h")
#include "org/allbinary/graphics/paint/ABTextFieldItem.h"
#endif
#if __has_include("org/allbinary/graphics/paint/ABTextFieldItem.h")
#include "org/allbinary/graphics/paint/ABTextFieldItem.h"
#endif
#if __has_include("org/allbinary/graphics/paint/ABTextFieldItem.h")
#include "org/allbinary/graphics/paint/ABTextFieldItem.h"
#endif
#if __has_include("org/allbinary/input/event/ABTextFieldItem.h")
#include "org/allbinary/input/event/ABTextFieldItem.h"
#endif
#if __has_include("org/allbinary/logic/system/os/ABTextFieldItem.h")
#include "org/allbinary/logic/system/os/ABTextFieldItem.h"
#endif
#if __has_include("org/allbinary/logic/system/os/ABTextFieldItem.h")
#include "org/allbinary/logic/system/os/ABTextFieldItem.h"
#endif
#if __has_include("org/allbinary/logic/system/security/licensing/ABTextFieldItem.h")
#include "org/allbinary/logic/system/security/licensing/ABTextFieldItem.h"
#endif
#if __has_include("org/allbinary/logic/system/security/licensing/ABTextFieldItem.h")
#include "org/allbinary/logic/system/security/licensing/ABTextFieldItem.h"
#endif



void HighScoreTextBox_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation HighScoreTextBox

- (void) initFields {
    self->virtualKeyboardEventHandler = [VirtualKeyboardEventHandler getInstance];
    
    self->pleaseWait = ((SimpleTextPaintable*) [((SimpleTextPaintable*) [SimpleTextPaintable alloc]) init:self->commonStrings->PLEASE_WAIT :[BasicColorFactory getInstance]->WHITE]);
    self->paintable = [NullPaintable getInstance];
    self->submitted = false;
}


- (instancetype) init:(HighScoresFactoryInterface*)highScoresFactoryInterface :(HighScoresHelperBaseInterface*)highScoresHelper :(AbeClientInformationInterface*)abeClientInformation :(GameInfo*)gameInfo :(CommandListener*)cmdListener :(const char*)name :(HighScore*)highScore :(BasicColor*)backgrounBasicColor :(BasicColor*)foregroundBasicColor {
        self = [super init:cmdListener :"New High Score Enter Name:" :name :12 :(TextField_staticInit(), TextField_ANY) :[Font getDefaultFont] :backgrounBasicColor :foregroundBasicColor];
        [self initFields];
        self->highScoreUtil = ((HighScoreUtil*) [((HighScoreUtil*) [HighScoreUtil alloc]) init:highScoresFactoryInterface :highScoresHelper :abeClientInformation :gameInfo :cmdListener :name :highScore]);
        GenericOperatingSystem* operatingSystemInterface = [[OperatingSystemFactory getInstance] getOperatingSystemInstance];
        if ([operatingSystemInterface isOverScan]) {
            const char* username = [[InApplicationPurchaseFactory getInstance] getUserName];
            [[self getTextFieldItem] setString:username];
        }
    return self;
}


- (void) initCommands:(CommandListener*)cmdListener {
        [self removeAllCommands];
        [[PostGameCommandFactory getInstance] addCommands:self];
        [self addCommand:(HighScoreUtil_staticInit(), HighScoreUtil_SUBMIT_TEXTBOX_COMMAND)];
        [self setCommandListener:cmdListener];
}


- (void) open {
        [self->virtualKeyboardEventHandler open];
        self->paintable = [NullPaintable getInstance];
        [super open];
}


// throws Exception
- (void) close {
        [self->virtualKeyboardEventHandler close];
        self->paintable = self->pleaseWait;
        [self->repaintBehavior onChangeRepaint:self];
        [super close];
        [self removeCommand:(HighScoreUtil_staticInit(), HighScoreUtil_SUBMIT_TEXTBOX_COMMAND)];
        [self update];
        if (self->submitted) {
            [self->highScoreUtil saveHighScore];
        } else {
        }
        self->paintable = [NullPaintable getInstance];
        [self->repaintBehavior onChangeRepaint:self];
}


// throws Exception
- (void) update {
        const char* name = [[self getTextFieldItem] getString];
        [self->highScoreUtil update:name];
        [super update];
}


- (void) paint:(Graphics*)graphics {
        [super paint:graphics];
        [self->paintable paint:graphics];
}


- (void) saveHighScore {
        [self->highScoreUtil saveHighScore];
}


- (void) submit {
        [self->highScoreUtil submit:self];
}

@end

