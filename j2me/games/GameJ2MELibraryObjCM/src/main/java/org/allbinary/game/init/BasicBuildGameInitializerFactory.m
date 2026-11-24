// Generated Code Do Not Modify
#include "org/allbinary/game/init/BasicBuildGameInitializerFactory.h"
#include "org/allbinary/game/init/GameInitializationInterfaceFactoryInterface.h"
#include "org/allbinary/game/init/BaseGameInitialization.h"
#include "org/allbinary/game/init/GameInitializationInterface.h"


BasicBuildGameInitializerFactory* BasicBuildGameInitializerFactory_NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY;

void BasicBuildGameInitializerFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    BasicBuildGameInitializerFactory_NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY = ((BasicBuildGameInitializerFactory*) [((BasicBuildGameInitializerFactory*) [BasicBuildGameInitializerFactory alloc]) init]);
}

@implementation BasicBuildGameInitializerFactory

- (instancetype) init {
    self = [super init];
    return self;
}


- (GameInitializationInterface*) getInstance {
        return (BaseGameInitialization_staticInit(), BaseGameInitialization_NULL_BASE_GAME_INITIALIZATION);
}

@end

