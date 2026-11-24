// Generated Code Do Not Modify
#include "org/allbinary/game/displayable/canvas/GameLimitedCommandTextItemArrayFactory.h"
#include "org/allbinary/graphics/form/item/CommandTextItemArrayFactory.h"
#include "org/allbinary/graphics/form/item/LimitCommandsVisitor.h"


static GameLimitedCommandTextItemArrayFactory* GameLimitedCommandTextItemArrayFactory_instance;

void GameLimitedCommandTextItemArrayFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    GameLimitedCommandTextItemArrayFactory_instance = ((GameLimitedCommandTextItemArrayFactory*) [((GameLimitedCommandTextItemArrayFactory*) [GameLimitedCommandTextItemArrayFactory alloc]) init]);
}

@implementation GameLimitedCommandTextItemArrayFactory

- (void) initFields {
    self->commandTextItemArrayFactory = ((CommandTextItemArrayFactory*) [((CommandTextItemArrayFactory*) [CommandTextItemArrayFactory alloc]) init:((LimitCommandsVisitor*) [((LimitCommandsVisitor*) [LimitCommandsVisitor alloc]) init])]);
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (GameLimitedCommandTextItemArrayFactory*) getInstance {
        return (GameLimitedCommandTextItemArrayFactory_staticInit(), GameLimitedCommandTextItemArrayFactory_instance);
}


- (CommandTextItemArrayFactory*) getCommandTextItemArrayFactory {
        return self->commandTextItemArrayFactory;
}

@end

