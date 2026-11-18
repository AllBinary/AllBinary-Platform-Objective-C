#ifndef ORG_ALLBINARY_ANIMATION_TEXT_CUSTOMTEXTBOX2_H
#define ORG_ALLBINARY_ANIMATION_TEXT_CUSTOMTEXTBOX2_H
/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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
// package org.allbinary.animation.text

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class CustomTextBox2;
@class CommandListener;
@class Font;
@class BasicColor;
@class CustomTextBox;
#include "org/allbinary/graphics/form/item/CustomTextBox.h"

@interface CustomTextBox2 : CustomTextBox {
@public
}
- (instancetype) init:(CommandListener*)cmdListener :(const char*)label :(const char*)text :(int32_t)maxSize :(int32_t)constraints :(Font*)font :(BasicColor*)backgroundBasicColor :(BasicColor*)foregroundBasicColor;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void CustomTextBox2_staticInit(void);


#endif // ORG_ALLBINARY_ANIMATION_TEXT_CUSTOMTEXTBOX2_H
