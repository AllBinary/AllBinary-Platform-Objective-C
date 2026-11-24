// Generated Code Do Not Modify
#include "org/allbinary/media/AllBinaryVisualDebugVibration.h"
#include "javax/microedition/lcdui/Font.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "org/allbinary/graphics/Anchor.h"
#include "org/allbinary/graphics/displayable/DisplayInfoSingleton.h"
#include "org/allbinary/graphics/font/MyFontProcessor.h"
#include "org/allbinary/graphics/font/UpdateMyFontProcessor.h"
#include "org/allbinary/time/TimeDelayHelper.h"
#include "org/allbinary/media/AllBinaryVibrationME.h"



void AllBinaryVisualDebugVibration_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation AllBinaryVisualDebugVibration

- (void) initFields {
    self->displayInfoSingleton = [DisplayInfoSingleton getInstance];
    self->timeDelayHelper = ((TimeDelayHelper*) [((TimeDelayHelper*) [TimeDelayHelper alloc]) init:(Integer_staticInit(), Integer_MAX_VALUE)]);
    self->VIBRATING = "Vibrating";
    self->myFontProcessor = ((UpdateMyFontProcessor*) [((UpdateMyFontProcessor*) [UpdateMyFontProcessor alloc]) init:self]);
    self->anchor = (Anchor_staticInit(), Anchor_TOP_LEFT);
    self->width = 0;
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


- (void) updateMeasurement:(Graphics*)graphics {
        Font* font = [graphics getFont];
        self->width = [font stringWidth:self->VIBRATING];
        self->myFontProcessor = [MyFontProcessor getInstance];
}


- (void) vibrate:(int32_t)duration :(int32_t)type :(int32_t)volume {
        self->timeDelayHelper->delay = duration;
}


- (void) paint:(Graphics*)graphics {
        if ([self->timeDelayHelper isTimeTNT]) {
            self->timeDelayHelper->delay = (Integer_staticInit(), Integer_MAX_VALUE);
            [self->myFontProcessor process:graphics];
            [graphics drawString:self->VIBRATING :[self->displayInfoSingleton getLastHalfWidth] - (self->width >> 1) :0 :self->anchor];
        }
}

@end

