#ifndef ORG_ALLBINARY_GRAPHICS_FORM_MULTIPLESCROLLSELECTIONHORIZONTALFORM_H
#define ORG_ALLBINARY_GRAPHICS_FORM_MULTIPLESCROLLSELECTIONHORIZONTALFORM_H
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
@class MultipleScrollSelectionHorizontalForm;
@class Font;
@class Graphics;
@class J2MEUtil;
@class Rectangle;
@class BasicColor;
@class BasicColorFactory;
@class MyFontProcessor;
@class UpdateMyFontInterface;
@class UpdateMyFontProcessor;
@class ABCustomItem;
@class NullPaintable;
@class Paintable;
@class PreLogUtil;
@class StringMaker;
@class ScrollSelectionForm;
@class ItemPaintableFactory;
@class FormType;
@class ItemIndexPaintable;
@class MultipleScrollSelectionFormRectPaintable;
@class FormTypeFactory;
@class MultipleScrollSelectionFormVerticalPaintable;
@class MultipleScrollSelectionFormHorizontalPaintable;
#if __has_include("org/allbinary/graphics/font/MyFontProcessor.h")
#include "org/allbinary/graphics/font/MyFontProcessor.h"
#endif
#include "org/allbinary/graphics/font/UpdateMyFontInterface.h"
#if __has_include("org/allbinary/graphics/paint/Paintable.h")
#include "org/allbinary/graphics/paint/Paintable.h"
#endif
#include "org/allbinary/graphics/form/ScrollSelectionForm.h"
#if __has_include("org/allbinary/graphics/form/ItemIndexPaintable.h")
#include "org/allbinary/graphics/form/ItemIndexPaintable.h"
#endif

@interface MultipleScrollSelectionHorizontalForm : ScrollSelectionForm <UpdateMyFontInterface> {
@public
    Paintable* rectPaintable;
    ItemIndexPaintable* multipleScrollSelectionHorizontalFormTypeItemIndexPaintable;
    int32_t backgroundColor;
    MyFontProcessor* myFontProcessor;
    bool logged;
    int32_t fontHeight;
}
- (instancetype) init:(const char*)title :(ABCustomItem**)items :(ItemPaintableFactory*)formPaintableFactory :(int32_t)border :(BasicColor*)backgroundBasicColor :(BasicColor*)foregroundBasicColor;
- (void) initFields;
+ (ScrollSelectionForm*) createForm:(const char*)title :(ABCustomItem**)items :(Rectangle*)rectangle :(FormType*)formType :(int32_t)border :(BasicColor*)backgroundBasicColor :(BasicColor*)foregroundBasicColor;
- (void) fillRect:(Graphics*)graphics;
- (void) initMethod:(Rectangle*)rectangle :(FormType*)formType;
- (void) updateMeasurement:(Graphics*)graphics;
- (int32_t) paintHorizontal:(Graphics*)graphics :(int32_t)index :(ABCustomItem*)item :(int32_t)dx :(int32_t)dy;
- (int32_t) paintVertical:(Graphics*)graphics :(int32_t)index :(ABCustomItem*)item :(int32_t)dx :(int32_t)dy;
- (int32_t) getStartIndex;
- (void) paint:(Graphics*)graphics;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void MultipleScrollSelectionHorizontalForm_staticInit(void);


#endif // ORG_ALLBINARY_GRAPHICS_FORM_MULTIPLESCROLLSELECTIONHORIZONTALFORM_H
