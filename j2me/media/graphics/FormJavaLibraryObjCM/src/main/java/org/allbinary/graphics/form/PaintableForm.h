#ifndef ORG_ALLBINARY_GRAPHICS_FORM_PAINTABLEFORM_H
#define ORG_ALLBINARY_GRAPHICS_FORM_PAINTABLEFORM_H
// Generated Code Do Not Modify
// package org.allbinary.graphics.form

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class PaintableForm;
@class GPoint;
@class Rectangle;
@class RectangleFactory;
@class BasicColor;
@class BasicColorFactory;
@class CanvasStrings;
@class ABCustomItem;
@class NullUtil;
@class StringUtil;
@class ABCustomForm;
@class FormTypeFactory;
@class FormType;
#if __has_include("org/allbinary/graphics/Rectangle.h")
#include "org/allbinary/graphics/Rectangle.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/CanvasStrings.h")
#include "org/allbinary/graphics/displayable/CanvasStrings.h"
#endif
#include "org/allbinary/graphics/form/ABCustomForm.h"
#if __has_include("org/allbinary/graphics/form/FormType.h")
#include "org/allbinary/graphics/form/FormType.h"
#endif

@interface PaintableForm : ABCustomForm {
@public
    CanvasStrings* canvasStrings;
    Rectangle* rectangle;
    int32_t x;
    int32_t y;
    FormType* formType;
}
- (instancetype) init:(const char*)title :(ABCustomItem**)items :(BasicColor*)backgroundBasicColor :(BasicColor*)foregroundBasicColor;
- (void) initFields;
+ (PaintableForm*) getNullPaintableForm;
- (void) initMethod:(Rectangle*)rectangle :(FormType*)formType;
- (int32_t) getWidth;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void PaintableForm_staticInit(void);


#endif // ORG_ALLBINARY_GRAPHICS_FORM_PAINTABLEFORM_H
