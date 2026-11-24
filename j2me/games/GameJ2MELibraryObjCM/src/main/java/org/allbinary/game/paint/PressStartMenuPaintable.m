// Generated Code Do Not Modify
#include "org/allbinary/game/paint/PressStartMenuPaintable.h"
#include "javax/microedition/lcdui/Font.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "org/allbinary/AppletUtil.h"
#include "org/allbinary/graphics/Anchor.h"
#include "org/allbinary/graphics/displayable/DisplayInfoSingleton.h"
#include "org/allbinary/graphics/font/MyFontProcessor.h"
#include "org/allbinary/graphics/font/UpdateMyFontProcessor.h"
#include "org/allbinary/input/motion/button/TouchScreenFactory.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/time/TimeDelayHelper.h"
#if __has_include("org/allbinary/logic/string/StringUtil.h")
#include "org/allbinary/logic/string/StringUtil.h"
#endif
#if __has_include("org/allbinary/input/motion/button/TouchScreenFactory.h")
#include "org/allbinary/input/motion/button/TouchScreenFactory.h"
#endif
#if __has_include("javax/microedition/lcdui/Font.h")
#include "javax/microedition/lcdui/Font.h"
#endif



void PressStartMenuPaintable_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation PressStartMenuPaintable

- (void) initFields {
    self->displayInfo = [DisplayInfoSingleton getInstance];
    self->PRESS_START = "Press Screen To Start";
    self->KEY_START = "Press or Click F2 To Begin";
    self->MENU_START = "Press Start From The Menu To Begin";
    self->myFontProcessor = ((UpdateMyFontProcessor*) [((UpdateMyFontProcessor*) [UpdateMyFontProcessor alloc]) init:self]);
    self->startString = [StringUtil getInstance]->EMPTY_STRING;
    self->timeDelayHelper = ((TimeDelayHelper*) [((TimeDelayHelper*) [TimeDelayHelper alloc]) init:1100]);
    self->flash = false;
    self->anchor = (Anchor_staticInit(), Anchor_TOP_LEFT);
    self->beginWidth = 0;
    self->line = 0;
}


- (instancetype) init {
    self = [super init];
    [self initFields];
        if ([[TouchScreenFactory getInstance] isTouch]) {
            self->startString = self->PRESS_START;
        } else if ([AppletUtil isAppletLoader:self]) {
            self->startString = self->KEY_START;
        } else {
            self->startString = self->MENU_START;
        }
    return self;
}


- (void) updateMeasurement:(Graphics*)graphics {
        Font* font = [graphics getFont];
        self->beginWidth = ([[graphics getFont] stringWidth:self->startString] >> 1);
        self->line = (4 * [MyFontProcessor defaultCharWidth:font]) + ([font getHeight] >> 1);
        self->myFontProcessor = [MyFontProcessor getInstance];
}


- (void) paint:(Graphics*)graphics {
        if ([self->timeDelayHelper isTimeTNT]) {
            if ([self isFlash]) {
                [self setFlash:false];
            } else {
                [self setFlash:true];
            }
        }
        if ([self isFlash]) {
            [self->myFontProcessor process:graphics];
            [graphics drawString:self->startString :[self->displayInfo getLastHalfWidth] - self->beginWidth :[self->displayInfo getLastHeight] - self->line :self->anchor];
        }
}


- (void) setFlash:(bool)flash {
        self->flash = flash;
}


- (bool) isFlash {
        return self->flash;
}

@end

