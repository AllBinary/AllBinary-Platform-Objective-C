// Generated Code Do Not Modify
#include "org/allbinary/game/health/HealthBarTwodAnimation.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "org/allbinary/layer/AllBinaryLayer.h"
#include "org/allbinary/game/health/HealthBarAnimation.h"
#if __has_include("org/allbinary/game/health/ViewPositionBase.h")
#include "org/allbinary/game/health/ViewPositionBase.h"
#endif
#if __has_include("javax/microedition/lcdui/ViewPositionBase.h")
#include "javax/microedition/lcdui/ViewPositionBase.h"
#endif
#if __has_include("org/allbinary/layer/ViewPositionBase.h")
#include "org/allbinary/layer/ViewPositionBase.h"
#endif



void HealthBarTwodAnimation_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation HealthBarTwodAnimation


- (instancetype) init:(AllBinaryLayer*)layerInterface :(int32_t)location {
        self = [super init:layerInterface :location];
    return self;
}


- (void) paintXY:(Graphics*)graphics :(int32_t)x :(int32_t)y {
        int32_t ax = [[self->allbinaryLayer getViewPosition] getX];
        [self->basicSetColorUtil setBasicColorP3:graphics :self->basicColor :self->colorP];
        [graphics fillRect:ax :[self getY] - 1 :self->x2 :self->thickness];
}

@end

