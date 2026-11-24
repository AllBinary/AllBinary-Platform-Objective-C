// Generated Code Do Not Modify
#include "org/allbinary/game/ag/life/HealthIncludingLifeBar.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "org/allbinary/game/health/Health.h"
#include "org/allbinary/game/health/HealthBarAnimation.h"
#include "org/allbinary/game/health/HealthBarTwodAnimation.h"
#include "org/allbinary/game/health/HealthInterface.h"
#include "org/allbinary/layer/AllBinaryLayer.h"
#include "org/allbinary/game/ag/life/Life.h"



void HealthIncludingLifeBar_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation HealthIncludingLifeBar

- (void) initFields {
    
    
    
    
}


// throws Exception
+ (HealthIncludingLifeBar*) createHealthIncludingLifeBar:(AllBinaryLayer*)layerInterface :(Life*)life :(Health*)healthInterface :(int32_t)location :(int32_t)direction {
        return ((HealthIncludingLifeBar*) [((HealthIncludingLifeBar*) [HealthIncludingLifeBar alloc]) init:layerInterface :life :healthInterface :((HealthBarTwodAnimation*) [((HealthBarTwodAnimation*) [HealthBarTwodAnimation alloc]) init:layerInterface :location]) :direction]);
}


- (instancetype) init:(AllBinaryLayer*)layerInterface :(Life*)life :(Health*)healthInterface :(HealthBarAnimation*)animationInterface :(int32_t)direction {
    self = [super init];
    [self initFields];
        self->allbinaryLayer = layerInterface;
        self->animationInterface = animationInterface;
        self->life = life;
        self->healthInterface = healthInterface;
        [((id<HealthInterface>) self->healthInterface) addListener:self];
        [self onHealthChange];
    return self;
}


- (void) onHealthChange {
        [self->animationInterface onHealthChange:(([((id<HealthInterface>) self->healthInterface) getHealth] + ([((id<HealthInterface>) self->healthInterface) getMaxHealth] * ((int32_t) [self->life get]))) * [self->allbinaryLayer getWidth]) / ([((id<HealthInterface>) self->healthInterface) getMaxHealth] + ([((id<HealthInterface>) self->healthInterface) getMaxHealth] * ((int32_t) [self->life getStartLives])))];
}


- (void) paint:(Graphics*)graphics {
        [self->animationInterface paintXY:graphics :0 :0];
}


- (void) paintThreed:(Graphics*)graphics {
        [self->animationInterface paintThreedXYZ:graphics :0 :0 :0];
}

@end

