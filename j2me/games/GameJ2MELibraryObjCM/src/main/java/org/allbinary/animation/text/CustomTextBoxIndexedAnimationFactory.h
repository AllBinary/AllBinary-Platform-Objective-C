#ifndef ORG_ALLBINARY_ANIMATION_TEXT_CUSTOMTEXTBOXINDEXEDANIMATIONFACTORY_H
#define ORG_ALLBINARY_ANIMATION_TEXT_CUSTOMTEXTBOXINDEXEDANIMATIONFACTORY_H
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
@class CustomTextBoxIndexedAnimationFactory;
@class Font;
@class TextField;
@class CustomTextBox;
@class Animation;
@class AnimationInterfaceFactoryInterface;
@class ABToGBUtil;
@class AllBinaryGameCanvas;
@class LogUtil;
@class CommonStrings;
@class StringUtil;
@class ScaleProperties;
@class CustomTextBox2;
@class CustomTextBoxIndexedAnimation;
#include "org/allbinary/animation/AnimationInterfaceFactoryInterface.h"
#if __has_include("org/allbinary/logic/communication/log/LogUtil.h")
#include "org/allbinary/logic/communication/log/LogUtil.h"
#endif
// #include "org/allbinary/string/CommonStrings.h"
#if __has_include("org/allbinary/media/ScaleProperties.h")
#include "org/allbinary/media/ScaleProperties.h"
#endif

@interface CustomTextBoxIndexedAnimationFactory : ABObject <AnimationInterfaceFactoryInterface> {
@public
    LogUtil* logUtil;
    ScaleProperties* scaleProperties;
    int32_t maxLength;
}
- (instancetype) init:(int32_t)fontSize :(int32_t)maxLength;
- (void) initFields;
- (Animation*) getInstance:(int32_t)instanceId;
- (void) setInitialScale:(ScaleProperties*)scaleProperties;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void CustomTextBoxIndexedAnimationFactory_staticInit(void);

#if __has_include("org/allbinary/animation/Animation.h")
#include "org/allbinary/animation/Animation.h"
#endif

#endif // ORG_ALLBINARY_ANIMATION_TEXT_CUSTOMTEXTBOXINDEXEDANIMATIONFACTORY_H
