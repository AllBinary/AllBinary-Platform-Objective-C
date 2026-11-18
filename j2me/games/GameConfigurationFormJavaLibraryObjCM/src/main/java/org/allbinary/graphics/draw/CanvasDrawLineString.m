// Generated Code Do Not Modify
#include "org/allbinary/graphics/draw/CanvasDrawLineString.h"
#include "javax/microedition/lcdui/Font.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "org/allbinary/graphics/font/MyFontProcessor.h"
#include "org/allbinary/graphics/font/UpdateMyFontProcessor.h"
#include "org/allbinary/graphics/draw/DrawStringUtil.h"


CanvasDrawLineString* CanvasDrawLineString_NULL_CANVAS_DRAW_LINE_STRING;

void CanvasDrawLineString_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    CanvasDrawLineString_NULL_CANVAS_DRAW_LINE_STRING = [((CanvasDrawLineString*) [CanvasDrawLineString alloc]) init:0 :0];
}

@implementation CanvasDrawLineString

- (void) initFields {
    self->drawStringUtil = [DrawStringUtil getInstance];
    self->myFontProcessor = [((UpdateMyFontProcessor*) [UpdateMyFontProcessor alloc]) init:self];
    
    
    self->fontHeight = 0;
}


- (instancetype) init:(int32_t)x :(int32_t)y {
    self = [super init];
    [self initFields];
        self->x = x;
        self->y = y;
    return self;
}


- (void) updateMeasurement:(Graphics*)graphics {
        Font* font = [graphics getFont];
        self->fontHeight = [font getHeight];
        self->myFontProcessor = [MyFontProcessor getInstance];
}


- (void) paint:(Graphics*)graphics :(const char*)string :(int32_t)line {
        [self->myFontProcessor process:graphics];
        [self->drawStringUtil drawCenterString:graphics :string :0 :((int32_t) strlen(string)) :self->x :self->y + (line * self->fontHeight)];
}

@end

