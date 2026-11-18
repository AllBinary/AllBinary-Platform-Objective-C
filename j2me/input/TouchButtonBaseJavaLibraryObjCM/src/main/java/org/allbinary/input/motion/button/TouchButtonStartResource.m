// Generated Code Do Not Modify
#include "org/allbinary/input/motion/button/TouchButtonStartResource.h"
#include "org/allbinary/input/motion/button/TouchButtonResource.h"


static TouchButtonResource* TouchButtonStartResource_instance;

void TouchButtonStartResource_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    TouchButtonStartResource_instance = [((TouchButtonStartResource*) [TouchButtonStartResource alloc]) init];
}

@implementation TouchButtonStartResource


+ (TouchButtonResource*) getInstance {
        return (TouchButtonStartResource_staticInit(), TouchButtonStartResource_instance);
}


- (instancetype) init {
        self = [super init:"/touch_button_start_64_by_64.png" :"/touch_button_start_hint_64_by_64.png"];
    return self;
}

@end

