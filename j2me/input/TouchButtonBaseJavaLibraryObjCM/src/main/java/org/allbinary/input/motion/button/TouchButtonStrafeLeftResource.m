// Generated Code Do Not Modify
#include "org/allbinary/input/motion/button/TouchButtonStrafeLeftResource.h"
#include "org/allbinary/input/motion/button/TouchButtonResource.h"


static TouchButtonResource* TouchButtonStrafeLeftResource_instance;

void TouchButtonStrafeLeftResource_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    TouchButtonStrafeLeftResource_instance = ((TouchButtonStrafeLeftResource*) [((TouchButtonStrafeLeftResource*) [TouchButtonStrafeLeftResource alloc]) init]);
}

@implementation TouchButtonStrafeLeftResource


+ (TouchButtonResource*) getInstance {
        return (TouchButtonStrafeLeftResource_staticInit(), TouchButtonStrafeLeftResource_instance);
}


- (instancetype) init {
        self = [super init:"/touch_button_strafe_left_arrow_64_by_64.png" :"/touch_button_strafe_left_arrow_hint_64_by_64.png"];
    return self;
}

@end

