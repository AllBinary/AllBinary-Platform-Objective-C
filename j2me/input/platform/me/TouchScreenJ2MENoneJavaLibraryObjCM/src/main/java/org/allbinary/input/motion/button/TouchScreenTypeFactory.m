// Generated Code Do Not Modify
#include "org/allbinary/input/motion/button/TouchScreenTypeFactory.h"
#include "org/allbinary/input/motion/button/TouchScreenFactory.h"


static TouchScreenTypeFactory* TouchScreenTypeFactory_instance;

void TouchScreenTypeFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    TouchScreenTypeFactory_instance = ((TouchScreenTypeFactory*) [((TouchScreenTypeFactory*) [TouchScreenTypeFactory alloc]) init]);
}

@implementation TouchScreenTypeFactory


+ (TouchScreenTypeFactory*) getInstance {
        return (TouchScreenTypeFactory_staticInit(), TouchScreenTypeFactory_instance);
}


- (instancetype) init {
    self = [super init];
        TouchScreenFactory* touchScreenFactory = [TouchScreenFactory getInstance];
        [touchScreenFactory setTouch:false];
    return self;
}

@end

