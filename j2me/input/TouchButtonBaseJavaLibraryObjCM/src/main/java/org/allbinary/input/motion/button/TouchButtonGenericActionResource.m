// Generated Code Do Not Modify
#include "org/allbinary/input/motion/button/TouchButtonGenericActionResource.h"
#include "org/allbinary/input/motion/button/TouchButtonResource.h"


static TouchButtonResource* TouchButtonGenericActionResource_instance;

void TouchButtonGenericActionResource_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    TouchButtonGenericActionResource_instance = ((TouchButtonGenericActionResource*) [((TouchButtonGenericActionResource*) [TouchButtonGenericActionResource alloc]) init]);
}

@implementation TouchButtonGenericActionResource


+ (TouchButtonResource*) getInstance {
        return (TouchButtonGenericActionResource_staticInit(), TouchButtonGenericActionResource_instance);
}


- (instancetype) init {
        self = [super init:"/touch_button_generic_action_64_by_64.png" :"/touch_button_generic_action_hint_64_by_64.png"];
    return self;
}

@end

