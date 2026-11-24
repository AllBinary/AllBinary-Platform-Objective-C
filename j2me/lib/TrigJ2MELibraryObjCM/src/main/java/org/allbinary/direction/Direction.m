// Generated Code Do Not Modify
#include "org/allbinary/direction/Direction.h"
#include "org/allbinary/logic/string/StringMaker.h"


static Direction** Direction_directionArray;

void Direction_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    Direction_directionArray = ((Direction**) java_array_new(sizeof(Direction*), 13));
}

@implementation Direction

- (void) initFields {
    
    
    
    
}


- (instancetype) init:(const char*)name :(const char*)otherName :(int32_t)value :(int32_t)frameFactor {
    self = [super init];
    [self initFields];
        self->name = name;
        self->otherName = otherName;
        self->value = value;
        self->frameFactor = frameFactor;
        (Direction_staticInit(), Direction_directionArray)[value] = self;
    return self;
}


+ (Direction*) getInstance:(int32_t)direction {
        return (Direction_staticInit(), Direction_directionArray)[direction];
}


- (int32_t) getValue {
        return self->value;
}


- (int32_t) getFrameFactor {
        return self->frameFactor;
}


- (const char*) getOtherName {
        return self->otherName;
}


- (const char*) getName {
        return self->name;
}


- (const char*) toString {
        StringMaker* stringBuffer = ((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]);
        [stringBuffer append:"Direction: "];
        [stringBuffer append:[self getName]];
        [stringBuffer append:" Or: "];
        [stringBuffer append:[self getOtherName]];
        [stringBuffer append:" Value: "];
        [stringBuffer appendint:self->value];
        return [stringBuffer toString];
}

@end

