// Generated Code Do Not Modify
#include "org/allbinary/graphics/color/BasicColorSetUtil.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "org/allbinary/graphics/color/BasicColor.h"


static BasicColorSetUtil* BasicColorSetUtil_instance;

void BasicColorSetUtil_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    BasicColorSetUtil_instance = [((BasicColorSetUtil*) [BasicColorSetUtil alloc]) init];
}

@implementation BasicColorSetUtil


+ (BasicColorSetUtil*) getInstance {
        return (BasicColorSetUtil_staticInit(), BasicColorSetUtil_instance);
}


- (instancetype) init {
    self = [super init];
    return self;
}


- (void) setBasicColorP:(Graphics*)graphics :(BasicColor*)basicColor {
        [graphics setColor:[basicColor intValue]];
}


- (void) setBasicColorP3:(Graphics*)graphics :(BasicColor*)basicColor :(int32_t)value {
        [graphics setColor:value];
}

@end

