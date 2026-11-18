#ifndef ORG_ALLBINARY_GRAPHICS_FORM_ITEM_VALIDATION_NUMBERTEXTFIELDITEMVALIDATOR_H
#define ORG_ALLBINARY_GRAPHICS_FORM_ITEM_VALIDATION_NUMBERTEXTFIELDITEMVALIDATOR_H
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
// package org.allbinary.graphics.form.item.validation

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class NumberTextFieldItemValidator;
@class ABTextFieldItem;
@class ValidatorBase;
@class BooleanFactory;
@class SmallIntegerSingletonFactory;
@class StringMaker;
@class BasicArrayList;
@class BasicArrayListD;
#if __has_include("org/allbinary/graphics/form/item/ABTextFieldItem.h")
#include "org/allbinary/graphics/form/item/ABTextFieldItem.h"
#endif
#include "org/allbinary/logic/control/validate/ValidatorBase.h"
#include "java/lang/Integer.h"
#include "java/lang/Boolean.h"

@interface NumberTextFieldItemValidator : ValidatorBase {
@public
    ABTextFieldItem* textFieldItem;
    int32_t min;
    int32_t max;
    int32_t maxChars;
}
- (instancetype) init:(ABTextFieldItem*)textFieldItem :(int32_t)maxChars :(int32_t)min :(int32_t)max;
- (void) initFields;
- (bool) isNumberValid:(int32_t)value;
- (BasicArrayList*) toNumberVector:(int32_t)value;
- (bool) isValid;
- (BasicArrayList*) toList;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void NumberTextFieldItemValidator_staticInit(void);

#if __has_include("org/allbinary/util/BasicArrayList.h")
#include "org/allbinary/util/BasicArrayList.h"
#endif

#endif // ORG_ALLBINARY_GRAPHICS_FORM_ITEM_VALIDATION_NUMBERTEXTFIELDITEMVALIDATOR_H
