#ifndef ORG_ALLBINARY_GRAPHICS_FORM_ITEM_CUSTOMTEXTBOX_H
#define ORG_ALLBINARY_GRAPHICS_FORM_ITEM_CUSTOMTEXTBOX_H
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
@class CustomTextBox;
@class CommandListener;
@class Font;
@class Graphics;
@class J2MEUtil;
@class GameCommandCanvas;
@class Input;
@class InputFactory;
@class PlatformKeyFactory;
@class RawKeyEventListener;
@class BasicColor;
@class TextItemVisitor;
@class StringMaker;
@class StringUtil;
@class CommonSeps;
@class ABTextFieldItem;
#include "org/allbinary/game/displayable/canvas/GameCommandCanvas.h"
#if __has_include("org/allbinary/game/input/InputFactory.h")
#include "org/allbinary/game/input/InputFactory.h"
#endif
#include "org/allbinary/game/input/event/RawKeyEventListener.h"
#if __has_include("org/allbinary/graphics/form/item/ABTextFieldItem.h")
#include "org/allbinary/graphics/form/item/ABTextFieldItem.h"
#endif

@interface CustomTextBox : GameCommandCanvas <RawKeyEventListener> {
@public
    ABTextFieldItem* textFieldItem;
    InputFactory* inputFactory;
}
- (instancetype) init:(CommandListener*)cmdListener :(const char*)label :(const char*)text :(int32_t)maxSize :(int32_t)constraints :(Font*)font :(BasicColor*)backgroundBasicColor :(BasicColor*)foregroundBasicColor;
- (void) initFields;
- (void) submit;
- (void) onEventRaw:(int32_t)keyCode :(int32_t)deviceId :(bool)repeated;
- (void) keyPressed:(int32_t)keyCode;
- (void) keyReleased:(int32_t)keyCode;
- (void) keyRepeated:(int32_t)keyCode;
- (void) keyPressedByDevice:(int32_t)keyCode :(int32_t)deviceId;
- (void) keyReleasedByDevice:(int32_t)keyCode :(int32_t)deviceId;
- (void) paint:(Graphics*)graphics;
- (void) paintXY:(Graphics*)graphics :(int32_t)x :(int32_t)y;
- (ABTextFieldItem*) getTextFieldItem;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void CustomTextBox_staticInit(void);


#endif // ORG_ALLBINARY_GRAPHICS_FORM_ITEM_CUSTOMTEXTBOX_H
