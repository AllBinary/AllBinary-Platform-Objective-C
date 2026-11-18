#ifndef ORG_ALLBINARY_ANIMATION_TEXT_TEXTANIMATION_H
#define ORG_ALLBINARY_ANIMATION_TEXT_TEXTANIMATION_H
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
// package org.allbinary.animation.text

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class TextAnimation;
@class Font;
@class Graphics;
@class AnimationBehavior;
@class IndexedAnimation;
@class Anchor;
@class MyFontProcessor;
@class UpdateMyFontInterface;
@class UpdateMyFontProcessor;
@class SWTJOGLProcessor;
@class StringMaker;
@class StringUtil;
@class BasicArrayList;
@class BasicArrayListD;
@class TextChangeListener;
#include "org/allbinary/animation/IndexedAnimation.h"
#if __has_include("org/allbinary/graphics/font/MyFontProcessor.h")
#include "org/allbinary/graphics/font/MyFontProcessor.h"
#endif
#include "org/allbinary/graphics/font/UpdateMyFontInterface.h"
// #include "org/allbinary/logic/string/StringMaker.h"
#if __has_include("org/allbinary/animation/text/TextChangeListener.h")
#include "org/allbinary/animation/text/TextChangeListener.h"
#endif

@interface TextAnimation : IndexedAnimation <UpdateMyFontInterface> {
@public
    MyFontProcessor* updateMyFontProcessor;
    MyFontProcessor* myFontProcessor;
    const char** textArrayP;
    int32_t anchor;
    int32_t fontHeight;
    int32_t offsetY;
    TextChangeListener* textChangeListener;
}
- (instancetype) init:(const char*)text :(AnimationBehavior*)animationBehavior;
- (void) initFields;
- (void) updateMeasurement:(Graphics*)graphics;
- (void) nextFrame;
- (void) paintXY:(Graphics*)graphics :(int32_t)x :(int32_t)y;
- (void) paintXYNoUpdate:(Graphics*)graphics :(int32_t)x :(int32_t)y;
- (void) setTextWithOnMeasure:(const char*)text :(TextChangeListener*)textChangeListener;
- (void) setText:(const char*)text;
- (const char**) getTextArray;
- (int32_t) getFontHeight;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void TextAnimation_staticInit(void);


#endif // ORG_ALLBINARY_ANIMATION_TEXT_TEXTANIMATION_H
