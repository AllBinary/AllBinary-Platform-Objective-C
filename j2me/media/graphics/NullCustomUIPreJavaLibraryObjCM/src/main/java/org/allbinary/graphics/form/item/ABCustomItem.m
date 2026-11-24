// Generated Code Do Not Modify
#include "org/allbinary/graphics/form/item/ABCustomItem.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "javax/microedition/lcdui/Screen.h"
#include "org/allbinary/graphics/color/BasicColor.h"
#include "org/allbinary/graphics/color/BasicColorFactory.h"
#include "org/allbinary/logic/NullUtil.h"
#include "org/allbinary/logic/string/StringUtil.h"
#if __has_include("org/allbinary/logic/NullUtil.h")
#include "org/allbinary/logic/NullUtil.h"
#endif
#if __has_include("org/allbinary/logic/NullUtil.h")
#include "org/allbinary/logic/NullUtil.h"
#endif
#if __has_include("org/allbinary/logic/string/StringUtil.h")
#include "org/allbinary/logic/string/StringUtil.h"
#endif
#if __has_include("org/allbinary/graphics/color/BasicColorFactory.h")
#include "org/allbinary/graphics/color/BasicColorFactory.h"
#endif
#if __has_include("org/allbinary/graphics/color/BasicColorFactory.h")
#include "org/allbinary/graphics/color/BasicColorFactory.h"
#endif
#if __has_include("org/allbinary/logic/string/StringUtil.h")
#include "org/allbinary/logic/string/StringUtil.h"
#endif


id ABCustomItem_NULL_CUSTOM_ITEM;

void ABCustomItem_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    ABCustomItem_NULL_CUSTOM_ITEM = [NullUtil getInstance]->NULL_OBJECT;
}

@implementation ABCustomItem


+ (ABCustomItem*) getNullInstance {
        if ((ABCustomItem_staticInit(), ABCustomItem_NULL_CUSTOM_ITEM) == [NullUtil getInstance]->NULL_OBJECT) {
            ABCustomItem_NULL_CUSTOM_ITEM = ((ABCustomItem*) [((ABCustomItem*) [ABCustomItem alloc]) init:[StringUtil getInstance]->EMPTY_STRING :[BasicColorFactory getInstance]->BLACK :[BasicColorFactory getInstance]->WHITE]);
        }
        return ((ABCustomItem*) (ABCustomItem_staticInit(), ABCustomItem_NULL_CUSTOM_ITEM));
}


- (instancetype) init:(const char*)label :(BasicColor*)backgroundBasicColor :(BasicColor*)foregroundBasicColor {
    self = [super init];
    return self;
}


- (void) setOwner:(Screen*)owner {
}


- (void) paintXY:(Graphics*)graphics :(int32_t)x :(int32_t)y {
}


- (void) paintUnselected:(Graphics*)graphics :(int32_t)x :(int32_t)y {
}


- (bool) isFocusable {
        return false;
}


- (const char*) getLabel {
        return [StringUtil getInstance]->EMPTY_STRING;
}


- (void) setLabel:(const char*)label {
}


- (int32_t) getHeight {
        return 0;
}


- (void) setHeight:(int32_t)height {
}


- (float) getValue {
        return 0.0f;
}


- (void) setValue:(float)value {
}


- (int32_t) getMinimumWidth {
        return 0;
}


- (int32_t) getMinimumHeight {
        return 0;
}


- (void) preMeasurement:(Graphics*)graphics {
}

@end

