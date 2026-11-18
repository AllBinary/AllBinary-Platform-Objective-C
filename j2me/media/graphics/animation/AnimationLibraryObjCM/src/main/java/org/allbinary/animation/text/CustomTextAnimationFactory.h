#ifndef ORG_ALLBINARY_ANIMATION_TEXT_CUSTOMTEXTANIMATIONFACTORY_H
#define ORG_ALLBINARY_ANIMATION_TEXT_CUSTOMTEXTANIMATIONFACTORY_H
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
@class CustomTextAnimationFactory;
@class Font;
@class Animation;
@class AnimationBehaviorFactory;
@class AnimationInterfaceFactoryInterface;
@class BasicColor;
@class BasicColorFactory;
@class LogUtil;
@class ScaleProperties;
@class CustomTextAnimation;
@class AdjustCustomTextAnimation;
#if __has_include("javax/microedition/lcdui/Font.h")
#include "javax/microedition/lcdui/Font.h"
#endif
#if __has_include("org/allbinary/animation/AnimationBehaviorFactory.h")
#include "org/allbinary/animation/AnimationBehaviorFactory.h"
#endif
#include "org/allbinary/animation/AnimationInterfaceFactoryInterface.h"
#if __has_include("org/allbinary/graphics/color/BasicColor.h")
#include "org/allbinary/graphics/color/BasicColor.h"
#endif
#if __has_include("org/allbinary/logic/communication/log/LogUtil.h")
#include "org/allbinary/logic/communication/log/LogUtil.h"
#endif
#if __has_include("org/allbinary/media/ScaleProperties.h")
#include "org/allbinary/media/ScaleProperties.h"
#endif

@interface CustomTextAnimationFactory : ABObject <AnimationInterfaceFactoryInterface> {
@public
    LogUtil* logUtil;
    AnimationBehaviorFactory* animationBehaviorFactory;
    BasicColor* basicColor;
    const char* text;
    int32_t initScaleHeight;
    int32_t dx;
    int32_t dy;
    Font* font;
    ScaleProperties* scaleProperties;
}
- (instancetype) init:(const char*)text :(int32_t)fontSize :(AnimationBehaviorFactory*)animationBehaviorFactory;
- (void) initFields;
+ (CustomTextAnimationFactory*) createDXY:(const char*)text :(int32_t)fontSize :(int32_t)dx :(int32_t)dy :(AnimationBehaviorFactory*)animationBehaviorFactory;
- (Animation*) getInstance:(int32_t)instanceId;
- (void) setInitialScale:(ScaleProperties*)scaleProperties;
- (int32_t) getWidth;
- (int32_t) getHeight;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void CustomTextAnimationFactory_staticInit(void);

#if __has_include("org/allbinary/animation/Animation.h")
#include "org/allbinary/animation/Animation.h"
#endif

#endif // ORG_ALLBINARY_ANIMATION_TEXT_CUSTOMTEXTANIMATIONFACTORY_H
