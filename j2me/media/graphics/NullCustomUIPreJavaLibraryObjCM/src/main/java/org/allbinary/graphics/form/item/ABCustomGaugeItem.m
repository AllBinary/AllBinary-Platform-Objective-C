// Generated Code Do Not Modify
#include "org/allbinary/graphics/form/item/ABCustomGaugeItem.h"
#include "org/allbinary/graphics/color/BasicColor.h"
#include "org/allbinary/graphics/color/BasicColorFactory.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/graphics/form/item/ABCustomItem.h"


ABCustomGaugeItem* ABCustomGaugeItem_NULL_GAUGE_ITEM;

void ABCustomGaugeItem_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    ABCustomGaugeItem_NULL_GAUGE_ITEM = [((ABCustomGaugeItem*) [ABCustomGaugeItem alloc]) init:[StringUtil getInstance]->EMPTY_STRING :1 :0 :[BasicColorFactory getInstance]->BLACK :[BasicColorFactory getInstance]->WHITE];
}

@implementation ABCustomGaugeItem


- (instancetype) init:(const char*)label :(int32_t)maxValue :(int32_t)initialValue :(BasicColor*)backgroundBasicColor :(BasicColor*)foregroundBasicColor {
        self = [super init:label :backgroundBasicColor :foregroundBasicColor];
    return self;
}

@end

