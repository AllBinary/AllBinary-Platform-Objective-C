#ifndef ORG_ALLBINARY_GRAPHICS_FORM_COMMANDCURRENTSELECTIONFORM_H
#define ORG_ALLBINARY_GRAPHICS_FORM_COMMANDCURRENTSELECTIONFORM_H
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
@class CommandCurrentSelectionForm;
@class Command;
@class Graphics;
@class J2MEUtil;
@class Animation;
@class NullAnimationFactory;
@class RectangleAdjustedAnimation;
@class RectangleFilledAdjustedAnimation;
@class BasicColor;
@class BasicColorFactory;
@class UpdateMyFontInterface;
@class CommandTextItem;
@class ABCustomItem;
@class ScrollCurrentSelectionForm;
@class ItemPaintableFactory;
#if __has_include("org/allbinary/animation/Animation.h")
#include "org/allbinary/animation/Animation.h"
#endif
#include "org/allbinary/graphics/font/UpdateMyFontInterface.h"
#include "org/allbinary/graphics/form/ScrollCurrentSelectionForm.h"

@interface CommandCurrentSelectionForm : ScrollCurrentSelectionForm <UpdateMyFontInterface> {
@public
    Animation** selectedAnimationArray;
    Animation** unSelectedAnimationArray;
}
- (instancetype) init:(const char*)title :(ABCustomItem**)items :(int32_t)border :(bool)moveForSmallScreen :(BasicColor*)backgroundBasicColor :(BasicColor*)foregroundBasicColor;
- (void) initFields;
- (void) updateMeasurement:(Graphics*)graphics;
- (void) initAnimations;
- (void) addAll:(ABCustomItem**)items;
- (void) addAt:(int32_t)index :(ABCustomItem*)item;
- (void) updateAll:(Graphics*)graphics :(ABCustomItem**)items;
- (void) updateAt:(int32_t)index :(ABCustomItem*)item;
- (Command*) getSelectedCommand;
- (int32_t) append:(ABCustomItem*)item;
- (void) delete:(int32_t)itemNum;
- (void) deleteAll;
- (void) insert:(int32_t)itemNum :(ABCustomItem*)item;
- (void) set:(int32_t)itemNum :(ABCustomItem*)item;
- (void) paint:(Graphics*)graphics;
- (int32_t) paintItem:(Graphics*)graphics :(int32_t)index :(ABCustomItem*)item :(int32_t)x :(int32_t)y;
- (int32_t) paintUnselectedItem:(Graphics*)graphics :(int32_t)index :(ABCustomItem*)item :(int32_t)x :(int32_t)y;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void CommandCurrentSelectionForm_staticInit(void);

#if __has_include("javax/microedition/lcdui/Command.h")
#include "javax/microedition/lcdui/Command.h"
#endif

#endif // ORG_ALLBINARY_GRAPHICS_FORM_COMMANDCURRENTSELECTIONFORM_H
