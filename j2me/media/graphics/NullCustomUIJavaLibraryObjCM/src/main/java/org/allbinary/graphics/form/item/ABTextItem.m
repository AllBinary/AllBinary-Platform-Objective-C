// Generated Code Do Not Modify
#include "org/allbinary/graphics/form/item/ABTextItem.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "org/allbinary/graphics/color/BasicColor.h"
#include "org/allbinary/graphics/form/item/CustomCustomItem.h"
#include "org/allbinary/graphics/form/item/ABCustomItemInterface.h"
#include "org/allbinary/graphics/form/item/ABStringComponent.h"



void ABTextItem_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation ABTextItem


- (instancetype) init:(const char*)label :(int32_t)layout :(const char*)altText :(BasicColor*)backgroundBasicColor :(BasicColor*)foregroundBasicColor {
        self = [super init:label :backgroundBasicColor :foregroundBasicColor];
    return self;
}


- (void) keyPressed:(int32_t)keyCode {
}


- (void) paintUnselected:(Graphics*)graphics :(int32_t)x :(int32_t)y {
}


- (ABStringComponent*) getLabelStringComponent {
        return (ABStringComponent_staticInit(), ABStringComponent_NULL_STRING_COMPONENT);
}


- (int32_t) getMinimumWidth {
        return [super getMinimumWidth];
}


- (int32_t) getMinimumHeight {
        return [super getMinimumHeight];
}


- (const char*) getLabel {
        return [super getLabel];
}


- (void) paintXY:(Graphics*)graphics :(int32_t)x :(int32_t)y {
        [super paintXY:graphics :x :y];
}

@end

