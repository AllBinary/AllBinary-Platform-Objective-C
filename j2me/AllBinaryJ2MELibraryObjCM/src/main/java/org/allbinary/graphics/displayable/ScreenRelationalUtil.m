// Generated Code Do Not Modify
#include "org/allbinary/graphics/displayable/ScreenRelationalUtil.h"
#include "javax/microedition/lcdui/Image.h"
#include "org/allbinary/graphics/displayable/DisplayInfoSingleton.h"


static ScreenRelationalUtil* ScreenRelationalUtil_instance;

void ScreenRelationalUtil_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    ScreenRelationalUtil_instance = ((ScreenRelationalUtil*) [((ScreenRelationalUtil*) [ScreenRelationalUtil alloc]) init]);
}

@implementation ScreenRelationalUtil

- (instancetype) init {
    self = [super init];
    return self;
}


+ (ScreenRelationalUtil*) getInstance {
        return (ScreenRelationalUtil_staticInit(), ScreenRelationalUtil_instance);
}


- (float) getScaleImage:(Image*)image {
        return [self getScaleWH:[image getWidth] :[image getHeight]];
}


- (float) getScaleWH:(int32_t)aWidth :(int32_t)aHeight {
        return [self getScaleWHA:aWidth :aHeight :20];
}


- (float) getScaleWHA:(int32_t)aWidth :(int32_t)aHeight :(int32_t)add {
        DisplayInfoSingleton* displayInfoSingleton = [DisplayInfoSingleton getInstance];
        int32_t* last = [displayInfoSingleton getLast];
        float width = ((float) last[displayInfoSingleton->WIDTH]);
        float height = ((float) last[displayInfoSingleton->HEIGHT]);
        float largestSize = width;
        if (largestSize < height) {
            largestSize = height;
        }
        float scale = (largestSize) / ((float) aWidth);
        return scale;
}


- (int32_t) getScaledHeight:(int32_t)aWidth :(int32_t)aHeight {
        return ((int32_t) ([self getScaleWH:aWidth :aHeight] * ((float) aHeight)));
}


- (int32_t) getScaledHeightAdd:(int32_t)aWidth :(int32_t)aHeight :(int32_t)add {
        return ((int32_t) ([self getScaleWHA:aWidth :aHeight :add] * ((float) aHeight)));
}

@end

