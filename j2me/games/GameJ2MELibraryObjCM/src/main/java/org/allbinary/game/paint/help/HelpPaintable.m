// Generated Code Do Not Modify
#include "org/allbinary/game/paint/help/HelpPaintable.h"
#include "javax/microedition/lcdui/Font.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "org/allbinary/graphics/Anchor.h"
#include "org/allbinary/graphics/color/BasicColor.h"
#include "org/allbinary/graphics/displayable/DisplayInfoSingleton.h"
#include "org/allbinary/graphics/font/MyFontProcessor.h"
#include "org/allbinary/graphics/font/UpdateMyFontProcessor.h"
#include "org/allbinary/logic/NullUtil.h"
#include "org/allbinary/logic/string/StringUtil.h"



void HelpPaintable_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation HelpPaintable

- (void) initFields {
    self->displayInfo = [DisplayInfoSingleton getInstance];
    self->updateMyFontProcessor = [((UpdateMyFontProcessor*) [UpdateMyFontProcessor alloc]) init:self];
    self->myFontProcessor = self->updateMyFontProcessor;
    self->anchor = (Anchor_staticInit(), Anchor_TOP_LEFT);
    
    self->inputInfo = [[StringUtil getInstance] getArrayInstance];
    
    self->titleBeginWidth = 0;
    self->beginWidthArray = [NullUtil getInstance]->NULL_INT_ARRAY;
    self->charHeight = 0;
}


- (instancetype) init:(const char*)title :(BasicColor*)backgroundBasicColor :(BasicColor*)basicColor {
    self = [super init];
    [self initFields];
        self->title = title;
        self->basicColor = basicColor;
    return self;
}


- (void) updateMeasurement:(Graphics*)graphics {
        Font* font = [graphics getFont];
        self->titleBeginWidth = ([font stringWidth:self->title] >> 1);
        self->charHeight = [font getHeight];
        int32_t size = java_array_length(self->inputInfo);
        for (int32_t index = 0; index < size; index++) {
            self->beginWidthArray[index] = ([font stringWidth:self->inputInfo[index]] >> 1);
        }
        self->myFontProcessor = [MyFontProcessor getInstance];
}


- (void) setInputInfoP:(const char**)inputInfo {
        self->inputInfo = inputInfo;
        self->beginWidthArray = ((int32_t*) java_array_new(sizeof(int32_t), java_array_length(self->inputInfo)));
        self->myFontProcessor = self->updateMyFontProcessor;
}


- (void) paint:(Graphics*)graphics {
        [self->myFontProcessor process:graphics];
        int32_t halfWidth = [self->displayInfo getLastHalfWidth];
        [graphics setColor:[self->basicColor intValue]];
        [graphics drawString:self->title :halfWidth - self->titleBeginWidth :self->charHeight :self->anchor];
        int32_t size = java_array_length(self->inputInfo);
        for (int32_t index = 0; index < size; index++) {
            [graphics drawString:self->inputInfo[index] :halfWidth - self->beginWidthArray[index] :(index + 3) * self->charHeight :self->anchor];
        }
}

@end

