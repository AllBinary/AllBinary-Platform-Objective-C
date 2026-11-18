// Generated Code Do Not Modify
#include "org/allbinary/input/motion/button/TouchScreenFactory.h"
#include "org/allbinary/input/motion/button/TouchScreenTypesFactory.h"
#include "org/allbinary/input/motion/button/TouchScreenType.h"


static TouchScreenFactory* TouchScreenFactory_SINGLETON;

void TouchScreenFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    TouchScreenFactory_SINGLETON = [((TouchScreenFactory*) [TouchScreenFactory alloc]) init];
}

@implementation TouchScreenFactory

- (void) initFields {
    self->multiTouch = false;
    self->touch = false;
    self->touchScreenType = [TouchScreenTypesFactory getInstance]->NOTOUCH;
}


- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (TouchScreenFactory*) getInstance {
        return (TouchScreenFactory_staticInit(), TouchScreenFactory_SINGLETON);
}


- (bool) isMultiTouch {
        return self->multiTouch;
}


- (void) setTouch:(bool)touch {
}


- (bool) isTouch {
        return self->touch;
}


- (TouchScreenType*) getTouchScreenType {
        return self->touchScreenType;
}

@end

