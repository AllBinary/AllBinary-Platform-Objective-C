// Generated Code Do Not Modify
#include "org/allbinary/game/input/mapping/event/InputMappingEvent.h"
#include "org/allbinary/game/input/mapping/InputToGameKeyMapping.h"



void InputMappingEvent_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation InputMappingEvent

- (void) initFields {
    self->inputToGameKeyMapping = [InputToGameKeyMapping getNullInstance];
}


- (instancetype) init:(id)anyType {
        self = [super init:anyType];
        [self initFields];
    return self;
}


- (void) setInputToGameKeyMapping:(InputToGameKeyMapping*)inputToGameKeyMapping {
        self->inputToGameKeyMapping = inputToGameKeyMapping;
}


- (InputToGameKeyMapping*) getInputToGameKeyMapping {
        return self->inputToGameKeyMapping;
}

@end

