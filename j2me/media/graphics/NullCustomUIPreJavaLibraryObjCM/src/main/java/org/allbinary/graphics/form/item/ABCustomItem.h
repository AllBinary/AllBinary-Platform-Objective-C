#ifndef ORG_ALLBINARY_GRAPHICS_FORM_ITEM_ABCUSTOMITEM_H
#define ORG_ALLBINARY_GRAPHICS_FORM_ITEM_ABCUSTOMITEM_H
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
@class ABCustomItem;
@class Graphics;
@class Screen;
@class BasicColor;
@class BasicColorFactory;
@class NullUtil;
@class StringUtil;

@interface ABCustomItem : ABObject {
@public
}
- (instancetype) init:(const char*)label :(BasicColor*)backgroundBasicColor :(BasicColor*)foregroundBasicColor;
+ (ABCustomItem*) getNullInstance;
- (void) setOwner:(Screen*)owner;
- (void) paintXY:(Graphics*)graphics :(int32_t)x :(int32_t)y;
- (void) paintUnselected:(Graphics*)graphics :(int32_t)x :(int32_t)y;
- (bool) isFocusable;
- (const char*) getLabel;
- (void) setLabel:(const char*)label;
- (int32_t) getHeight;
- (void) setHeight:(int32_t)height;
- (float) getValue;
- (void) setValue:(float)value;
- (int32_t) getMinimumWidth;
- (int32_t) getMinimumHeight;
- (void) preMeasurement:(Graphics*)graphics;
@end

extern id ABCustomItem_NULL_CUSTOM_ITEM;
// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void ABCustomItem_staticInit(void);


#endif // ORG_ALLBINARY_GRAPHICS_FORM_ITEM_ABCUSTOMITEM_H
