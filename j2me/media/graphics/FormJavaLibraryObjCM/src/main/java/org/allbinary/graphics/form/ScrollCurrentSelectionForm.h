#ifndef ORG_ALLBINARY_GRAPHICS_FORM_SCROLLCURRENTSELECTIONFORM_H
#define ORG_ALLBINARY_GRAPHICS_FORM_SCROLLCURRENTSELECTIONFORM_H
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
@class ScrollCurrentSelectionForm;
@class Graphics;
@class Processor;
@class Rectangle;
@class BasicColor;
@class MyFontProcessor;
@class UpdateMyFontInterface;
@class UpdateMyFontProcessor;
@class ABCustomItem;
@class ScrollSelectionForm;
@class ItemIndexDx;
@class ItemPaintableFactory;
@class FormTypeFactory;
@class VerticalFormProcessor;
@class VerticalItemIndexDx;
@class HorizontalFormProcessor;
@class HorizontalItemIndexDx;
@class TempHorizontalFormProcessor;
@class TempHorizontalItemIndexDx;
@class FormType;
#if __has_include("org/allbinary/canvas/Processor.h")
#include "org/allbinary/canvas/Processor.h"
#endif
#if __has_include("org/allbinary/graphics/font/MyFontProcessor.h")
#include "org/allbinary/graphics/font/MyFontProcessor.h"
#endif
#include "org/allbinary/graphics/font/UpdateMyFontInterface.h"
#include "org/allbinary/graphics/form/ScrollSelectionForm.h"
#if __has_include("org/allbinary/graphics/form/ItemIndexDx.h")
#include "org/allbinary/graphics/form/ItemIndexDx.h"
#endif

@interface ScrollCurrentSelectionForm : ScrollSelectionForm <UpdateMyFontInterface> {
@public
    bool moveForSmallScreen;
    MyFontProcessor* updateMyFontProcessor;
    MyFontProcessor* myFontProcessor;
    Processor* processor;
    ItemIndexDx* preItemIndexDx;
    int32_t dx;
    int32_t dy;
    int32_t maxWidth;
}
- (instancetype) init:(const char*)title :(ABCustomItem**)items :(ItemPaintableFactory*)formPaintableFactory :(int32_t)border :(int32_t)adjustedExtraBorder :(bool)moveForSmallScreen :(BasicColor*)backgroundBasicColor :(BasicColor*)foregroundBasicColor;
- (void) initFields;
- (void) init_:(Rectangle*)rectangle :(FormType*)formType;
- (void) updateMeasurement:(Graphics*)graphics;
- (void) processTempHorizontalForm;
- (void) processHorizontalForm;
- (void) processVerticalForm;
- (int32_t) getXTempHorizontalForm:(int32_t)index :(ABCustomItem*)item :(int32_t)dx :(int32_t)dy;
- (int32_t) getXHorizontalForm:(int32_t)index :(ABCustomItem*)item :(int32_t)dx :(int32_t)dy;
- (int32_t) getXVerticalForm:(int32_t)index :(ABCustomItem*)item :(int32_t)dx :(int32_t)dy;
- (int32_t) getDiffX:(ABCustomItem*)item;
- (int32_t) getDx;
- (int32_t) getDy;
- (void) paint:(Graphics*)graphics;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void ScrollCurrentSelectionForm_staticInit(void);


#endif // ORG_ALLBINARY_GRAPHICS_FORM_SCROLLCURRENTSELECTIONFORM_H
