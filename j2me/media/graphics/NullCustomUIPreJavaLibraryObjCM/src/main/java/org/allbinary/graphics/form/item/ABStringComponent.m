// Generated Code Do Not Modify
#include "org/allbinary/graphics/form/item/ABStringComponent.h"
#include "org/allbinary/graphics/color/BasicColor.h"
#include "org/allbinary/graphics/color/BasicColorFactory.h"


ABStringComponent* ABStringComponent_NULL_STRING_COMPONENT;

void ABStringComponent_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    ABStringComponent_NULL_STRING_COMPONENT = [((ABStringComponent*) [ABStringComponent alloc]) init:[BasicColorFactory getInstance]->BLACK :[BasicColorFactory getInstance]->WHITE];
}

@implementation ABStringComponent


- (BasicColor*) getBackgroundBasicColor {
        return [BasicColorFactory getInstance]->WHITE;
}


- (instancetype) init:(BasicColor*)backgroundBasicColor :(BasicColor*)foregroundBasicColor {
    self = [super init];
    return self;
}


- (BasicColor*) getForegroundBasicColor {
        return [BasicColorFactory getInstance]->WHITE;
}


- (void) setForegroundBasicColor:(BasicColor*)foregroundBasicColor {
}

@end

