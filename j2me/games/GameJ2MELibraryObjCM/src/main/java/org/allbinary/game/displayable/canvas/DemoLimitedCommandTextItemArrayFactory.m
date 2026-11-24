// Generated Code Do Not Modify
#include "org/allbinary/game/displayable/canvas/DemoLimitedCommandTextItemArrayFactory.h"
#include "org/allbinary/graphics/form/item/CommandTextItemArrayFactory.h"
#include "org/allbinary/graphics/form/item/LimitCommandsVisitor.h"


static DemoLimitedCommandTextItemArrayFactory* DemoLimitedCommandTextItemArrayFactory_instance;

void DemoLimitedCommandTextItemArrayFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    DemoLimitedCommandTextItemArrayFactory_instance = ((DemoLimitedCommandTextItemArrayFactory*) [((DemoLimitedCommandTextItemArrayFactory*) [DemoLimitedCommandTextItemArrayFactory alloc]) init]);
}

@implementation DemoLimitedCommandTextItemArrayFactory

- (void) initFields {
    self->commandTextItemArrayFactory = ((CommandTextItemArrayFactory*) [((CommandTextItemArrayFactory*) [CommandTextItemArrayFactory alloc]) init:((LimitCommandsVisitor*) [((LimitCommandsVisitor*) [LimitCommandsVisitor alloc]) init])]);
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (DemoLimitedCommandTextItemArrayFactory*) getInstance {
        return (DemoLimitedCommandTextItemArrayFactory_staticInit(), DemoLimitedCommandTextItemArrayFactory_instance);
}


- (CommandTextItemArrayFactory*) getCommandTextItemArrayFactory {
        return self->commandTextItemArrayFactory;
}

@end

