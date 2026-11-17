// Generated Code Do Not Modify
#include "org/allbinary/graphics/color/BasicColorUtil.h"
#include "org/allbinary/graphics/color/BasicColor.h"


static BasicColorUtil* BasicColorUtil_instance;

void BasicColorUtil_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    BasicColorUtil_instance = [((BasicColorUtil*) [BasicColorUtil alloc]) init];
}

@implementation BasicColorUtil

- (void) initFields {
    self->ZERO_ARRAY = ((BasicColor**) java_array_new(sizeof(BasicColor*), 0));
    self->ALPHA = 0xFF000000;
    self->isAlpha = true;
    self->ffOpaque = true;
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (BasicColorUtil*) getInstance {
        return (BasicColorUtil_staticInit(), BasicColorUtil_instance);
}


- (int32_t) getRGB:(int32_t)red :(int32_t)green :(int32_t)blue {
        int32_t value = 0;
        if (self->isAlpha) {
            if (self->ffOpaque) {
                value = self->ALPHA;
            }
        }
        value = (red << 16) | value;
        value = (green << 8) | value;
        value = blue | value;
        return value;
}


- (int32_t) getARGB:(int32_t)alphaValue :(int32_t)r :(int32_t)g :(int32_t)b {
        return ((alphaValue << 24) & self->ALPHA) + ((r << 16) & 0x00FF0000) + ((g << 8) & 0x0000FF00) + (b & 0x000000FF);
}


- (int32_t) get:(int32_t)alphaValue :(int32_t)color {
        return ((alphaValue << 24) & self->ALPHA) + color;
}


- (int32_t) invert:(int32_t)color {
        return (0xFFFFFF - color) | self->ALPHA;
}

@end

