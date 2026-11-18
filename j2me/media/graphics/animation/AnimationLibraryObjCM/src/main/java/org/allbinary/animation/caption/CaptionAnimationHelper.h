#ifndef ORG_ALLBINARY_ANIMATION_CAPTION_CAPTIONANIMATIONHELPER_H
#define ORG_ALLBINARY_ANIMATION_CAPTION_CAPTIONANIMATIONHELPER_H
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
// package org.allbinary.animation.caption

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class CaptionAnimationHelper;
@class Graphics;
@class Animation;
@class AnimationBehavior;
@class NullAnimationFactory;
@class TextAnimation;
@class BasicColor;
@class StringUtil;
@class GameTickTimeDelayHelperFactory;
@class TimeDelayHelper;
@class CaptionAnimationHelperBase;
@class CaptionAnimation;
#if __has_include("org/allbinary/animation/Animation.h")
#include "org/allbinary/animation/Animation.h"
#endif
#if __has_include("org/allbinary/animation/text/TextAnimation.h")
#include "org/allbinary/animation/text/TextAnimation.h"
#endif
#if __has_include("org/allbinary/time/TimeDelayHelper.h")
#include "org/allbinary/time/TimeDelayHelper.h"
#endif
#include "org/allbinary/animation/caption/CaptionAnimationHelperBase.h"

@interface CaptionAnimationHelper : CaptionAnimationHelperBase {
@public
    TimeDelayHelper* timeHelper;
    TextAnimation* textAnimation;
    Animation* captionAnimation;
    Animation* animation;
}
- (instancetype) init:(Animation*)captionAnimation :(int32_t)captionDx :(int32_t)captionDy :(int32_t)dx :(int32_t)dy;
- (void) initFields;
- (bool) isShowing;
- (void) tick;
- (void) update:(const char*)message :(BasicColor*)basicColor;
- (void) paintXY:(Graphics*)graphics :(int32_t)x :(int32_t)y;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void CaptionAnimationHelper_staticInit(void);


#endif // ORG_ALLBINARY_ANIMATION_CAPTION_CAPTIONANIMATIONHELPER_H
