// Generated Code Do Not Modify
#include "org/allbinary/game/paint/OwnershipPaintable.h"
#include "javax/microedition/lcdui/Font.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "org/allbinary/graphics/Anchor.h"
#include "org/allbinary/graphics/color/BasicColor.h"
#include "org/allbinary/graphics/color/BasicColorFactory.h"
#include "org/allbinary/graphics/displayable/DisplayInfoSingleton.h"
#include "org/allbinary/graphics/font/MyFontProcessor.h"
#include "org/allbinary/graphics/font/UpdateMyFontProcessor.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"



void OwnershipPaintable_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation OwnershipPaintable

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
    self->displayInfo = [DisplayInfoSingleton getInstance];
    self->myFontProcessor = [((UpdateMyFontProcessor*) [UpdateMyFontProcessor alloc]) init:self];
    self->COPYRIGHT = "AllBinary Copyright (c) 2011";
    self->basicColor = [BasicColorFactory getInstance]->WHITE;
    self->color = [self->basicColor intValue];
    self->anchor = (Anchor_staticInit(), Anchor_TOP_LEFT);
    self->COPYRIGHT_Y = 0;
    self->beginWidth = 0;
}


+ (OwnershipPaintable*) getInstance {
        return [((OwnershipPaintable*) [OwnershipPaintable alloc]) init];
}


- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


- (void) updateMeasurement:(Graphics*)graphics {
        Font* font = [graphics getFont];
        self->COPYRIGHT_Y = 2 * [font getHeight];
        self->beginWidth = ([font stringWidth:self->COPYRIGHT] >> 1);
        self->myFontProcessor = [MyFontProcessor getInstance];
}


- (void) setBasicColorP:(BasicColor*)basicColor {
        self->basicColor = basicColor;
        self->color = [basicColor intValue];
}


- (BasicColor*) getBasicColorP {
        return self->basicColor;
}


- (void) paint:(Graphics*)graphics {
        [self->myFontProcessor process:graphics];
        [graphics setColor:self->color];
        int32_t halfWidth = [self->displayInfo getLastHalfWidth];
        int32_t height = [self->displayInfo getLastHeight];
        [graphics drawString:self->COPYRIGHT :halfWidth - self->beginWidth :height - self->COPYRIGHT_Y :self->anchor];
}

@end

