// Generated Code Do Not Modify
#include "org/allbinary/animation/image/AnimationFactoryInitializationVisitor.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/math/PositionStrings.h"
#include "org/allbinary/string/CommonLabels.h"
#include "org/allbinary/string/CommonSeps.h"
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/math/PositionStrings.h")
#include "org/allbinary/math/PositionStrings.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/math/PositionStrings.h")
#include "org/allbinary/math/PositionStrings.h"
#endif



void AnimationFactoryInitializationVisitor_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation AnimationFactoryInitializationVisitor

- (void) initFields {
    self->width = 0;
    self->height = 0;
    self->dx = 0;
    self->dy = 0;
    self->originalDx = 0;
    self->originalDy = 0;
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


- (void) visit {
}


- (const char*) toString {
        CommonSeps* commonSeps = [CommonSeps getInstance];
        CommonLabels* commonLabels = [CommonLabels getInstance];
        StringMaker* stringBuffer = ((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]);
        [[stringBuffer append:[PositionStrings getInstance]->DX_LABEL] appendfloat:((float) self->dx)];
        [[stringBuffer append:[PositionStrings getInstance]->DY_LABEL] appendfloat:((float) self->dy)];
        [stringBuffer append:commonLabels->WIDTH_LABEL];
        [stringBuffer appendint:self->width];
        [stringBuffer append:commonSeps->SPACE];
        [stringBuffer append:commonLabels->HEIGHT_LABEL];
        [stringBuffer appendint:self->height];
        return [stringBuffer toString];
}

@end

