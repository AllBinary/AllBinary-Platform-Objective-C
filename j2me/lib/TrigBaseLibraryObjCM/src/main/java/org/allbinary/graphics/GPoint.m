// Generated Code Do Not Modify
#include "org/allbinary/graphics/GPoint.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/math/PositionStrings.h"
#include "org/allbinary/string/CommonSeps.h"
#if __has_include("org/allbinary/string/CommonSeps.h")
#include "org/allbinary/string/CommonSeps.h"
#endif
#if __has_include("org/allbinary/string/CommonSeps.h")
#include "org/allbinary/string/CommonSeps.h"
#endif


static const char* GPoint_POINT_LABEL = "Point: ";

void GPoint_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation GPoint

- (void) initFields {
    
    
    
}


+ (GPoint*) getInstance:(GPoint*)point {
        return ((GPoint*) [((GPoint*) [GPoint alloc]) init:[point getX] :[point getY] :[point getZ]]);
}


- (instancetype) init:(int32_t)x :(int32_t)y :(int32_t)z {
    self = [super init];
    [self initFields];
        self->x = x;
        self->y = y;
        self->z = z;
    return self;
}


- (int32_t) getX {
        return self->x;
}


- (int32_t) getY {
        return self->y;
}


- (int32_t) getZ {
        return self->z;
}


- (int32_t) getRawX {
        return self->x;
}


- (int32_t) getRawY {
        return self->y;
}


- (int32_t) getRawZ {
        return self->z;
}


- (const char*) toString {
        return [GPoint toStringStatic:[self getX] :[self getY] :[self getZ]];
}


+ (const char*) toStringStatic:(int32_t)x :(int32_t)y :(int32_t)z {
        StringMaker* stringBuffer = ((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]);
        PositionStrings* positionStrings = [PositionStrings getInstance];
        [stringBuffer append:GPoint_POINT_LABEL];
        [stringBuffer append:positionStrings->X_LABEL];
        [stringBuffer appendint:x];
        [stringBuffer append:[CommonSeps getInstance]->SPACE];
        [stringBuffer append:positionStrings->Y_LABEL];
        [stringBuffer appendint:y];
        [stringBuffer append:[CommonSeps getInstance]->SPACE];
        [stringBuffer append:positionStrings->Z_LABEL];
        [stringBuffer appendint:z];
        return [stringBuffer toString];
}

@end

