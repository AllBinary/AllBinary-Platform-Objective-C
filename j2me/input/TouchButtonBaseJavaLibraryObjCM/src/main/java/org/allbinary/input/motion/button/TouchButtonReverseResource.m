// Generated Code Do Not Modify
#include "org/allbinary/input/motion/button/TouchButtonReverseResource.h"
#include "org/allbinary/input/motion/button/TouchButtonResource.h"


static TouchButtonResource* TouchButtonReverseResource_instance;

void TouchButtonReverseResource_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    TouchButtonReverseResource_instance = [((TouchButtonReverseResource*) [TouchButtonReverseResource alloc]) init];
}

@implementation TouchButtonReverseResource


+ (TouchButtonResource*) getInstance {
        return (TouchButtonReverseResource_staticInit(), TouchButtonReverseResource_instance);
}


- (instancetype) init {
        self = [super init:"/touch_button_reverse_64_by_64.png" :"/touch_button_reverse_hint_64_by_64.png"];
    return self;
}

@end

