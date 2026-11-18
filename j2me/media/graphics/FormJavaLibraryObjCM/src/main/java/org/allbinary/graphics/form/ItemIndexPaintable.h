#ifndef ORG_ALLBINARY_GRAPHICS_FORM_ITEMINDEXPAINTABLE_H
#define ORG_ALLBINARY_GRAPHICS_FORM_ITEMINDEXPAINTABLE_H
/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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
@class ItemIndexPaintable;
@class Graphics;
@class ABCustomItem;

@interface ItemIndexPaintable : ABObject {
@public
}
- (instancetype) init;
+ (ItemIndexPaintable*) getInstance;
- (int32_t) paint:(Graphics*)graphics :(int32_t)index :(ABCustomItem*)item :(int32_t)dx :(int32_t)dy;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void ItemIndexPaintable_staticInit(void);


#endif // ORG_ALLBINARY_GRAPHICS_FORM_ITEMINDEXPAINTABLE_H
