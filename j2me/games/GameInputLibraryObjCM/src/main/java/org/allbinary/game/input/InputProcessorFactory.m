// Generated Code Do Not Modify
#include "org/allbinary/game/input/InputProcessorFactory.h"
#include "org/allbinary/game/input/InputProcessor.h"


static InputProcessorFactory* InputProcessorFactory_instance;

void InputProcessorFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    InputProcessorFactory_instance = [((InputProcessorFactory*) [InputProcessorFactory alloc]) init];
}

@implementation InputProcessorFactory

- (void) initFields {
    self->inputProcessor = [((InputProcessor*) [InputProcessor alloc]) init];
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (InputProcessorFactory*) getInstance {
        return (InputProcessorFactory_staticInit(), InputProcessorFactory_instance);
}


- (InputProcessor*) getInputProcessor {
        return self->inputProcessor;
}

@end

