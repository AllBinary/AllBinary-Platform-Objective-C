// Generated Code Do Not Modify
#include "org/allbinary/PostGameCommandFactory.h"
#include "org/allbinary/game/configuration/feature/MultiPlayerGameFeatureFactory.h"
#include "org/allbinary/graphics/displayable/MyCanvas.h"
#if __has_include("org/allbinary/game/configuration/feature/MultiPlayerGameFeatureFactory.h")
#include "org/allbinary/game/configuration/feature/MultiPlayerGameFeatureFactory.h"
#endif


static PostGameCommandFactory* PostGameCommandFactory_instance;

void PostGameCommandFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    PostGameCommandFactory_instance = ((PostGameCommandFactory*) [((PostGameCommandFactory*) [PostGameCommandFactory alloc]) init]);
}

@implementation PostGameCommandFactory

- (instancetype) init {
    self = [super init];
    return self;
}


+ (PostGameCommandFactory*) getInstance {
        return (PostGameCommandFactory_staticInit(), PostGameCommandFactory_instance);
}


- (void) addCommands:(MyCanvas*)canvas {
        [[MultiPlayerGameFeatureFactory getInstance] addCommands:canvas];
}

@end

