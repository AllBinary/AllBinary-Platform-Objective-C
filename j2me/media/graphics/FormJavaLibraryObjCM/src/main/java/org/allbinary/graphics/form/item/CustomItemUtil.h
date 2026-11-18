#ifndef ORG_ALLBINARY_GRAPHICS_FORM_ITEM_CUSTOMITEMUTIL_H
#define ORG_ALLBINARY_GRAPHICS_FORM_ITEM_CUSTOMITEMUTIL_H
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
// package org.allbinary.graphics.form.item

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class CustomItemUtil;
@class ABCustomItem;
#if __has_include("org/allbinary/graphics/form/item/ABCustomItem.h")
#include "org/allbinary/graphics/form/item/ABCustomItem.h"
#endif

@interface CustomItemUtil : ABObject {
@public
    ABCustomItem** CUSTOM_ITEM_ARRAY;
}
- (instancetype) init;
- (void) initFields;
+ (CustomItemUtil*) getInstance;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void CustomItemUtil_staticInit(void);


#endif // ORG_ALLBINARY_GRAPHICS_FORM_ITEM_CUSTOMITEMUTIL_H
