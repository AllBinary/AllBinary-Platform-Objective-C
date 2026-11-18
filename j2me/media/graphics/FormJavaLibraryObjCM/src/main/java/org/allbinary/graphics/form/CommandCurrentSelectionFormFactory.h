#ifndef ORG_ALLBINARY_GRAPHICS_FORM_COMMANDCURRENTSELECTIONFORMFACTORY_H
#define ORG_ALLBINARY_GRAPHICS_FORM_COMMANDCURRENTSELECTIONFORMFACTORY_H
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
@class CommandCurrentSelectionFormFactory;
@class Features;
@class TouchFeatureFactory;
@class Rectangle;
@class BasicColor;
@class ABCustomItem;
@class ScrollSelectionFormNoneFactory;
@class CommandCurrentSelectionForm;
@class ScrollSelectionForm;
@class FormType;

@interface CommandCurrentSelectionFormFactory : ABObject {
@public
}
- (instancetype) init;
+ (ScrollSelectionForm*) getInstance:(const char*)title :(ABCustomItem**)items :(Rectangle*)rectangle :(FormType*)formType :(int32_t)border :(bool)moveForSmallScreen :(BasicColor*)backgroundBasicColor :(BasicColor*)foregroundBasicColor;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void CommandCurrentSelectionFormFactory_staticInit(void);


#endif // ORG_ALLBINARY_GRAPHICS_FORM_COMMANDCURRENTSELECTIONFORMFACTORY_H
