#ifndef ORG_ALLBINARY_GRAPHICS_FORM_ITEM_VALIDATION_PASSWORDVALIDATOR_H
#define ORG_ALLBINARY_GRAPHICS_FORM_ITEM_VALIDATION_PASSWORDVALIDATOR_H
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
@class PasswordValidator;
@class ABTextFieldItem;
@class TextFieldItemValidator;
#include "org/allbinary/graphics/form/item/validation/TextFieldItemValidator.h"

@interface PasswordValidator : TextFieldItemValidator {
@public
}
- (instancetype) init:(ABTextFieldItem*)textFieldItem :(int32_t)min :(int32_t)max :(bool)allowOnEmpty;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void PasswordValidator_staticInit(void);


#endif // ORG_ALLBINARY_GRAPHICS_FORM_ITEM_VALIDATION_PASSWORDVALIDATOR_H
