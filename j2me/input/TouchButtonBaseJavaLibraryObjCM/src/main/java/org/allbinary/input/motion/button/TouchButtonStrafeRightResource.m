// Generated Code Do Not Modify
#include "org/allbinary/input/motion/button/TouchButtonStrafeRightResource.h"
#include "org/allbinary/input/motion/button/TouchButtonResource.h"


static TouchButtonResource* TouchButtonStrafeRightResource_instance;

void TouchButtonStrafeRightResource_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    TouchButtonStrafeRightResource_instance = [((TouchButtonStrafeRightResource*) [TouchButtonStrafeRightResource alloc]) init];
}

@implementation TouchButtonStrafeRightResource


+ (TouchButtonResource*) getInstance {
        return (TouchButtonStrafeRightResource_staticInit(), TouchButtonStrafeRightResource_instance);
}


- (instancetype) init {
        self = [super init:"/touch_button_strafe_right_arrow_64_by_64.png" :"/touch_button_strafe_right_arrow_hint_64_by_64.png"];
    return self;
}

@end

