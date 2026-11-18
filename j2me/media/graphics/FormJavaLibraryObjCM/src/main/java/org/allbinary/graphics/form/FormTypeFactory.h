#ifndef ORG_ALLBINARY_GRAPHICS_FORM_FORMTYPEFACTORY_H
#define ORG_ALLBINARY_GRAPHICS_FORM_FORMTYPEFACTORY_H
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
@class FormTypeFactory;
@class DisplayInfoSingleton;
@class StringUtil;
@class FormType;
#if __has_include("org/allbinary/graphics/form/FormType.h")
#include "org/allbinary/graphics/form/FormType.h"
#endif

@interface FormTypeFactory : ABObject {
@public
    const char* UNK;
    FormType* NULL_FORM_TYPE;
    FormType* TEMP_HORIZONTAL_FORM;
    FormType* HORIZONTAL_FORM;
    FormType* VERTICAL_CENTER_FORM;
}
- (instancetype) init;
- (void) initFields;
+ (FormTypeFactory*) getInstance;
- (FormType*) getFormType;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void FormTypeFactory_staticInit(void);


#endif // ORG_ALLBINARY_GRAPHICS_FORM_FORMTYPEFACTORY_H
