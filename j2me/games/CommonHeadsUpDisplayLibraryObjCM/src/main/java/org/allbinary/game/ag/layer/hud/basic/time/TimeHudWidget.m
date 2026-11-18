// Generated Code Do Not Modify
#include "org/allbinary/game/ag/layer/hud/basic/time/TimeHudWidget.h"
#include "javax/microedition/lcdui/Font.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "org/allbinary/graphics/color/BasicColor.h"
#include "org/allbinary/graphics/font/MyFontProcessor.h"
#include "org/allbinary/logic/math/PrimitiveLongSingleton.h"
#include "org/allbinary/game/ag/layer/hud/basic/time/HudTimer.h"



void TimeHudWidget_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation TimeHudWidget

- (void) initFields {
    self->TIME_STRING = "Time ";
    self->TIME_CHAR_ARRAY = ((uint16_t*) java_array_from(sizeof(uint16_t), sizeof((uint16_t[]){ u'T', u'i', u'm', u'e', u' ' }) / sizeof(uint16_t), (uint16_t[]){ u'T', u'i', u'm', u'e', u' ' }));
    self->offset = 0;
    self->string = [PrimitiveLongSingleton getInstance]->ZERO;
    self->totalDigits = 1;
    
}


// throws Exception
+ (TimeHudWidget*) getInstance:(int32_t)location :(int32_t)direction :(BasicColor*)basicColor :(HudTimer*)timer {
        return [((TimeHudWidget*) [TimeHudWidget alloc]) init:location :direction :2 :basicColor :timer];
}


- (instancetype) init:(int32_t)location :(int32_t)direction :(int32_t)bufferZone :(BasicColor*)basicColor :(HudTimer*)timer {
        self = [super init:location :direction :bufferZone :basicColor];
        [self initFields];
        self->timer = timer;
        [self set];
        self->updateMaxHeight = 14;
    return self;
}


- (void) updateMeasurement:(Graphics*)graphics {
        Font* font = [graphics getFont];
        self->updateMaxWidth = [font getSize] * 5;
        self->offset = [font stringWidth:self->TIME_STRING] + [MyFontProcessor defaultStringWidth:font :3];
        [super updateMeasurement:graphics];
}


- (void) update {
        [self->timer update];
        [self set];
}


- (void) set {
        self->string = [self->timer getTimeChars];
        self->totalDigits = [self->timer getCurrentTotalDigits];
}


- (HudTimer*) getTimer {
        return self->timer;
}


- (void) paint:(Graphics*)graphics {
        [super paintDX:graphics :self->TIME_CHAR_ARRAY :0 :java_array_length(self->TIME_CHAR_ARRAY) :self->string :0 :self->totalDigits :self->offset];
}

@end

