// Generated Code Do Not Modify
#include "org/allbinary/graphics/form/item/SelectableTextItem.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "org/allbinary/graphics/color/BasicColor.h"
#include "org/allbinary/graphics/form/item/ABTextItem.h"
#include "org/allbinary/graphics/form/item/ABStringComponent.h"
#if __has_include("org/allbinary/graphics/color/BasicColor.h")
#include "org/allbinary/graphics/color/BasicColor.h"
#endif



void SelectableTextItem_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation SelectableTextItem


- (instancetype) init:(const char*)label :(int32_t)layout :(const char*)altText :(BasicColor*)backgroundBasicColor :(BasicColor*)foregroundBasicColor {
        self = [super init:label :layout :altText :backgroundBasicColor :foregroundBasicColor];
    return self;
}


- (bool) isFocusable {
        return true;
}


- (void) paintXY:(Graphics*)graphics :(int32_t)x :(int32_t)y {
        [self->myFontProcessor process:graphics];
        ABStringComponent* stringComponent = [self getLabelStringComponent];
        if (stringComponent != nil) {
            [graphics setColor:[[stringComponent getForegroundBasicColor] intValue]];
        }
        [graphics drawString:[self getLabel] :x + 2 :y :0];
}

@end

