// Generated Code Do Not Modify
#include "org/allbinary/input/motion/button/TouchScreenTypesFactory.h"
#include "org/allbinary/input/motion/button/TouchScreenType.h"


static TouchScreenTypesFactory* TouchScreenTypesFactory_instance;

void TouchScreenTypesFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    TouchScreenTypesFactory_instance = [((TouchScreenTypesFactory*) [TouchScreenTypesFactory alloc]) init];
}

@implementation TouchScreenTypesFactory

- (void) initFields {
    self->FINGER = [((TouchScreenType*) [TouchScreenType alloc]) init:"Finger"];
    self->NOTOUCH = [((TouchScreenType*) [TouchScreenType alloc]) init:"No Touch"];
    self->STYLUS = [((TouchScreenType*) [TouchScreenType alloc]) init:"Stylus"];
    self->UNDEFINED = [((TouchScreenType*) [TouchScreenType alloc]) init:"Undefined"];
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (TouchScreenTypesFactory*) getInstance {
        return (TouchScreenTypesFactory_staticInit(), TouchScreenTypesFactory_instance);
}

@end

