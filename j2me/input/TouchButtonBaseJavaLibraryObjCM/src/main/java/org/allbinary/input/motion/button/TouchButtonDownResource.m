// Generated Code Do Not Modify
#include "org/allbinary/input/motion/button/TouchButtonDownResource.h"
#include "org/allbinary/input/motion/button/TouchButtonResource.h"


static TouchButtonResource* TouchButtonDownResource_instance;

void TouchButtonDownResource_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    TouchButtonDownResource_instance = ((TouchButtonDownResource*) [((TouchButtonDownResource*) [TouchButtonDownResource alloc]) init]);
}

@implementation TouchButtonDownResource


+ (TouchButtonResource*) getInstance {
        return (TouchButtonDownResource_staticInit(), TouchButtonDownResource_instance);
}


- (instancetype) init {
        self = [super init:"/touch_button_down_arrow_64_by_64.png" :"/touch_button_down_arrow_hint_64_by_64.png"];
    return self;
}

@end

