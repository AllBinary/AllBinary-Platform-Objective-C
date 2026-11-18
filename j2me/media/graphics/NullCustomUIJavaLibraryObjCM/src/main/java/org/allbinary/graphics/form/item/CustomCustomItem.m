// Generated Code Do Not Modify
#include "org/allbinary/graphics/form/item/CustomCustomItem.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "org/allbinary/graphics/color/BasicColor.h"
#include "org/allbinary/graphics/font/MyFontProcessor.h"
#include "org/allbinary/graphics/font/UpdateMyFontProcessor.h"
#include "org/allbinary/graphics/form/item/ABCustomItem.h"



void CustomCustomItem_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation CustomCustomItem

- (void) initFields {
    self->updateMyFontProcessor = [((UpdateMyFontProcessor*) [UpdateMyFontProcessor alloc]) init:self];
    self->myFontProcessor = self->updateMyFontProcessor;
}


- (instancetype) init:(const char*)label :(BasicColor*)backgroundBasicColor :(BasicColor*)foregroundBasicColor {
        self = [super init:label :backgroundBasicColor :foregroundBasicColor];
        [self initFields];
    return self;
}


- (void) updateMeasurement:(Graphics*)graphics {
}

@end

