// Generated Code Do Not Modify
#include "org/allbinary/input/motion/button/TouchButtonBlankResource.h"
#include "org/allbinary/input/motion/button/TouchButtonResource.h"


static TouchButtonResource* TouchButtonBlankResource_instance;

void TouchButtonBlankResource_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    TouchButtonBlankResource_instance = [((TouchButtonBlankResource*) [TouchButtonBlankResource alloc]) init];
}

@implementation TouchButtonBlankResource


+ (TouchButtonResource*) getInstance {
        return (TouchButtonBlankResource_staticInit(), TouchButtonBlankResource_instance);
}


- (instancetype) init {
        self = [super init:"/touch_button_64_by_64.png" :"/touch_button_hint_64_by_64.png"];
    return self;
}

@end

