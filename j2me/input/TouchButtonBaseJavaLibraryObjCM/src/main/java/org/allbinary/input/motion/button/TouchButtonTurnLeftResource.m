// Generated Code Do Not Modify
#include "org/allbinary/input/motion/button/TouchButtonTurnLeftResource.h"
#include "org/allbinary/input/motion/button/TouchButtonResource.h"


static TouchButtonResource* TouchButtonTurnLeftResource_instance;

void TouchButtonTurnLeftResource_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    TouchButtonTurnLeftResource_instance = [((TouchButtonTurnLeftResource*) [TouchButtonTurnLeftResource alloc]) init];
}

@implementation TouchButtonTurnLeftResource


+ (TouchButtonResource*) getInstance {
        return (TouchButtonTurnLeftResource_staticInit(), TouchButtonTurnLeftResource_instance);
}


- (instancetype) init {
        self = [super init:"/touch_button_turn_left_arrow_64_by_64.png" :"/touch_button_turn_left_arrow_hint_64_by_64.png"];
    return self;
}

@end

