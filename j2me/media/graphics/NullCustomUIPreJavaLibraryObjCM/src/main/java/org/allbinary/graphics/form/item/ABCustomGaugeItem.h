#ifndef ORG_ALLBINARY_GRAPHICS_FORM_ITEM_ABCUSTOMGAUGEITEM_H
#define ORG_ALLBINARY_GRAPHICS_FORM_ITEM_ABCUSTOMGAUGEITEM_H
// Generated Code Do Not Modify
// package org.allbinary.graphics.form.item

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class ABCustomGaugeItem;
@class BasicColor;
@class BasicColorFactory;
@class StringUtil;
@class ABCustomItem;
#include "org/allbinary/graphics/form/item/ABCustomItem.h"

@interface ABCustomGaugeItem : ABCustomItem {
@public
}
- (instancetype) init:(const char*)label :(int32_t)maxValue :(int32_t)initialValue :(BasicColor*)backgroundBasicColor :(BasicColor*)foregroundBasicColor;
@end

extern ABCustomGaugeItem* ABCustomGaugeItem_NULL_GAUGE_ITEM;
// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void ABCustomGaugeItem_staticInit(void);


#endif // ORG_ALLBINARY_GRAPHICS_FORM_ITEM_ABCUSTOMGAUGEITEM_H
