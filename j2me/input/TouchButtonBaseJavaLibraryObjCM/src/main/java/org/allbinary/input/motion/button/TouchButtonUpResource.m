// Generated Code Do Not Modify
#include "org/allbinary/input/motion/button/TouchButtonUpResource.h"
#include "org/allbinary/input/motion/button/TouchButtonResource.h"


static TouchButtonResource* TouchButtonUpResource_instance;

void TouchButtonUpResource_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    TouchButtonUpResource_instance = ((TouchButtonUpResource*) [((TouchButtonUpResource*) [TouchButtonUpResource alloc]) init]);
}

@implementation TouchButtonUpResource


+ (TouchButtonResource*) getInstance {
        return (TouchButtonUpResource_staticInit(), TouchButtonUpResource_instance);
}


- (instancetype) init {
        self = [super init:"/touch_button_up_arrow_64_by_64.png" :"/touch_button_up_arrow_hint_64_by_64.png"];
    return self;
}

@end

