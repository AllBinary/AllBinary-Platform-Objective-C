// Generated Code Do Not Modify
#include "org/allbinary/game/configuration/feature/MainFeatureFactory.h"
#include "org/allbinary/game/configuration/feature/Feature.h"


static MainFeatureFactory* MainFeatureFactory_instance;

void MainFeatureFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    MainFeatureFactory_instance = [((MainFeatureFactory*) [MainFeatureFactory alloc]) init];
}

@implementation MainFeatureFactory

- (void) initFields {
    self->FULL_SCREEN = [((Feature*) [Feature alloc]) init:"Full Screen"];
    self->TITLE_BAR = [((Feature*) [Feature alloc]) init:"Title Bar"];
    self->STATIC = [((Feature*) [Feature alloc]) init:"Static Dependent Feature"];
    self->LOAD_ONDEMAND = [((Feature*) [Feature alloc]) init:"Load OnDemand"];
    self->LOAD_ALL = [((Feature*) [Feature alloc]) init:"Load All"];
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (MainFeatureFactory*) getInstance {
        return (MainFeatureFactory_staticInit(), MainFeatureFactory_instance);
}

@end

