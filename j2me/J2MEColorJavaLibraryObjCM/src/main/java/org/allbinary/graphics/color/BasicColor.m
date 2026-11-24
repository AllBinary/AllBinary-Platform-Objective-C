// Generated Code Do Not Modify
#include "org/allbinary/graphics/color/BasicColor.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/graphics/color/BasicColorUtil.h"



void BasicColor_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation BasicColor

- (void) initFields {
    
    
    
    
    
    
    
    
    
    
}


- (instancetype) init:(int32_t)alphaValue :(int32_t)value :(const char*)name {
    self = [super init];
    [self initFields];
        self->name = name;
        int32_t tempValue = 0;
        BasicColorUtil* basicColorUtil = [BasicColorUtil getInstance];
        if (basicColorUtil->isAlpha) {
            if (basicColorUtil->ffOpaque) {
                tempValue = alphaValue | value;
            } else {
                tempValue = 0x00000000 | value;
            }
        } else {
            tempValue = value;
        }
        int32_t alphaInt = ((tempValue >> 24) & 255);
        self->alpha = ((int16_t) alphaInt);
        self->alphaComponent = (((float) alphaInt)) / 255.0f;
        int32_t redInt = ((tempValue >> 16) & 255);
        self->red = ((int16_t) redInt);
        self->redComponent = (((float) redInt)) / 255.0f;
        int32_t greenInt = ((tempValue >> 8) & 255);
        self->green = ((int16_t) greenInt);
        self->greenComponent = (((float) greenInt)) / 255.0f;
        int32_t blueInt = ((tempValue) & 255);
        self->blue = ((int16_t) blueInt);
        self->blueComponent = (((float) blueInt)) / 255.0f;
        self->value = tempValue;
    return self;
}


- (int32_t) intValue {
        return self->value;
}


- (int32_t) toInt {
        return self->value;
}


- (const char*) toString {
        StringMaker* stringBuffer = ((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]);
        [stringBuffer append:"BasicColor: "];
        [stringBuffer append:"Alpha: "];
        [stringBuffer appendshort:self->alpha];
        [stringBuffer append:" Red: "];
        [stringBuffer appendshort:self->red];
        [stringBuffer append:" Green: "];
        [stringBuffer appendshort:self->green];
        [stringBuffer append:" Blue: "];
        [stringBuffer appendshort:self->blue];
        [stringBuffer append:" Value: "];
        [stringBuffer appendint:self->value];
        return [stringBuffer toString];
}


- (const char*) getName {
        return self->name;
}


- (float) getRedComponent {
        return self->redComponent;
}


- (float) getGreenComponent {
        return self->greenComponent;
}


- (float) getBlueComponent {
        return self->blueComponent;
}


- (float) getAlphaComponent {
        return self->alphaComponent;
}

@end

