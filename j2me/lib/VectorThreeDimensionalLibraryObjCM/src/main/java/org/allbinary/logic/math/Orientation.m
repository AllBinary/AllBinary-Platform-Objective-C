// Generated Code Do Not Modify
#include "org/allbinary/logic/math/Orientation.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/logic/math/BasicDecimal.h"


Orientation* Orientation_NONE;
static Orientation* Orientation_SINGLETON;

void Orientation_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    Orientation_NONE = ((Orientation*) [((Orientation*) [Orientation alloc]) init:0 :0 :0]);
    Orientation_SINGLETON = ((Orientation*) [((Orientation*) [Orientation alloc]) init:0 :0 :0]);
}

@implementation Orientation

- (void) initFields {
    self->yaw = ((BasicDecimal*) [((BasicDecimal*) [BasicDecimal alloc]) init:0]);
    self->pitch = ((BasicDecimal*) [((BasicDecimal*) [BasicDecimal alloc]) init:0]);
    self->roll = ((BasicDecimal*) [((BasicDecimal*) [BasicDecimal alloc]) init:0]);
}


+ (Orientation*) getInstance:(int32_t)yaw :(int32_t)pitch :(int32_t)roll {
        [(Orientation_staticInit(), Orientation_SINGLETON)->yaw setint:yaw];
        [(Orientation_staticInit(), Orientation_SINGLETON)->pitch setint:pitch];
        [(Orientation_staticInit(), Orientation_SINGLETON)->roll setint:roll];
        return (Orientation_staticInit(), Orientation_SINGLETON);
}


- (instancetype) init:(int32_t)yaw :(int32_t)pitch :(int32_t)roll {
    self = [super init];
    [self initFields];
        [self->yaw setint:yaw];
        [self->pitch setint:pitch];
        [self->roll setint:roll];
    return self;
}


- (const char*) toString {
        StringMaker* stringBuffer = ((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]);
        [stringBuffer append:"Y: "];
        [stringBuffer append:[self->yaw toString]];
        [stringBuffer append:" P: "];
        [stringBuffer append:[self->pitch toString]];
        [stringBuffer append:" R: "];
        [stringBuffer append:[self->roll toString]];
        return [stringBuffer toString];
}

@end

