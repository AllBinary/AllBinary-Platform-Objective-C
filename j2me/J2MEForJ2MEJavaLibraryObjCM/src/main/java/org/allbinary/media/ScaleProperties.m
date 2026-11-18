// Generated Code Do Not Modify
#include "org/allbinary/media/ScaleProperties.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/string/CommonLabels.h"


ScaleProperties* ScaleProperties_instance;

void ScaleProperties_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    ScaleProperties_instance = [((ScaleProperties*) [ScaleProperties alloc]) init];
}

@implementation ScaleProperties

- (void) initFields {
    self->scaleX = 1.0f;
    self->scaleY = 1.0f;
    self->scaleWidth = 0;
    self->scaleHeight = 0;
    self->shouldScale = false;
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


- (const char*) toString {
        return [[[[[[[[[[[[((StringMaker*) [StringMaker alloc]) init] append:[CommonLabels getInstance]->COLON_SEP] appendboolean:self->shouldScale] append:"scaleX: "] appendfloat:self->scaleX] append:"scaleY: "] appendfloat:self->scaleY] append:"scaleWidth: "] appendint:self->scaleWidth] append:"scaleHeight: "] appendint:self->scaleHeight] toString];
}

@end

