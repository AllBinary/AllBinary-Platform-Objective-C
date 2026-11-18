// Generated Code Do Not Modify
#include "org/allbinary/input/motion/button/TouchButtonFireResource.h"
#include "org/allbinary/input/motion/button/TouchButtonResource.h"


static TouchButtonResource* TouchButtonFireResource_instance;

void TouchButtonFireResource_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    TouchButtonFireResource_instance = [((TouchButtonFireResource*) [TouchButtonFireResource alloc]) init];
}

@implementation TouchButtonFireResource


+ (TouchButtonResource*) getInstance {
        return (TouchButtonFireResource_staticInit(), TouchButtonFireResource_instance);
}


- (instancetype) init {
        self = [super init:"/touch_button_fire_64_by_64.png" :"/touch_button_fire_hint_64_by_64.png"];
    return self;
}

@end

