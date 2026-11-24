// Generated Code Do Not Modify
#include "org/allbinary/input/motion/button/TouchButtonTurnRightResource.h"
#include "org/allbinary/input/motion/button/TouchButtonResource.h"


static TouchButtonResource* TouchButtonTurnRightResource_instance;

void TouchButtonTurnRightResource_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    TouchButtonTurnRightResource_instance = ((TouchButtonTurnRightResource*) [((TouchButtonTurnRightResource*) [TouchButtonTurnRightResource alloc]) init]);
}

@implementation TouchButtonTurnRightResource


+ (TouchButtonResource*) getInstance {
        return (TouchButtonTurnRightResource_staticInit(), TouchButtonTurnRightResource_instance);
}


- (instancetype) init {
        self = [super init:"/touch_button_turn_right_arrow_64_by_64.png" :"/touch_button_turn_right_arrow_hint_64_by_64.png"];
    return self;
}

@end

