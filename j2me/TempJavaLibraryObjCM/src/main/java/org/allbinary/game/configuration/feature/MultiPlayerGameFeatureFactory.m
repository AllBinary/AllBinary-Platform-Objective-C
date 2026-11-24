// Generated Code Do Not Modify
#include "org/allbinary/game/configuration/feature/MultiPlayerGameFeatureFactory.h"


static MultiPlayerGameFeatureFactory* MultiPlayerGameFeatureFactory_instance;

void MultiPlayerGameFeatureFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    MultiPlayerGameFeatureFactory_instance = ((MultiPlayerGameFeatureFactory*) [((MultiPlayerGameFeatureFactory*) [MultiPlayerGameFeatureFactory alloc]) init]);
}

@implementation MultiPlayerGameFeatureFactory


+ (MultiPlayerGameFeatureFactory*) getInstance {
        return (MultiPlayerGameFeatureFactory_staticInit(), MultiPlayerGameFeatureFactory_instance);
}


- (instancetype) init {
    self = [super init];
    return self;
}


- (void) addCommands:(id)anyType {
}

@end

