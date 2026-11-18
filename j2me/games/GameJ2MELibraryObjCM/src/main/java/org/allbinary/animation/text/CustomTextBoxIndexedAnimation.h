#ifndef ORG_ALLBINARY_ANIMATION_TEXT_CUSTOMTEXTBOXINDEXEDANIMATION_H
#define ORG_ALLBINARY_ANIMATION_TEXT_CUSTOMTEXTBOXINDEXEDANIMATION_H
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
@class CustomTextBoxIndexedAnimation;
@class Font;
@class Graphics;
@class AnimationBehavior;
@class IndexedAnimation;
@class RawKeyEventListener;
@class BasicColor;
@class UpdateMyFontInterface;
@class CustomTextBox;
@class StringUtil;
@class TextInterface;
@class TextChangeListener;
#include "org/allbinary/animation/IndexedAnimation.h"
#include "org/allbinary/game/input/event/RawKeyEventListener.h"
#include "org/allbinary/graphics/font/UpdateMyFontInterface.h"
#if __has_include("org/allbinary/graphics/form/item/CustomTextBox.h")
#include "org/allbinary/graphics/form/item/CustomTextBox.h"
#endif
#include "org/allbinary/animation/text/TextInterface.h"
#if __has_include("org/allbinary/animation/text/TextChangeListener.h")
#include "org/allbinary/animation/text/TextChangeListener.h"
#endif

@interface CustomTextBoxIndexedAnimation : IndexedAnimation <RawKeyEventListener, UpdateMyFontInterface, TextInterface> {
@public
    CustomTextBox* customTextBox;
    const char* lastText;
    bool hasChanged;
    TextChangeListener* textChangeListener;
}
- (instancetype) init:(CustomTextBox*)customTextBox;
- (void) initFields;
- (void) setBasicColorP:(BasicColor*)basicColor;
- (void) setBackgroundBasicColorP:(BasicColor*)basicColor;
- (void) setTextWithOnMeasure:(const char*)text :(TextChangeListener*)textChangeListener;
- (void) updateMeasurement:(Graphics*)graphics;
- (void) setText:(const char*)text;
- (const char*) getText;
- (void) onEventRaw:(int32_t)keyCode :(int32_t)deviceId :(bool)repeated;
- (int32_t) getFontHeight;
- (void) paintXY:(Graphics*)graphics :(int32_t)x :(int32_t)y;
- (void) paintThreedXYZ:(Graphics*)graphics :(int32_t)x :(int32_t)y :(int32_t)z;
- (int32_t) getWidth;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void CustomTextBoxIndexedAnimation_staticInit(void);


#endif // ORG_ALLBINARY_ANIMATION_TEXT_CUSTOMTEXTBOXINDEXEDANIMATION_H
