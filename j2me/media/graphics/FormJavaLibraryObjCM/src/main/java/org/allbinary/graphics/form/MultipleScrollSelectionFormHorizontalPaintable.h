#ifndef ORG_ALLBINARY_GRAPHICS_FORM_MULTIPLESCROLLSELECTIONFORMHORIZONTALPAINTABLE_H
#define ORG_ALLBINARY_GRAPHICS_FORM_MULTIPLESCROLLSELECTIONFORMHORIZONTALPAINTABLE_H
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
@class MultipleScrollSelectionFormHorizontalPaintable;
@class Graphics;
@class ABCustomItem;
@class ItemIndexPaintable;
@class MultipleScrollSelectionHorizontalForm;
#include "org/allbinary/graphics/form/ItemIndexPaintable.h"
#if __has_include("org/allbinary/graphics/form/MultipleScrollSelectionHorizontalForm.h")
#include "org/allbinary/graphics/form/MultipleScrollSelectionHorizontalForm.h"
#endif

@interface MultipleScrollSelectionFormHorizontalPaintable : ItemIndexPaintable {
@public
    MultipleScrollSelectionHorizontalForm* multipleScrollSelectionForm;
}
- (instancetype) init:(MultipleScrollSelectionHorizontalForm*)multipleScrollSelectionForm;
- (void) initFields;
- (int32_t) paint:(Graphics*)graphics :(int32_t)index :(ABCustomItem*)item :(int32_t)dx :(int32_t)dy;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void MultipleScrollSelectionFormHorizontalPaintable_staticInit(void);


#endif // ORG_ALLBINARY_GRAPHICS_FORM_MULTIPLESCROLLSELECTIONFORMHORIZONTALPAINTABLE_H
