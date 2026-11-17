// Generated Code Do Not Modify
#include "org/allbinary/graphics/color/ColorTemperatureUtil.h"
#include "org/allbinary/graphics/color/BasicColorFactory.h"
#include "org/allbinary/graphics/color/BasicColor.h"


static ColorTemperatureUtil* ColorTemperatureUtil_instance;

void ColorTemperatureUtil_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    ColorTemperatureUtil_instance = [((ColorTemperatureUtil*) [ColorTemperatureUtil alloc]) init];
}

@implementation ColorTemperatureUtil

- (void) initFields {
    self->basicColorFactory = [BasicColorFactory getInstance];
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (ColorTemperatureUtil*) getInstance {
        return (ColorTemperatureUtil_staticInit(), ColorTemperatureUtil_instance);
}


- (BasicColor*) getBasicColor:(int32_t)thirdTemp {
        BasicColor* basicColor = self->basicColorFactory->RED;
        if (thirdTemp > 3700) {
            basicColor = self->basicColorFactory->PURPLE;
        } else if (thirdTemp > 3200) {
            basicColor = self->basicColorFactory->BLUE;
        } else if (thirdTemp > 2700) {
            basicColor = self->basicColorFactory->PUCE;
        } else if (thirdTemp > 2200) {
            basicColor = self->basicColorFactory->WHITE;
        } else if (thirdTemp > 1700) {
            basicColor = self->basicColorFactory->GREEN;
        } else if (thirdTemp > 1200) {
            basicColor = self->basicColorFactory->YELLOW;
        } else if (thirdTemp > 700) {
            basicColor = self->basicColorFactory->ORANGE;
        }
        return basicColor;
}

@end

