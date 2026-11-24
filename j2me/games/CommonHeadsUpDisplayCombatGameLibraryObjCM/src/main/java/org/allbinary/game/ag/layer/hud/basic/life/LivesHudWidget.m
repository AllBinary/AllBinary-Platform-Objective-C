// Generated Code Do Not Modify
#include "org/allbinary/game/ag/layer/hud/basic/life/LivesHudWidget.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "org/allbinary/animation/Animation.h"
#include "org/allbinary/game/ag/life/Life.h"
#include "org/allbinary/graphics/color/BasicColorFactory.h"
#include "org/allbinary/graphics/displayable/event/DisplayChangeEvent.h"
#if __has_include("org/allbinary/graphics/color/BasicColorFactory.h")
#include "org/allbinary/graphics/color/BasicColorFactory.h"
#endif
#if __has_include("org/allbinary/game/ag/life/Life.h")
#include "org/allbinary/game/ag/life/Life.h"
#endif
#if __has_include("org/allbinary/game/ag/life/Life.h")
#include "org/allbinary/game/ag/life/Life.h"
#endif
#if __has_include("org/allbinary/game/ag/life/Life.h")
#include "org/allbinary/game/ag/life/Life.h"
#endif



void LivesHudWidget_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation LivesHudWidget

- (void) initFields {
    
    
    
}


- (instancetype) init:(Animation*)animationInterface :(Life*)lifeInterface :(int32_t)location :(int32_t)direction {
        self = [super init:location :direction :2 :[BasicColorFactory getInstance]->WHITE];
        [self initFields];
        self->lifeInterface = lifeInterface;
        int32_t size = ((int32_t) [[self getLifeInterface] getMaxlives]);
        self->xArray = ((int32_t*) java_array_new(sizeof(int32_t), size));
        self->animationInterface = animationInterface;
        self->updateMaxWidth = ((int32_t) [self->lifeInterface getMaxlives]) * 16;
        self->updateMaxHeight = 16;
    return self;
}


- (void) updateMeasurement:(Graphics*)graphics {
        [super updateMeasurement:graphics];
        int32_t maxLives = ((int32_t) [[self getLifeInterface] getMaxlives]);
        for (int32_t index = 0; index < maxLives; index++) {
            self->xArray[index] = [self getX] + (index * 16);
        }
}


- (void) onDisplayChangeEvent:(DisplayChangeEvent*)displayChangeEvent {
        [super onDisplayChangeEvent:displayChangeEvent];
        self->myFontProcessor = self->updateMyFontProcessor;
}


- (void) setX:(int32_t)x {
        [super setX:x];
        self->myFontProcessor = self->updateMyFontProcessor;
}


- (void) paint:(Graphics*)graphics {
        [self->myFontProcessor process:graphics];
        for (int32_t index = ((int32_t) [[self getLifeInterface] get]); --index >= 0; ) {
            [self->animationInterface paintXY:graphics :self->xArray[index] :[self getY]];
        }
}


- (void) paintThreed:(Graphics*)graphics {
}


- (Life*) getLifeInterface {
        return self->lifeInterface;
}

@end

