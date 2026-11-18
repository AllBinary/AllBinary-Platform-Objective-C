// Generated Code Do Not Modify
#include "org/allbinary/graphics/paint/StringLocationPaintable.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "org/allbinary/graphics/paint/LocationPaintable.h"



void StringLocationPaintable_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation StringLocationPaintable

- (void) initFields {
    
}


- (instancetype) init:(const char*)value {
    self = [super init];
    [self initFields];
        self->value = value;
    return self;
}


- (void) paintXY:(Graphics*)graphics :(int32_t)x :(int32_t)y {
        [graphics drawString:self->value :x :y :0];
}

@end

