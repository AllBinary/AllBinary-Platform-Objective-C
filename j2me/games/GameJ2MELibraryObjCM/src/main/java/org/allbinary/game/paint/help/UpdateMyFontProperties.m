// Generated Code Do Not Modify
#include "org/allbinary/game/paint/help/UpdateMyFontProperties.h"
#include "org/allbinary/logic/NullUtil.h"
#include "org/allbinary/logic/string/StringUtil.h"
#if __has_include("org/allbinary/logic/string/StringUtil.h")
#include "org/allbinary/logic/string/StringUtil.h"
#endif
#if __has_include("org/allbinary/logic/NullUtil.h")
#include "org/allbinary/logic/NullUtil.h"
#endif
#if __has_include("org/allbinary/logic/NullUtil.h")
#include "org/allbinary/logic/NullUtil.h"
#endif
#if __has_include("org/allbinary/logic/NullUtil.h")
#include "org/allbinary/logic/NullUtil.h"
#endif
#if __has_include("org/allbinary/logic/string/StringUtil.h")
#include "org/allbinary/logic/string/StringUtil.h"
#endif
#if __has_include("org/allbinary/logic/NullUtil.h")
#include "org/allbinary/logic/NullUtil.h"
#endif



void UpdateMyFontProperties_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation UpdateMyFontProperties

- (void) initFields {
    self->actionStringArray = [[StringUtil getInstance] getArrayInstance];
    self->keymappingBeginWidthArray = [NullUtil getInstance]->NULL_INT_ARRAY;
    self->actionStringDeltaXArray = [NullUtil getInstance]->NULL_INT_ARRAY;
    self->inputDeltaXArray = [NullUtil getInstance]->NULL_INT_ARRAY_ARRAY;
    self->sepArray = [StringUtil getInstance]->ONE_EMPTY_STRING_ARRAY_OF_ARRAYS;
    self->sepWidthArray = [NullUtil getInstance]->NULL_INT_ARRAY_ARRAY;
    self->charHeight = 0;
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}

@end

