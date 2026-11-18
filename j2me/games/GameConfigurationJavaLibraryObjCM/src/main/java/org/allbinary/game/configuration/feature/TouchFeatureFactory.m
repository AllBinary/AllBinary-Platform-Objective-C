// Generated Code Do Not Modify
#include "org/allbinary/game/configuration/feature/TouchFeatureFactory.h"
#include "org/allbinary/game/configuration/feature/TouchFeature.h"


static TouchFeatureFactory* TouchFeatureFactory_instance;

void TouchFeatureFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    TouchFeatureFactory_instance = [((TouchFeatureFactory*) [TouchFeatureFactory alloc]) init];
}

@implementation TouchFeatureFactory

- (void) initFields {
    self->TOUCH_ENABLED = [((TouchFeature*) [TouchFeature alloc]) init:"Touch Enabled"];
    self->SHOW_SCREEN_BUTTONS = [((TouchFeature*) [TouchFeature alloc]) init:"Show"];
    self->AUTO_HIDE_SHOW_SCREEN_BUTTONS = [((TouchFeature*) [TouchFeature alloc]) init:"Auto Hide (One Level)"];
    self->HIDE_SCREEN_BUTTONS = [((TouchFeature*) [TouchFeature alloc]) init:"Hide"];
}


+ (TouchFeatureFactory*) getInstance {
        return (TouchFeatureFactory_staticInit(), TouchFeatureFactory_instance);
}


- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}

@end

