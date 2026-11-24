// Generated Code Do Not Modify
#include "org/allbinary/input/motion/button/TouchButtonsBuilderFactory.h"
#include "org/allbinary/input/motion/button/NoButtonsTouchInputFactory.h"
#include "org/allbinary/input/motion/button/BaseTouchInput.h"


TouchButtonsBuilderFactory* TouchButtonsBuilderFactory_NO_TOUCH_BUTTON_BUILDER_FACTORY;

void TouchButtonsBuilderFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    TouchButtonsBuilderFactory_NO_TOUCH_BUTTON_BUILDER_FACTORY = ((TouchButtonsBuilderFactory*) [((TouchButtonsBuilderFactory*) [TouchButtonsBuilderFactory alloc]) init]);
}

@implementation TouchButtonsBuilderFactory

- (instancetype) init {
    self = [super init];
    return self;
}


- (BaseTouchInput*) getInstance {
        return [NoButtonsTouchInputFactory getInstance];
}

@end

