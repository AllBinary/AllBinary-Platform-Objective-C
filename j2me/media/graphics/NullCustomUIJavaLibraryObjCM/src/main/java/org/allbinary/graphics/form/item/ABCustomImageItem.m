// Generated Code Do Not Modify
#include "org/allbinary/graphics/form/item/ABCustomImageItem.h"
#include "javax/microedition/lcdui/Image.h"
#include "javax/microedition/lcdui/NullImage.h"
#include "org/allbinary/graphics/color/BasicColor.h"
#include "org/allbinary/graphics/form/item/ABCustomItem.h"



void ABCustomImageItem_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation ABCustomImageItem

- (void) initFields {
    self->yOffset = 0;
}


- (instancetype) init:(const char*)label :(Image*)image :(int32_t)layout :(const char*)altText :(BasicColor*)basicColor :(int32_t)yOffset {
        self = [super init:label :basicColor :basicColor];
        [self initFields];
    return self;
}


- (Image*) getImage {
        return (NullImage_staticInit(), NullImage_NULL_IMAGE);
}

@end

