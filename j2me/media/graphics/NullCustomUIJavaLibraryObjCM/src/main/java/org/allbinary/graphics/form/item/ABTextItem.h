#ifndef ORG_ALLBINARY_GRAPHICS_FORM_ITEM_ABTEXTITEM_H
#define ORG_ALLBINARY_GRAPHICS_FORM_ITEM_ABTEXTITEM_H
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
@class ABTextItem;
@class Graphics;
@class BasicColor;
@class CustomCustomItem;
@class ABCustomItemInterface;
@class ABStringComponent;
#include "org/allbinary/graphics/form/item/CustomCustomItem.h"
#include "org/allbinary/graphics/form/item/ABCustomItemInterface.h"

@interface ABTextItem : CustomCustomItem <ABCustomItemInterface> {
@public
}
- (instancetype) init:(const char*)label :(int32_t)layout :(const char*)altText :(BasicColor*)backgroundBasicColor :(BasicColor*)foregroundBasicColor;
- (void) keyPressed:(int32_t)keyCode;
- (void) paintUnselected:(Graphics*)graphics :(int32_t)x :(int32_t)y;
- (ABStringComponent*) getLabelStringComponent;
- (int32_t) getMinimumWidth;
- (int32_t) getMinimumHeight;
- (const char*) getLabel;
- (void) paintXY:(Graphics*)graphics :(int32_t)x :(int32_t)y;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void ABTextItem_staticInit(void);


#endif // ORG_ALLBINARY_GRAPHICS_FORM_ITEM_ABTEXTITEM_H
