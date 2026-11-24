// Generated Code Do Not Modify
#include "org/allbinary/logic/math/vector/Vertex.h"
#include "org/allbinary/logic/math/BasicDecimal.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/math/PositionStrings.h"
#include "org/allbinary/string/CommonSeps.h"
#if __has_include("org/allbinary/string/CommonSeps.h")
#include "org/allbinary/string/CommonSeps.h"
#endif
#if __has_include("org/allbinary/string/CommonSeps.h")
#include "org/allbinary/string/CommonSeps.h"
#endif



void Vertex_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation Vertex

- (void) initFields {
    self->x = ((BasicDecimal*) [((BasicDecimal*) [BasicDecimal alloc]) init:0]);
    self->y = ((BasicDecimal*) [((BasicDecimal*) [BasicDecimal alloc]) init:0]);
    self->z = ((BasicDecimal*) [((BasicDecimal*) [BasicDecimal alloc]) init:0]);
}


- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


- (const char*) toString {
        StringMaker* stringBuffer = ((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]);
        PositionStrings* positionStrings = [PositionStrings getInstance];
        [stringBuffer append:positionStrings->X_LABEL];
        [stringBuffer append:[self->x toString]];
        [stringBuffer append:[CommonSeps getInstance]->SPACE];
        [stringBuffer append:positionStrings->Y_LABEL];
        [stringBuffer append:[self->y toString]];
        [stringBuffer append:[CommonSeps getInstance]->SPACE];
        [stringBuffer append:positionStrings->Z_LABEL];
        [stringBuffer append:[self->z toString]];
        return [stringBuffer toString];
}

@end

