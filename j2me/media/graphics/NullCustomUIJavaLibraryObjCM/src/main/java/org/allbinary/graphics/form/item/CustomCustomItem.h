#ifndef ORG_ALLBINARY_GRAPHICS_FORM_ITEM_CUSTOMCUSTOMITEM_H
#define ORG_ALLBINARY_GRAPHICS_FORM_ITEM_CUSTOMCUSTOMITEM_H
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
@class CustomCustomItem;
@class Graphics;
@class BasicColor;
@class MyFontProcessor;
@class UpdateMyFontInterface;
@class UpdateMyFontProcessor;
@class ABCustomItem;
#if __has_include("org/allbinary/graphics/font/MyFontProcessor.h")
#include "org/allbinary/graphics/font/MyFontProcessor.h"
#endif
#include "org/allbinary/graphics/font/UpdateMyFontInterface.h"
#include "org/allbinary/graphics/form/item/ABCustomItem.h"

@interface CustomCustomItem : ABCustomItem <UpdateMyFontInterface> {
@public
    MyFontProcessor* updateMyFontProcessor;
    MyFontProcessor* myFontProcessor;
}
- (instancetype) init:(const char*)label :(BasicColor*)backgroundBasicColor :(BasicColor*)foregroundBasicColor;
- (void) initFields;
- (void) updateMeasurement:(Graphics*)graphics;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void CustomCustomItem_staticInit(void);


#endif // ORG_ALLBINARY_GRAPHICS_FORM_ITEM_CUSTOMCUSTOMITEM_H
