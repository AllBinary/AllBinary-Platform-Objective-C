#ifndef ORG_ALLBINARY_GRAPHICS_FORM_ITEM_ABCUSTOMIMAGEITEM_H
#define ORG_ALLBINARY_GRAPHICS_FORM_ITEM_ABCUSTOMIMAGEITEM_H
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
@class ABCustomImageItem;
@class Image;
@class NullImage;
@class BasicColor;
@class ABCustomItem;
#include "org/allbinary/graphics/form/item/ABCustomItem.h"

@interface ABCustomImageItem : ABCustomItem {
@public
    int32_t yOffset;
}
- (instancetype) init:(const char*)label :(Image*)image :(int32_t)layout :(const char*)altText :(BasicColor*)basicColor :(int32_t)yOffset;
- (void) initFields;
- (Image*) getImage;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void ABCustomImageItem_staticInit(void);

#if __has_include("javax/microedition/lcdui/Image.h")
#include "javax/microedition/lcdui/Image.h"
#endif

#endif // ORG_ALLBINARY_GRAPHICS_FORM_ITEM_ABCUSTOMIMAGEITEM_H
