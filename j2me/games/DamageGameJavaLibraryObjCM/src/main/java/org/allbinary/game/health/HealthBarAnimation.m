// Generated Code Do Not Modify
#include "org/allbinary/game/health/HealthBarAnimation.h"
#include "org/allbinary/game/graphics/hud/BasicHudFactory.h"
#include "org/allbinary/graphics/color/BasicColorFactory.h"
#include "org/allbinary/layer/AllBinaryLayer.h"
#if __has_include("org/allbinary/game/health/ViewPositionBase.h")
#include "org/allbinary/game/health/ViewPositionBase.h"
#endif
#if __has_include("org/allbinary/animation/ViewPositionBase.h")
#include "org/allbinary/animation/ViewPositionBase.h"
#endif
#if __has_include("org/allbinary/game/graphics/hud/ViewPositionBase.h")
#include "org/allbinary/game/graphics/hud/ViewPositionBase.h"
#endif
#if __has_include("org/allbinary/graphics/color/ViewPositionBase.h")
#include "org/allbinary/graphics/color/ViewPositionBase.h"
#endif
#if __has_include("org/allbinary/layer/ViewPositionBase.h")
#include "org/allbinary/layer/ViewPositionBase.h"
#endif
#if __has_include("org/allbinary/game/health/ViewPositionBase.h")
#include "org/allbinary/game/health/ViewPositionBase.h"
#endif
#if __has_include("org/allbinary/animation/ViewPositionBase.h")
#include "org/allbinary/animation/ViewPositionBase.h"
#endif
#if __has_include("org/allbinary/game/graphics/hud/ViewPositionBase.h")
#include "org/allbinary/game/graphics/hud/ViewPositionBase.h"
#endif
#if __has_include("org/allbinary/graphics/color/ViewPositionBase.h")
#include "org/allbinary/graphics/color/ViewPositionBase.h"
#endif
#if __has_include("org/allbinary/layer/ViewPositionBase.h")
#include "org/allbinary/layer/ViewPositionBase.h"
#endif



void HealthBarAnimation_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation HealthBarAnimation

- (void) initFields {
    self->basicColorFactory = [BasicColorFactory getInstance];
    self->x2 = 0;
    self->thickness = 0;
    
    
}


- (instancetype) init:(AllBinaryLayer*)layerInterface :(int32_t)location {
    self = [super init];
    [self initFields];
        self->allbinaryLayer = layerInterface;
        self->location = location;
        BasicHudFactory* basicHudFactory = [BasicHudFactory getInstance];
        if (self->location != basicHudFactory->TOPLEFT && self->location != basicHudFactory->BOTTOMLEFT) {
            java_throw(java_exception_new("Exception", "Location Not Valid"));
        }
        if ([layerInterface getWidth] > 40) {
            self->thickness = 3;
        } else if ([layerInterface getWidth] > 20) {
            self->thickness = 2;
        } else {
            self->thickness = 1;
        }
    return self;
}


- (void) onHealthChange:(int32_t)newX2 {
        self->x2 = newX2;
        int32_t quarter = ([self->allbinaryLayer getWidth] >> 2);
        if (self->x2 > quarter * 3) {
            self->basicColor = self->basicColorFactory->GREEN;
            self->colorP = [self->basicColor intValue];
        } else if (self->x2 > quarter * 2) {
            self->basicColor = self->basicColorFactory->YELLOW;
            self->colorP = [self->basicColor intValue];
        } else if (self->x2 > quarter) {
            self->basicColor = self->basicColorFactory->ORANGE;
            self->colorP = [self->basicColor intValue];
        } else {
            self->basicColor = self->basicColorFactory->RED;
            self->colorP = [self->basicColor intValue];
        }
}


- (int32_t) getY {
        BasicHudFactory* basicHudFactory = [BasicHudFactory getInstance];
        if (self->location == basicHudFactory->TOPLEFT) {
            return [[self->allbinaryLayer getViewPosition] getY] - 4;
        } else if (self->location == basicHudFactory->BOTTOMLEFT) {
            return [[self->allbinaryLayer getViewPosition] getY2] + 4;
        }
        return -1;
}

@end

