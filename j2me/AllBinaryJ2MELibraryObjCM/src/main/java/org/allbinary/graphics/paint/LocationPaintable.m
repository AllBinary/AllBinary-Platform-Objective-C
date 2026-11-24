// Generated Code Do Not Modify
#include "org/allbinary/graphics/paint/LocationPaintable.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "org/allbinary/graphics/paint/LocationPaintableInterface.h"


static LocationPaintable* LocationPaintable_instance;

void LocationPaintable_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    LocationPaintable_instance = ((LocationPaintable*) [((LocationPaintable*) [LocationPaintable alloc]) init]);
}

@implementation LocationPaintable

- (instancetype) init {
    self = [super init];
    return self;
}


+ (LocationPaintable*) getInstance {
        return (LocationPaintable_staticInit(), LocationPaintable_instance);
}


- (void) paintXY:(Graphics*)graphics :(int32_t)x :(int32_t)y {
}

@end

