#ifndef ORG_ALLBINARY_GRAPHICS_FORM_SCROLLSELECTIONFORM_H
#define ORG_ALLBINARY_GRAPHICS_FORM_SCROLLSELECTIONFORM_H
/*
 *
 * AllBinary Open License Version 1
 * Copyright (c) 2011 AllBinary
 * 
 * By agreeing to this license you and any business entity you represent are
 * legally bound to the AllBinary Open License Version 1 legal agreement.
 * 
 * You may obtain the AllBinary Open License Version 1 legal agreement from
 * AllBinary or the root directory of AllBinary's AllBinary Platform repository.
 * 
 * Created By: Travis Berthelot
 *  
 */
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
@class ScrollSelectionForm;
@class Canvas;
@class Graphics;
@class GPoint;
@class Rectangle;
@class BasicColor;
@class BasicColorFactory;
@class ABCustomItem;
@class NullUtil;
@class LogUtil;
@class StringMaker;
@class StringUtil;
@class RectangleCollisionUtil;
@class CommonLabels;
@class CommonSeps;
@class CommonStrings;
@class PaintableForm;
@class ItemPaintableFactory;
@class ItemIndexPaintable;
@class ItemIndexDx;
@class ItemPaintable;
@class FormTypeFactory;
@class ScrollSelectionFormTempHorizontalPaintable;
@class ScrollSelectionFormTempHorizontalDx;
@class ScrollSelectionFormVerticalPaintable;
@class ScrollSelectionFormVericalDx;
@class ScrollSelectionFormHorizontalPaintable;
@class ScrollSelectionFormHorizontalDx;
@class FormType;
#if __has_include("org/allbinary/graphics/color/BasicColor.h")
#include "org/allbinary/graphics/color/BasicColor.h"
#endif
#if __has_include("org/allbinary/math/RectangleCollisionUtil.h")
#include "org/allbinary/math/RectangleCollisionUtil.h"
#endif
#include "org/allbinary/graphics/form/PaintableForm.h"
#if __has_include("org/allbinary/graphics/form/ItemIndexPaintable.h")
#include "org/allbinary/graphics/form/ItemIndexPaintable.h"
#endif
#if __has_include("org/allbinary/graphics/form/ItemIndexDx.h")
#include "org/allbinary/graphics/form/ItemIndexDx.h"
#endif
#if __has_include("org/allbinary/graphics/form/ItemPaintable.h")
#include "org/allbinary/graphics/form/ItemPaintable.h"
#endif

@interface ScrollSelectionForm : PaintableForm {
@public
    RectangleCollisionUtil* rectangleCollisionUtil;
    int32_t border;
    int32_t halfBorder;
    BasicColor* buttonBasicColor;
    ItemIndexPaintable* scrollSelectionFormFormTypeItemIndexPaintable;
    ItemIndexDx* formTypeItemIndexDx;
    ItemPaintable* paintable;
    int32_t adjustedExtraBorder;
}
- (instancetype) init:(const char*)title :(ABCustomItem**)items :(ItemPaintableFactory*)formPaintableFactory :(int32_t)border :(int32_t)adjustedExtraBorder :(BasicColor*)backgroundBasicColor :(BasicColor*)foregroundBasicColor;
- (void) initFields;
+ (PaintableForm*) createForm:(const char*)title :(ABCustomItem**)items :(ItemPaintableFactory*)formPaintableFactory :(int32_t)border :(BasicColor*)backgroundBasicColor :(BasicColor*)foregroundBasicColor;
+ (ScrollSelectionForm*) getNullScrollSelectionForm;
+ (ScrollSelectionForm*) getNullScrollSelectionFormHorizontal;
- (void) init_:(Rectangle*)rectangle :(FormType*)formType;
- (int32_t) paintItemHorizontal:(Graphics*)graphics :(int32_t)index :(ABCustomItem*)item :(int32_t)x :(int32_t)y;
- (int32_t) paintItemVertical:(Graphics*)graphics :(int32_t)index :(ABCustomItem*)item :(int32_t)x :(int32_t)y;
- (int32_t) paintItemTempHorizontal:(Graphics*)graphics :(int32_t)index :(ABCustomItem*)item :(int32_t)x :(int32_t)y;
- (int32_t) getSelectedIndexForPointHorizontalDx:(int32_t)index :(ABCustomItem*)item :(int32_t)dx :(int32_t)dy;
- (int32_t) getSelectedIndexForPointVerticalDx:(int32_t)index :(ABCustomItem*)item :(int32_t)dx :(int32_t)dy;
- (int32_t) getSelectedIndexForPointTempHorizontalDx:(int32_t)index :(ABCustomItem*)item :(int32_t)dx :(int32_t)dy;
- (int32_t) append:(ABCustomItem*)item;
- (ABCustomItem*) getSelectedItem:(GPoint*)point;
- (int32_t) getItemIndex:(ABCustomItem*)item;
- (int32_t) getStartIndex;
- (int32_t) getSelectedIndexForPoint:(GPoint*)point;
- (int32_t) processInputKey:(int32_t)gameKeyCode;
- (bool) isInForm:(GPoint*)point;
- (int32_t) paintItem:(Graphics*)graphics :(int32_t)index :(ABCustomItem*)item :(int32_t)x :(int32_t)y;
- (int32_t) paintUnselectedItem:(Graphics*)graphics :(int32_t)index :(ABCustomItem*)item :(int32_t)x :(int32_t)y;
- (int32_t) getDiffX:(ABCustomItem*)item;
- (int32_t) getDx;
- (int32_t) getDy;
- (void) setButtonBasicColor:(BasicColor*)buttonBasicColor;
- (BasicColor*) getButtonBasicColor;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void ScrollSelectionForm_staticInit(void);

#if __has_include("org/allbinary/graphics/form/item/ABCustomItem.h")
#include "org/allbinary/graphics/form/item/ABCustomItem.h"
#endif

#endif // ORG_ALLBINARY_GRAPHICS_FORM_SCROLLSELECTIONFORM_H
