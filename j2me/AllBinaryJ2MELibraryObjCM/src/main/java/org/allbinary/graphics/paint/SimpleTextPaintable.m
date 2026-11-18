// Generated Code Do Not Modify
#include "org/allbinary/graphics/paint/SimpleTextPaintable.h"
#include "javax/microedition/lcdui/Font.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "org/allbinary/graphics/Anchor.h"
#include "org/allbinary/graphics/color/BasicColor.h"
#include "org/allbinary/graphics/displayable/DisplayInfoSingleton.h"
#include "org/allbinary/graphics/font/MyFontProcessor.h"
#include "org/allbinary/graphics/font/UpdateMyFontProcessor.h"
#include "org/allbinary/graphics/paint/Paintable.h"



void SimpleTextPaintable_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation SimpleTextPaintable

- (void) initFields {
    self->displayInfoSingleton = [DisplayInfoSingleton getInstance];
    self->updateMyFontProcessor = [((UpdateMyFontProcessor*) [UpdateMyFontProcessor alloc]) init:self];
    self->myFontProcessor = self->updateMyFontProcessor;
    
    
    self->topScoresWidth = 0;
    self->fontHeight = 0;
    self->anchor = (Anchor_staticInit(), Anchor_TOP_LEFT);
}


- (instancetype) init:(const char*)text :(BasicColor*)basicColor {
    self = [super init];
    [self initFields];
        self->text = text;
        self->basicColor = basicColor;
    return self;
}


- (void) updateMeasurement:(Graphics*)graphics {
        Font* font = [graphics getFont];
        self->topScoresWidth = ([font stringWidth:self->text] >> 1);
        self->fontHeight = [font getHeight];
        self->myFontProcessor = [MyFontProcessor getInstance];
}


- (void) paint:(Graphics*)graphics {
        [self->myFontProcessor process:graphics];
        int32_t width = [self->displayInfoSingleton getLast][self->displayInfoSingleton->WIDTH];
        [graphics setColor:[[self getBasicColorP] intValue]];
        [graphics drawString:self->text :(width >> 1) - self->topScoresWidth :self->fontHeight :self->anchor];
}


- (void) setBasicColorP:(BasicColor*)basicColor {
        self->basicColor = basicColor;
}


- (BasicColor*) getBasicColorP {
        return self->basicColor;
}


- (void) setText:(const char*)text {
        self->text = text;
        self->myFontProcessor = self->updateMyFontProcessor;
}


- (const char*) getText {
        return self->text;
}

@end

