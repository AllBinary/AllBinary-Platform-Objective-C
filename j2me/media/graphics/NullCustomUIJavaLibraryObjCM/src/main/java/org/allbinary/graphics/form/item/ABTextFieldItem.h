#ifndef ORG_ALLBINARY_GRAPHICS_FORM_ITEM_ABTEXTFIELDITEM_H
#define ORG_ALLBINARY_GRAPHICS_FORM_ITEM_ABTEXTFIELDITEM_H
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
@class ABTextFieldItem;
@class Canvas;
@class Font;
@class BasicColor;
@class StringUtil;
@class Visitor;
@class ABTextItem;
#if __has_include("javax/microedition/lcdui/Font.h")
#include "javax/microedition/lcdui/Font.h"
#endif
#include "org/allbinary/graphics/form/item/ABTextItem.h"

@interface ABTextFieldItem : ABTextItem {
@public
    Font* font;
}
- (instancetype) init:(Canvas*)canvas :(Visitor*)visitor :(const char*)label :(const char*)value :(int32_t)maxSize :(int32_t)layout :(const char*)altText :(Font*)font :(BasicColor*)backgroundBasicColor :(BasicColor*)foregroundBasicColor;
- (void) initFields;
- (const char*) getLabel;
- (void) setLabel:(const char*)label;
- (const char*) getString;
- (void) setString:(const char*)string;
- (void) setFocus:(bool)state;
- (int32_t) getFontHeight;
- (void) setBackgroundBasicColorP:(BasicColor*)basicColor;
- (void) setForegroundBasicColorP:(BasicColor*)basicColor;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void ABTextFieldItem_staticInit(void);


#endif // ORG_ALLBINARY_GRAPHICS_FORM_ITEM_ABTEXTFIELDITEM_H
