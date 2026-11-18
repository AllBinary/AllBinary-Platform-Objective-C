// Generated Code Do Not Modify
#include "org/allbinary/game/configuration/feature/MultiPlayerGameFeatureFactory.h"
#include "javax/microedition/lcdui/Canvas.h"
#include "org/allbinary/game/commands/GameCommandsFactory.h"


static MultiPlayerGameFeatureFactory* MultiPlayerGameFeatureFactory_instance;

void MultiPlayerGameFeatureFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    MultiPlayerGameFeatureFactory_instance = [((MultiPlayerGameFeatureFactory*) [MultiPlayerGameFeatureFactory alloc]) init];
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
        GameCommandsFactory* gameCommandsFactory = [GameCommandsFactory getInstance];
        Canvas* canvas = ((Canvas*) anyType);
        [canvas addCommand:gameCommandsFactory->QUIT_COMMAND];
}

@end

