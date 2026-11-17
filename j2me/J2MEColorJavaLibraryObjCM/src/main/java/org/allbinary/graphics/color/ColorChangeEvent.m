// Generated Code Do Not Modify
#include "org/allbinary/graphics/color/ColorChangeEvent.h"
#include "org/allbinary/graphics/color/BasicColorFactory.h"
#include "org/allbinary/graphics/color/BasicColor.h"



void ColorChangeEvent_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation ColorChangeEvent

- (void) initFields {
    self->basicColor = [BasicColorFactory getInstance]->WHITE;
}


- (instancetype) init:(id)anyType {
        self = [super init:anyType];
        [self initFields];
    return self;
}


- (void) setBasicColorP:(BasicColor*)basicColor {
        self->basicColor = basicColor;
}


- (BasicColor*) getBasicColorP {
        return self->basicColor;
}

@end

