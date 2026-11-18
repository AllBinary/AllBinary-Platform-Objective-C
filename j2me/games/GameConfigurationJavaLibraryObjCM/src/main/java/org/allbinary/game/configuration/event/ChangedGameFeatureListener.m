// Generated Code Do Not Modify
#include "org/allbinary/game/configuration/event/ChangedGameFeatureListener.h"
#include "org/allbinary/game/configuration/GameConfiguration.h"
#include "org/allbinary/game/configuration/event/BaseChangedGameFeatureListener.h"


static ChangedGameFeatureListener* ChangedGameFeatureListener_gameFeatureListener;

void ChangedGameFeatureListener_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    ChangedGameFeatureListener_gameFeatureListener = [((ChangedGameFeatureListener*) [ChangedGameFeatureListener alloc]) init];
}

@implementation ChangedGameFeatureListener

- (instancetype) init {
    self = [super init];
    return self;
}


+ (ChangedGameFeatureListener*) getInstance {
        return (ChangedGameFeatureListener_staticInit(), ChangedGameFeatureListener_gameFeatureListener);
}


- (bool) isChangedGameConfiguration:(GameConfiguration*)gameConfiguration {
        return [self->list contains:gameConfiguration];
}

@end

