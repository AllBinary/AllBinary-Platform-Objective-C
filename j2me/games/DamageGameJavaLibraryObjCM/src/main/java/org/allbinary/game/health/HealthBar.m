// Generated Code Do Not Modify
#include "org/allbinary/game/health/HealthBar.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "org/allbinary/layer/AllBinaryLayer.h"
#include "org/allbinary/game/health/HealthListenerInterface.h"
#include "org/allbinary/game/health/HealthBarAnimation.h"
#include "org/allbinary/game/health/HealthInterface.h"
#include "org/allbinary/game/health/Health.h"



void HealthBar_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation HealthBar

- (void) initFields {
    
    
    
}


- (instancetype) init:(AllBinaryLayer*)layerInterface :(Health*)healthInterface :(HealthBarAnimation*)animationInterface :(int32_t)direction {
    self = [super init];
    [self initFields];
        self->allbinaryLayer = layerInterface;
        self->animationInterface = animationInterface;
        self->healthInterface = healthInterface;
        [((id<HealthInterface>) self->healthInterface) addListener:self];
        [self onHealthChange];
    return self;
}


- (void) onHealthChange {
        [self->animationInterface onHealthChange:[((id<HealthInterface>) self->healthInterface) getHealth] * [self->allbinaryLayer getWidth] / [((id<HealthInterface>) self->healthInterface) getMaxHealth]];
}


- (void) paint:(Graphics*)graphics {
        [self->animationInterface paintXY:graphics :0 :0];
}


- (void) paintThreed:(Graphics*)graphics {
        [self->animationInterface paintThreedXYZ:graphics :0 :0 :0];
}

@end

