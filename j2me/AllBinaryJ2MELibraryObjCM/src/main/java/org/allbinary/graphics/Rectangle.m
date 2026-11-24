// Generated Code Do Not Modify
#include "org/allbinary/graphics/Rectangle.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/string/CommonLabels.h"
#include "org/allbinary/string/CommonSeps.h"
#include "org/allbinary/graphics/GPoint.h"
#if __has_include("org/allbinary/string/CommonSeps.h")
#include "org/allbinary/string/CommonSeps.h"
#endif
#if __has_include("org/allbinary/string/CommonLabels.h")
#include "org/allbinary/string/CommonLabels.h"
#endif
#if __has_include("org/allbinary/string/CommonSeps.h")
#include "org/allbinary/string/CommonSeps.h"
#endif
#if __has_include("org/allbinary/string/CommonLabels.h")
#include "org/allbinary/string/CommonLabels.h"
#endif



void Rectangle_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation Rectangle

- (void) initFields {
    
    
    
}


- (instancetype) init:(GPoint*)point :(int32_t)width :(int32_t)height {
    self = [super init];
    [self initFields];
        self->point = point;
        self->width = width;
        self->height = height;
    return self;
}


- (GPoint*) getPoint {
        return self->point;
}


- (void) setPoint:(GPoint*)point {
        self->point = point;
}


- (int32_t) getMaxX {
        return [self->point getX] + self->width;
}


- (int32_t) getMaxY {
        return [self->point getY] + self->height;
}


- (int32_t) getWidth {
        return self->width;
}


- (void) setWidth:(int32_t)width {
        self->width = width;
}


- (int32_t) getHeight {
        return self->height;
}


- (void) setHeight:(int32_t)height {
        self->height = height;
}


- (const char*) toString {
        StringMaker* stringBuffer = ((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]);
        [stringBuffer append:[[self getPoint] toString]];
        [stringBuffer append:[CommonSeps getInstance]->SPACE];
        [stringBuffer append:[CommonLabels getInstance]->WIDTH_LABEL];
        [stringBuffer appendint:[self getWidth]];
        [stringBuffer append:[CommonSeps getInstance]->SPACE];
        [stringBuffer append:[CommonLabels getInstance]->HEIGHT_LABEL];
        [stringBuffer appendint:[self getHeight]];
        [stringBuffer append:" MaxX: "];
        [stringBuffer appendint:[self getMaxX]];
        [stringBuffer append:" MaxY: "];
        [stringBuffer appendint:[self getMaxY]];
        return [stringBuffer toString];
}

@end

