// Generated Code Do Not Modify
#include "org/allbinary/game/ag/layer/hud/basic/health/HealthHudWidget.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "org/allbinary/animation/Animation.h"
#include "org/allbinary/game/health/Health.h"
#include "org/allbinary/graphics/color/BasicColorFactory.h"
#include "org/allbinary/time/GameTickTimeDelayHelper.h"
#include "org/allbinary/time/GameTickTimeDelayHelperFactory.h"
#include "org/allbinary/time/NoTimeDelayHelper.h"
#include "org/allbinary/time/TimeDelayHelper.h"
#if __has_include("org/allbinary/graphics/color/BasicColorFactory.h")
#include "org/allbinary/graphics/color/BasicColorFactory.h"
#endif



void HealthHudWidget_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation HealthHudWidget

- (void) initFields {
    
    
    
    self->max = 0;
    
    self->gameTickTimeDelayHelper = [GameTickTimeDelayHelperFactory getInstance];
    self->timeDelayHelper = (NoTimeDelayHelper_staticInit(), NoTimeDelayHelper_SINGLETON);
    self->slowBeatTimeDelayHelper = ((TimeDelayHelper*) [((TimeDelayHelper*) [TimeDelayHelper alloc]) init:1280]);
    self->mediumBeatTimeDelayHelper = ((TimeDelayHelper*) [((TimeDelayHelper*) [TimeDelayHelper alloc]) init:640]);
    self->fastBeatTimeDelayHelper = ((TimeDelayHelper*) [((TimeDelayHelper*) [TimeDelayHelper alloc]) init:320]);
}


- (instancetype) init:(Animation*)animationInterface :(Health*)healthInterface :(int32_t)location :(int32_t)direction {
        self = [super init:location :direction :2 :[BasicColorFactory getInstance]->WHITE];
        [self initFields];
        self->animationInterface = animationInterface;
        self->healthInterface = healthInterface;
        [self->healthInterface addListener:self];
        self->healthScale = ([self->healthInterface getMaxHealth] / 6) + 1;
        [self onHealthChange];
        self->updateMaxWidth = [healthInterface getMaxHealth] * 16;
        self->updateMaxHeight = 16;
        self->xArray = ((int32_t*) java_array_new(sizeof(int32_t), 30));
        [self update];
    return self;
}


- (void) update {
        if (self->xArray != nil) {
            for (int32_t index = 0; index < java_array_length(self->xArray); index++) {
                self->xArray[index] = [self getX] + (index * 16);
            }
        }
}


- (void) setX:(int32_t)x {
        [super setX:x];
        [self update];
}


- (void) onHealthChange {
        self->max = ([self->healthInterface getHealth] / self->healthScale);
        self->timeDelayHelper = (NoTimeDelayHelper_staticInit(), NoTimeDelayHelper_SINGLETON);
        if (self->max <= 1 && [self->healthInterface isAlive]) {
            self->max = 1;
            if (self->healthScale - [self->healthInterface getHealth] > (self->healthScale * 2) / 3) {
                self->timeDelayHelper = self->slowBeatTimeDelayHelper;
            } else if (self->healthScale - [self->healthInterface getHealth] > self->healthScale / 3) {
                self->timeDelayHelper = self->mediumBeatTimeDelayHelper;
            } else {
                self->timeDelayHelper = self->fastBeatTimeDelayHelper;
            }
        }
}


- (void) paint:(Graphics*)graphics {
        [self->myFontProcessor process:graphics];
        for (int32_t index = 0; index < self->max; index++) {
            if ([self->timeDelayHelper isTime:self->gameTickTimeDelayHelper->startTime]) {
                [self->animationInterface paintXY:graphics :self->xArray[index] :[self getY]];
            }
        }
}


- (void) paintThreed:(Graphics*)graphics {
}

@end

