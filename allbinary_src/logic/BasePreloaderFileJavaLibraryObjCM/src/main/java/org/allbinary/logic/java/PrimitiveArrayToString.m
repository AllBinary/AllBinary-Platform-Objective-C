// Generated Code Do Not Modify
#include "org/allbinary/logic/java/PrimitiveArrayToString.h"
#include "org/allbinary/logic/string/StringMaker.h"



void PrimitiveArrayToString_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation PrimitiveArrayToString

- (instancetype) init {
    self = [super init];
    return self;
}


+ (const char*) toString:(float*)floats {
        StringMaker* stringBuffer = [((StringMaker*) [StringMaker alloc]) init];
        for (int32_t index = 0; index < java_array_length(floats); index++) {
            [stringBuffer appendfloat:floats[index]];
        }
        return [stringBuffer toString];
}

@end

